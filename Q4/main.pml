#define Z 0
#define P 1
#define Q 2
#define PQ 3
#define QP 4
#define request req[0]
#define grant user[2]

int N = 5; // A changer pour tester avec un autre nombre de processus
byte S[N];
byte in_critical_section = 0;
byte user[N];
byte req[1];
byte requests[N];

proctype Processus(byte id) {
    do
    :: true ->
        /* Non-critical section */
        atomic {
            if
            :: S[id-1] == Z -> requests[id-1] = id;
            :: S[id-1] == Q -> requests[id-1] = QP;
            :: else -> skip
            fi
        }
        (S[id-1] == id || S[id-1] == PQ);
        /* critical section */
        atomic {
            in_critical_section++;
            assert(in_critical_section == 1);
            in_critical_section--;
        }
        if
        :: S[id-1] == id -> S[id-1] = Z;
        :: S[id-1] == PQ -> S[id-1] = Q;
        :: else -> skip
        fi
    od
}

never { /* !([] (request -> (<> grant))) */
T0_init:
    do
    :: (!((grant)) && (request)) -> goto accept_S4;
    :: (1) -> goto T0_init
    od;
accept_S4:
    do
    :: (! ((grant))) -> goto accept_S4
    od;
}

init {
    int i;
    for (i : 1..N) {
        S[i-1] = Z;
        requests[i-1] = Z;
        run Processus(i);
    }
}
