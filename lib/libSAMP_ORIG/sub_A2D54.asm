; =========================================================
; Game Engine Function: sub_A2D54
; Address            : 0xA2D54 - 0xA2DDC
; =========================================================

A2D54:  PUSH            {R4-R7,LR}
A2D56:  ADD             R7, SP, #0xC
A2D58:  PUSH.W          {R8,R9,R11}
A2D5C:  VPUSH           {D8-D9}
A2D60:  MOV             R8, R0
A2D62:  LDRB.W          R0, [R2,#0x3C]
A2D66:  MOV             R4, R1
A2D68:  CBNZ            R0, loc_A2DC8
A2D6A:  LDR             R0, [R4,#0x28]
A2D6C:  MOVS            R6, #0
A2D6E:  MOV             R9, R3
A2D70:  MOV             R5, R2
A2D72:  STRD.W          R6, R6, [R4,#0xC]
A2D76:  CBZ             R0, loc_A2D82
A2D78:  STRD.W          R6, R6, [R4,#0x20]
A2D7C:  BL              sub_88614
A2D80:  STR             R6, [R4,#0x28]
A2D82:  LDR             R0, [R4,#8]
A2D84:  CBZ             R0, loc_A2D92
A2D86:  MOVS            R6, #0
A2D88:  STRD.W          R6, R6, [R4]
A2D8C:  BL              sub_88614
A2D90:  STR             R6, [R4,#8]
A2D92:  LDR             R0, [R4,#0x1C]
A2D94:  VMOV            S18, R9
A2D98:  VLDR            S16, [R7,#arg_0]
A2D9C:  CBZ             R0, loc_A2DAA
A2D9E:  MOVS            R6, #0
A2DA0:  STRD.W          R6, R6, [R4,#0x14]
A2DA4:  BL              sub_88614
A2DA8:  STR             R6, [R4,#0x1C]
A2DAA:  MOVS            R0, #1
A2DAC:  STR             R5, [R4,#0x3C]
A2DAE:  STRB.W          R0, [R4,#0x54]
A2DB2:  MOVS            R0, #0
A2DB4:  STR             R0, [R4,#0x2C]
A2DB6:  STR             R0, [R4,#0x50]
A2DB8:  VSTR            S18, [R4,#0x48]
A2DBC:  VSTR            S16, [R4,#0x4C]
A2DC0:  LDR             R0, [R5,#0x10]
A2DC2:  STR.W           R8, [R4,#0x38]
A2DC6:  STR             R0, [R4,#0x10]
A2DC8:  LDRH.W          R0, [R4,#0x40]
A2DCC:  ADDS            R0, #1
A2DCE:  STRH.W          R0, [R4,#0x40]
A2DD2:  VPOP            {D8-D9}
A2DD6:  POP.W           {R8,R9,R11}
A2DDA:  POP             {R4-R7,PC}
