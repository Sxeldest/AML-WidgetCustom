; =========================================================
; Game Engine Function: _ZN15CAEAudioChannel20ConvertFromMsToBytesEj
; Address            : 0x391B4C - 0x391B58
; =========================================================

391B4C:  LDR             R2, [R0,#0x24]
391B4E:  MOV             R0, R1; this
391B50:  MOV             R1, R2; unsigned int
391B52:  MOVS            R2, #1; unsigned int
391B54:  B.W             sub_1956DC
