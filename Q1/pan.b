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
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 12: // STATE 20
		goto R999;

	case 13: // STATE 16
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 14: // STATE 18
		goto R999;

	case 15: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ProcessusP */

	case 16: // STATE 3
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 17: // STATE 9
		goto R999;

	case 18: // STATE 5
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 19: // STATE 7
		goto R999;
;
		;
		
	case 21: // STATE 14
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 22: // STATE 20
		goto R999;

	case 23: // STATE 16
		;
		now.S = trpt->bup.oval;
		;
		goto R999;
;
		
	case 24: // STATE 18
		goto R999;

	case 25: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;
	}

