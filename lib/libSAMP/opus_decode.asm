; =========================================================
; Game Engine Function: opus_decode
; Address            : 0x18FEFA - 0x18FF2A
; =========================================================

18FEFA:  PUSH            {R4,R6,R7,LR}
18FEFC:  ADD             R7, SP, #8
18FEFE:  SUB             SP, SP, #0x18
18FF00:  LDR.W           R12, [R7,#arg_0]
18FF04:  CMP.W           R12, #1
18FF08:  BLT             loc_18FF22
18FF0A:  LDR.W           LR, [R7,#arg_4]
18FF0E:  MOVS            R4, #0
18FF10:  STRD.W          R12, LR, [SP,#0x20+var_20]
18FF14:  STRD.W          R4, R4, [SP,#0x20+var_18]
18FF18:  STR             R4, [SP,#0x20+var_10]
18FF1A:  BLX             j_opus_decode_native
18FF1E:  ADD             SP, SP, #0x18
18FF20:  POP             {R4,R6,R7,PC}
18FF22:  MOV.W           R0, #0xFFFFFFFF
18FF26:  ADD             SP, SP, #0x18
18FF28:  POP             {R4,R6,R7,PC}
