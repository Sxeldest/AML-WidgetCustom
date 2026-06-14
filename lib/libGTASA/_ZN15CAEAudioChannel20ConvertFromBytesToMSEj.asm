; =========================================================
; Game Engine Function: _ZN15CAEAudioChannel20ConvertFromBytesToMSEj
; Address            : 0x391B38 - 0x391B4C
; =========================================================

391B38:  PUSH            {R7,LR}
391B3A:  MOV             R7, SP
391B3C:  LDR             R2, [R0,#0x24]
391B3E:  MOV             R0, R1; this
391B40:  MOV             R1, R2; unsigned int
391B42:  MOVS            R2, #1; unsigned int
391B44:  BLX             j__ZN15CAEAudioUtility20ConvertFromBytesToMSEjjt; CAEAudioUtility::ConvertFromBytesToMS(uint,uint,ushort)
391B48:  SXTH            R0, R0
391B4A:  POP             {R7,PC}
