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
	case 3: // STATE 1 - main.pml:62 - [(run ProcessusP())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - main.pml:63 - [(run ProcessusQ())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - main.pml:64 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ProcessusQ */
	case 6: // STATE 2 - main.pml:41 - [((S==0))] (11:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.S)==0)))
			continue;
		/* merge: S = 2(11, 3, 11) */
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 2;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(11, 9, 11) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 9 - main.pml:45 - [.(goto)] (0:11:0 - 3)
		IfNotBlocked
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - main.pml:42 - [((S==1))] (11:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((int)now.S)==1)))
			continue;
		/* merge: S = 3(11, 5, 11) */
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 3;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(11, 9, 11) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 9: // STATE 7 - main.pml:43 - [(1)] (11:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(11, 9, 11) */
		reached[1][9] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 10: // STATE 11 - main.pml:46 - [(((S==2)||(S==4)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((((int)now.S)==2)||(((int)now.S)==4))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 12 - main.pml:49 - [in_critical_section = (in_critical_section+1)] (0:22:2 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.in_critical_section);
		now.in_critical_section = (((int)now.in_critical_section)+1);
#ifdef VAR_RANGES
		logval("in_critical_section", ((int)now.in_critical_section));
#endif
		;
		/* merge: assert((in_critical_section==1))(22, 13, 22) */
		reached[1][13] = 1;
		spin_assert((((int)now.in_critical_section)==1), "(in_critical_section==1)", II, tt, t);
		/* merge: in_critical_section = (in_critical_section-1)(22, 14, 22) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.in_critical_section);
		now.in_critical_section = (((int)now.in_critical_section)-1);
#ifdef VAR_RANGES
		logval("in_critical_section", ((int)now.in_critical_section));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 16 - main.pml:54 - [((S==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((int)now.S)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 17 - main.pml:54 - [S = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 0;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 18 - main.pml:55 - [((S==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((((int)now.S)==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 19 - main.pml:55 - [S = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 1;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 27 - main.pml:59 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ProcessusP */
	case 17: // STATE 2 - main.pml:15 - [((S==0))] (11:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.S)==0)))
			continue;
		/* merge: S = 1(11, 3, 11) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 1;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(11, 9, 11) */
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: // STATE 9 - main.pml:19 - [.(goto)] (0:11:0 - 3)
		IfNotBlocked
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 4 - main.pml:16 - [((S==2))] (11:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)now.S)==2)))
			continue;
		/* merge: S = 4(11, 5, 11) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 4;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		/* merge: .(goto)(11, 9, 11) */
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 7 - main.pml:17 - [(1)] (11:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(11, 9, 11) */
		reached[0][9] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 21: // STATE 11 - main.pml:20 - [(((S==1)||(S==3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!(((((int)now.S)==1)||(((int)now.S)==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 12 - main.pml:23 - [in_critical_section = (in_critical_section+1)] (0:22:2 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.in_critical_section);
		now.in_critical_section = (((int)now.in_critical_section)+1);
#ifdef VAR_RANGES
		logval("in_critical_section", ((int)now.in_critical_section));
#endif
		;
		/* merge: assert((in_critical_section==1))(22, 13, 22) */
		reached[0][13] = 1;
		spin_assert((((int)now.in_critical_section)==1), "(in_critical_section==1)", II, tt, t);
		/* merge: in_critical_section = (in_critical_section-1)(22, 14, 22) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.in_critical_section);
		now.in_critical_section = (((int)now.in_critical_section)-1);
#ifdef VAR_RANGES
		logval("in_critical_section", ((int)now.in_critical_section));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 23: // STATE 16 - main.pml:28 - [((S==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((((int)now.S)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 17 - main.pml:28 - [S = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 0;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 18 - main.pml:29 - [((S==3))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((((int)now.S)==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 19 - main.pml:29 - [S = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((int)now.S);
		now.S = 2;
#ifdef VAR_RANGES
		logval("S", ((int)now.S));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 27 - main.pml:33 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
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

