; =========================================================
; Game Engine Function: sub_1A42F8
; Address            : 0x1A42F8 - 0x1A4306
; =========================================================

1A42F8:  LDR             R0, =(nullsub_32+1 - 0x1A4302)
1A42FA:  MOVS            R1, #0; obj
1A42FC:  LDR             R2, =(unk_67A000 - 0x1A4304)
1A42FE:  ADD             R0, PC; nullsub_32 ; lpfunc
1A4300:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A4302:  B.W             j___cxa_atexit
