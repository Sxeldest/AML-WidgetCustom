; =========================================================
; Game Engine Function: sub_144A80
; Address            : 0x144A80 - 0x144AEE
; =========================================================

144A80:  PUSH            {R4-R7,LR}
144A82:  ADD             R7, SP, #0xC
144A84:  PUSH.W          {R11}
144A88:  SUB             SP, SP, #0x120
144A8A:  MOV             R4, R0
144A8C:  LDR.W           R0, [R0,#0x218]
144A90:  CMP             R0, #5
144A92:  BNE             loc_144AE6
144A94:  ADD             R0, SP, #0x130+var_128
144A96:  MOV             R5, R2
144A98:  MOV             R6, R1
144A9A:  BL              sub_17D4A8
144A9E:  MOVS            R1, #0xDC
144AA0:  STRB.W          R1, [SP,#0x130+var_14]
144AA4:  ADD             R1, SP, #0x130+var_14
144AA6:  MOVS            R2, #8
144AA8:  MOVS            R3, #1
144AAA:  BL              sub_17D628
144AAE:  STRB.W          R6, [SP,#0x130+var_14]
144AB2:  ADD             R0, SP, #0x130+var_128
144AB4:  ADD             R1, SP, #0x130+var_14
144AB6:  MOVS            R2, #8
144AB8:  MOVS            R3, #1
144ABA:  BL              sub_17D628
144ABE:  STR             R5, [SP,#0x130+var_14]
144AC0:  ADD             R0, SP, #0x130+var_128
144AC2:  ADD             R1, SP, #0x130+var_14
144AC4:  MOVS            R2, #0x20 ; ' '
144AC6:  MOVS            R3, #1
144AC8:  BL              sub_17D628
144ACC:  LDR.W           R0, [R4,#0x210]
144AD0:  LDR             R1, [R0]
144AD2:  LDR             R6, [R1,#0x20]
144AD4:  MOVS            R1, #6
144AD6:  MOVS            R2, #2
144AD8:  STR             R1, [SP,#0x130+var_130]
144ADA:  ADD             R1, SP, #0x130+var_128
144ADC:  MOVS            R3, #9
144ADE:  BLX             R6
144AE0:  ADD             R0, SP, #0x130+var_128
144AE2:  BL              sub_17D542
144AE6:  ADD             SP, SP, #0x120
144AE8:  POP.W           {R11}
144AEC:  POP             {R4-R7,PC}
