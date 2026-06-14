; =========================================================
; Game Engine Function: _Z26_rwFrameCloneAndLinkClonesP7RwFrame
; Address            : 0x1D7F48 - 0x1D7FA8
; =========================================================

1D7F48:  PUSH            {R7,LR}
1D7F4A:  MOV             R7, SP
1D7F4C:  MOVS            R1, #0
1D7F4E:  BL              sub_1D7FAC
1D7F52:  CMP             R0, #0
1D7F54:  IT EQ
1D7F56:  POPEQ           {R7,PC}
1D7F58:  LDRB            R1, [R0,#3]
1D7F5A:  LDR.W           R2, [R0,#0xA0]
1D7F5E:  AND.W           R1, R1, #0xFC
1D7F62:  STRB            R1, [R0,#3]
1D7F64:  LDRB.W          R12, [R2,#3]
1D7F68:  TST.W           R12, #3
1D7F6C:  BNE             loc_1D7F98
1D7F6E:  LDR             R3, =(RwEngineInstance_ptr - 0x1D7F74)
1D7F70:  ADD             R3, PC; RwEngineInstance_ptr
1D7F72:  LDR             R3, [R3]; RwEngineInstance
1D7F74:  LDR             R3, [R3]
1D7F76:  LDR.W           R1, [R3,#0xBC]!
1D7F7A:  STR             R1, [R2,#8]
1D7F7C:  LDR.W           R1, [R0,#0xA0]
1D7F80:  STR             R3, [R1,#0xC]
1D7F82:  LDR             R1, [R3]
1D7F84:  LDR.W           R2, [R0,#0xA0]
1D7F88:  ADDS            R2, #8
1D7F8A:  STR             R2, [R1,#4]
1D7F8C:  LDR.W           R1, [R0,#0xA0]
1D7F90:  ADDS            R1, #8
1D7F92:  STR             R1, [R3]
1D7F94:  LDR.W           R2, [R0,#0xA0]
1D7F98:  ORR.W           R1, R12, #3
1D7F9C:  STRB            R1, [R2,#3]
1D7F9E:  LDRB            R1, [R0,#3]
1D7FA0:  ORR.W           R1, R1, #0xC
1D7FA4:  STRB            R1, [R0,#3]
1D7FA6:  POP             {R7,PC}
