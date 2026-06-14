; =========================================================
; Game Engine Function: sub_1A9D5C
; Address            : 0x1A9D5C - 0x1A9D6A
; =========================================================

1A9D5C:  LDR             R0, =(nullsub_42+1 - 0x1A9D66)
1A9D5E:  MOVS            R1, #0; obj
1A9D60:  LDR             R2, =(unk_67A000 - 0x1A9D68)
1A9D62:  ADD             R0, PC; nullsub_42 ; lpfunc
1A9D64:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A9D66:  B.W             j___cxa_atexit
