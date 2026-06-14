; =========================================================
; Game Engine Function: sub_E1EC8
; Address            : 0xE1EC8 - 0xE1F22
; =========================================================

E1EC8:  PUSH            {R4-R7,LR}
E1ECA:  ADD             R7, SP, #0xC
E1ECC:  PUSH.W          {R11}
E1ED0:  MOV             R2, R0
E1ED2:  LDR             R0, =(unk_91CE0 - 0xE1EDE)
E1ED4:  MOV             R5, R1
E1ED6:  LDRH.W          R1, [R1,#9]
E1EDA:  ADD             R0, PC; unk_91CE0
E1EDC:  LDR.W           R4, [R5],#0xB
E1EE0:  AND.W           R1, R1, #0xF
E1EE4:  LDR             R6, [R7,#arg_0]
E1EE6:  SUBS            R3, R4, R3
E1EE8:  LDRB            R0, [R0,R1]
E1EEA:  IT CC
E1EEC:  MOVCC           R3, #0
E1EEE:  LSRS.W          R1, R3, R0
E1EF2:  SUB.W           R4, R3, R1
E1EF6:  BEQ             loc_E1F02
E1EF8:  MOV             R0, R2
E1EFA:  MOV             R2, R5
E1EFC:  BL              sub_DD992
E1F00:  MOV             R2, R0
E1F02:  MOV             R0, R6
E1F04:  MOV             R1, R2
E1F06:  BL              sub_E1F28
E1F0A:  CBZ             R4, loc_E1F1C
E1F0C:  MOV             R1, R4
E1F0E:  MOV             R2, R5
E1F10:  POP.W           {R11}
E1F14:  POP.W           {R4-R7,LR}
E1F18:  B.W             sub_DD992
E1F1C:  POP.W           {R11}
E1F20:  POP             {R4-R7,PC}
