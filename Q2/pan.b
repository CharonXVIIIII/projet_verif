	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ProcessusQ */

	case 6: // STATE 3
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 7: // STATE 9
		goto R999;

	case 8: // STATE 5
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 9: // STATE 7
		goto R999;
;
		;
		
	case 11: // STATE 14
		;
		now.in_critical_section = trpt->bup.ovals[1];
		now.in_critical_section = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 13: // STATE 17
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 19
		;
		now.S = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ProcessusP */

	case 17: // STATE 3
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 18: // STATE 9
		goto R999;

	case 19: // STATE 5
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 20: // STATE 7
		goto R999;
;
		;
		
	case 22: // STATE 14
		;
		now.in_critical_section = trpt->bup.ovals[1];
		now.in_critical_section = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 24: // STATE 17
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 19
		;
		now.S = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 27
		;
		p_restor(II);
		;
		;
		goto R999;
	}

