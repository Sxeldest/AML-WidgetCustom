; =========================================================
; Game Engine Function: sub_E1A8C
; Address            : 0xE1A8C - 0xE1AEE
; =========================================================

E1A8C:  PUSH            {R4-R7,LR}
E1A8E:  ADD             R7, SP, #0xC
E1A90:  PUSH.W          {R8}
E1A94:  MOV             R2, R1
E1A96:  MOV             R4, R0
E1A98:  LDR             R0, =(unk_91CE0 - 0xE1AA6)
E1A9A:  ADD.W           R8, R2, #0xB
E1A9E:  LDRH.W          R1, [R1,#9]
E1AA2:  ADD             R0, PC; unk_91CE0
E1AA4:  LDR             R5, [R2]
E1AA6:  AND.W           R1, R1, #0xF
E1AAA:  LDR             R6, [R7,#arg_0]
E1AAC:  SUBS            R3, R5, R3
E1AAE:  LDRB            R0, [R0,R1]
E1AB0:  IT CC
E1AB2:  MOVCC           R3, #0
E1AB4:  LSRS.W          R1, R3, R0
E1AB8:  SUB.W           R5, R3, R1
E1ABC:  BEQ             loc_E1AC8
E1ABE:  MOV             R0, R4
E1AC0:  MOV             R2, R8
E1AC2:  BL              sub_DD992
E1AC6:  MOV             R4, R0
E1AC8:  LDRD.W          R1, R0, [R6]
E1ACC:  ADDS            R2, R1, R0
E1ACE:  MOV             R0, R4
E1AD0:  BL              sub_DCF30
E1AD4:  MOV             R0, R4
E1AD6:  CBZ             R5, loc_E1AE8
E1AD8:  MOV             R1, R5
E1ADA:  MOV             R2, R8
E1ADC:  POP.W           {R8}
E1AE0:  POP.W           {R4-R7,LR}
E1AE4:  B.W             sub_DD992
E1AE8:  POP.W           {R8}
E1AEC:  POP             {R4-R7,PC}
