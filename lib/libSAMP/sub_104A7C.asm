; =========================================================
; Game Engine Function: sub_104A7C
; Address            : 0x104A7C - 0x104ABA
; =========================================================

104A7C:  PUSH            {R4-R7,LR}
104A7E:  ADD             R7, SP, #0xC
104A80:  PUSH.W          {R8}
104A84:  SUB             SP, SP, #0x10
104A86:  MOV             R4, R0
104A88:  LDR             R0, [R0,#0x5C]
104A8A:  CBZ             R0, loc_104AB2
104A8C:  LDR             R0, [R4,#8]
104A8E:  MOV             R6, R3
104A90:  MOV             R8, R2
104A92:  MOV             R5, R1
104A94:  BL              sub_1082F4
104A98:  CBZ             R0, loc_104AB2
104A9A:  LDR             R1, [R4,#8]
104A9C:  LDR             R0, =(unk_B3672 - 0x104AA6)
104A9E:  LDRD.W          R3, R2, [R7,#arg_0]
104AA2:  ADD             R0, PC; unk_B3672
104AA4:  STR             R2, [SP,#0x20+var_18]
104AA6:  MOV             R2, R5
104AA8:  STRD.W          R6, R3, [SP,#0x20+var_20]
104AAC:  MOV             R3, R8
104AAE:  BL              sub_107188
104AB2:  ADD             SP, SP, #0x10
104AB4:  POP.W           {R8}
104AB8:  POP             {R4-R7,PC}
