#define Z 0
#define P 1
#define Q 2
#define PQ 3
#define QP 4

byte S = Z;
byte in_critical_section = 0;
proctype ProcessusP() {
  do
  :: true ->
  /* Non-critical section */
    atomic {
      if
      :: S==Z -> S=P;
      :: S==Q -> S=QP;
      :: else -> skip
      fi
    }
    (S==P || S==PQ);
    /* critical section */
    atomic {
      in_critical_section++;
      assert(in_critical_section==1);
      in_critical_section--;
    }
    if
      :: S==P -> S=Z;
      :: S==PQ -> S=Q;
      :: else -> skip
    fi
  od
}

proctype ProcessusQ() {
  do
  :: true ->
  /* Non-critical section */
    atomic {
      if
      :: S==Z -> S=Q;
      :: S==P -> S=PQ;
      :: else -> skip
      fi
    }
    (S==Q || S==QP);
    /* critical section */
    atomic {
      in_critical_section++;
      assert(in_critical_section==1);
      in_critical_section--;
    }
    if
      :: S==Q -> S=Z;
      :: S==QP -> S=P;
      :: else -> skip
    fi
  od
}

init {
  run ProcessusP();
  run ProcessusQ();
}
