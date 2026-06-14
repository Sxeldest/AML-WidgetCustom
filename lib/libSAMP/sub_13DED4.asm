; =========================================================
; Game Engine Function: sub_13DED4
; Address            : 0x13DED4 - 0x13DEFE
; =========================================================

13DED4:  PUSH            {R4,R5,R7,LR}
13DED6:  ADD             R7, SP, #8
13DED8:  MOV             R4, R0
13DEDA:  MOVS            R0, #0
13DEDC:  STRD.W          R0, R0, [R4,#0x20]
13DEE0:  ADDS            R0, R4, #4
13DEE2:  STRB            R2, [R4,#0x1D]
13DEE4:  MOVS            R2, #0x19
13DEE6:  BLX             __strcpy_chk
13DEEA:  MOV.W           R0, #0x140; unsigned int
13DEEE:  BLX             j__Znwj; operator new(uint)
13DEF2:  MOV             R5, R0
13DEF4:  BL              sub_149210
13DEF8:  MOV             R0, R4
13DEFA:  STR             R5, [R4]
13DEFC:  POP             {R4,R5,R7,PC}
