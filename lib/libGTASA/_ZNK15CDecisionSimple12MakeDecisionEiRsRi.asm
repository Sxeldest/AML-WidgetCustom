; =========================================================
; Game Engine Function: _ZNK15CDecisionSimple12MakeDecisionEiRsRi
; Address            : 0x4BDC7C - 0x4BDD0C
; =========================================================

4BDC7C:  PUSH            {R4-R7,LR}
4BDC7E:  ADD             R7, SP, #0xC
4BDC80:  PUSH.W          {R11}
4BDC84:  MOV             R6, R0
4BDC86:  MOV             R5, R2
4BDC88:  MOVS            R0, #0xC8
4BDC8A:  MOV             R4, R3
4BDC8C:  STRH            R0, [R5]
4BDC8E:  MOV.W           R0, #0xFFFFFFFF
4BDC92:  STR             R0, [R4]
4BDC94:  ADDS            R0, R1, #1
4BDC96:  BEQ             loc_4BDCB4
4BDC98:  LDR             R0, [R6,#0x30]
4BDC9A:  CMP             R0, #1
4BDC9C:  BLT             loc_4BDCB4
4BDC9E:  MOVS            R2, #0
4BDCA0:  LDR.W           R3, [R6,R2,LSL#2]
4BDCA4:  CMP             R3, R1
4BDCA6:  BEQ             loc_4BDCB0
4BDCA8:  ADDS            R2, #1
4BDCAA:  CMP             R2, R0
4BDCAC:  BLT             loc_4BDCA0
4BDCAE:  B               loc_4BDCB4
4BDCB0:  STRH            R1, [R5]
4BDCB2:  STR             R2, [R4]
4BDCB4:  LDRH            R0, [R5]
4BDCB6:  CMP             R0, #0xC8
4BDCB8:  BNE             loc_4BDCF8
4BDCBA:  BLX             rand
4BDCBE:  VMOV            S0, R0
4BDCC2:  VCVT.F32.S32    S0, S0
4BDCC6:  LDR             R0, [R6,#0x30]
4BDCC8:  CMP             R0, #1
4BDCCA:  BLT             loc_4BDCF8
4BDCCC:  VLDR            S2, =4.6566e-10
4BDCD0:  ADD.W           R2, R6, #0x18
4BDCD4:  MOVS            R1, #0
4BDCD6:  VMUL.F32        S0, S0, S2
4BDCDA:  VLDR            S2, =0.0
4BDCDE:  VADD.F32        S0, S0, S2
4BDCE2:  VLDR            S2, [R2]
4BDCE6:  VCMPE.F32       S0, S2
4BDCEA:  VMRS            APSR_nzcv, FPSCR
4BDCEE:  BLE             loc_4BDCFE
4BDCF0:  ADDS            R1, #1
4BDCF2:  ADDS            R2, #4
4BDCF4:  CMP             R1, R0
4BDCF6:  BLT             loc_4BDCE2
4BDCF8:  POP.W           {R11}
4BDCFC:  POP             {R4-R7,PC}
4BDCFE:  LDR.W           R0, [R2,#-0x18]
4BDD02:  STRH            R0, [R5]
4BDD04:  STR             R1, [R4]
4BDD06:  POP.W           {R11}
4BDD0A:  POP             {R4-R7,PC}
