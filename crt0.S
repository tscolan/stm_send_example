.title "crt0.S"
.global main

.section  .text

/* start. */
_start:
	/* save sp */
	move.l  %sp, %a0

	/* calculate new sp */
	lea (%pc, sp_ptr), %a1

	/* set new sp */
	move.l  %a1, %sp

	/* push old sp */
	move.l  %a0, %sp@-

	/* push old fp */
	move.l  %a6, %sp@-

	/* push main params */
	move.l  #0, %sp@-
	move.l  #0, %sp@-
	move.l  #0, %sp@-
	bsrl main

	/* pop main params */
	lea (%sp, 12), %sp  /* 4 argc + 4 argv + 4 retval */

/* Return to STM */
_exit:
	/* pop old fp */
	move.l  (%sp)+,%a6

	/* pop old sp */
	move.l  (%sp)+,%a0

	/* restaure old sp */
	move.l  %a0,%sp

	/* jump to STM */
	jmp (%a6)

