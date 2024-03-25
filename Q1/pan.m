#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - main.pml:56 - [(run ProcessusP())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - main.pml:57 - [(run ProcessusQ())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - main.pml:58 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ProcessusQ */
	case 6: // STATE 2 - main.pml:38 - [((S==0))] (12:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.S)==0)))
			continue;
		/* merge: S = 2(12, 3, 12) */
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 2;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(12, 9, 12) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 9 - main.pml:42 - [.(goto)] (0:12:0 - 3)
		IfNotBlocked
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - main.pml:39 - [((S==1))] (12:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((int)now.S)==1)))
			continue;
		/* merge: S = 3(12, 5, 12) */
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 3;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(12, 9, 12) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 7 - main.pml:40 - [(1)] (12:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(12, 9, 12) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 11 - main.pml:43 - [(((S==2)||(S==4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((((int)now.S)==2)||(((int)now.S)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 13 - main.pml:47 - [((S==2))] (22:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((int)now.S)==2)))
			continue;
		/* merge: S = 0(22, 14, 22) */
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 0;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(22, 20, 22) */
		reached[1][20] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[1][23] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 12: // STATE 20 - main.pml:51 - [.(goto)] (0:22:0 - 3)
		IfNotBlocked
		reached[1][20] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[1][23] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 13: // STATE 15 - main.pml:48 - [((S==4))] (22:0:1 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!((((int)now.S)==4)))
			continue;
		/* merge: S = 1(22, 16, 22) */
		reached[1][16] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 1;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(22, 20, 22) */
		reached[1][20] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[1][23] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 14: // STATE 18 - main.pml:49 - [(1)] (22:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(22, 20, 22) */
		reached[1][20] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[1][23] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 25 - main.pml:53 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ProcessusP */
	case 16: // STATE 2 - main.pml:15 - [((S==0))] (12:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.S)==0)))
			continue;
		/* merge: S = 1(12, 3, 12) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 1;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(12, 9, 12) */
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 9 - main.pml:19 - [.(goto)] (0:12:0 - 3)
		IfNotBlocked
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 4 - main.pml:16 - [((S==2))] (12:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)now.S)==2)))
			continue;
		/* merge: S = 4(12, 5, 12) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 4;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(12, 9, 12) */
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 7 - main.pml:17 - [(1)] (12:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(12, 9, 12) */
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 20: // STATE 11 - main.pml:20 - [(((S==1)||(S==3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!(((((int)now.S)==1)||(((int)now.S)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 13 - main.pml:24 - [((S==1))] (22:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!((((int)now.S)==1)))
			continue;
		/* merge: S = 0(22, 14, 22) */
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 0;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(22, 20, 22) */
		reached[0][20] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: // STATE 20 - main.pml:28 - [.(goto)] (0:22:0 - 3)
		IfNotBlocked
		reached[0][20] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 23: // STATE 15 - main.pml:25 - [((S==3))] (22:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!((((int)now.S)==3)))
			continue;
		/* merge: S = 2(22, 16, 22) */
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 2;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(22, 20, 22) */
		reached[0][20] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 24: // STATE 18 - main.pml:26 - [(1)] (22:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(22, 20, 22) */
		reached[0][20] = 1;
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 25 - main.pml:30 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

