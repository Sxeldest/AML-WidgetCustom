; =========================================================
; Game Engine Function: sub_173B2C
; Address            : 0x173B2C - 0x173CBA
; =========================================================

173B2C:  PUSH            {R4-R7,LR}
173B2E:  ADD             R7, SP, #0xC
173B30:  PUSH.W          {R8-R11}
173B34:  SUB             SP, SP, #4
173B36:  VPUSH           {D8-D11}
173B3A:  SUB             SP, SP, #0x10
173B3C:  VMOV            S16, R2
173B40:  MOV             R4, R0
173B42:  LDR             R0, [R0,#0x58]
173B44:  MOV             R11, R1
173B46:  VCMP.F32        S16, #0.0
173B4A:  VMRS            APSR_nzcv, FPSCR
173B4E:  BNE             loc_173BB8
173B50:  LDR             R1, [R4,#0x5C]
173B52:  CMP             R0, R1
173B54:  BNE             loc_173B94
173B56:  CMP             R0, #0
173B58:  ADD.W           R5, R0, #1
173B5C:  ITTE NE
173B5E:  ADDNE.W         R1, R0, R0,LSR#31
173B62:  ADDNE.W         R1, R0, R1,ASR#1
173B66:  MOVEQ           R1, #8
173B68:  CMP             R1, R5
173B6A:  IT GT
173B6C:  MOVGT           R5, R1
173B6E:  CMP             R0, R5
173B70:  BGE             loc_173B94
173B72:  LSLS            R0, R5, #3
173B74:  BL              sub_1654B0
173B78:  LDR             R1, [R4,#0x60]; src
173B7A:  MOV             R6, R0
173B7C:  CBZ             R1, loc_173B8E
173B7E:  LDR             R0, [R4,#0x58]
173B80:  LSLS            R2, R0, #3; n
173B82:  MOV             R0, R6; dest
173B84:  BLX             j_memcpy
173B88:  LDR             R0, [R4,#0x60]
173B8A:  BL              sub_165578
173B8E:  LDR             R0, [R4,#0x58]
173B90:  STRD.W          R5, R6, [R4,#0x5C]
173B94:  LDR             R1, [R4,#0x60]
173B96:  LDRD.W          R2, R3, [R11]
173B9A:  STR.W           R2, [R1,R0,LSL#3]
173B9E:  ADD.W           R0, R1, R0,LSL#3
173BA2:  STR             R3, [R0,#4]
173BA4:  LDR             R0, [R4,#0x58]
173BA6:  ADDS            R0, #1
173BA8:  STR             R0, [R4,#0x58]
173BAA:  ADD             SP, SP, #0x10
173BAC:  VPOP            {D8-D11}
173BB0:  ADD             SP, SP, #4
173BB2:  POP.W           {R8-R11}
173BB6:  POP             {R4-R7,PC}
173BB8:  LDR             R1, [R7,#arg_4]
173BBA:  MOV             R5, R3
173BBC:  LDR.W           R10, [R4,#0x5C]
173BC0:  ADD             R0, R1
173BC2:  ADDS            R6, R0, #1
173BC4:  CMP             R10, R6
173BC6:  BGE             loc_173BEA
173BC8:  LSLS            R0, R6, #3
173BCA:  BL              sub_1654B0
173BCE:  LDR             R1, [R4,#0x60]; src
173BD0:  MOV             R8, R0
173BD2:  CBZ             R1, loc_173BE4
173BD4:  LDR             R0, [R4,#0x58]
173BD6:  LSLS            R2, R0, #3; n
173BD8:  MOV             R0, R8; dest
173BDA:  BLX             j_memcpy
173BDE:  LDR             R0, [R4,#0x60]
173BE0:  BL              sub_165578
173BE4:  MOV             R10, R6
173BE6:  STRD.W          R6, R8, [R4,#0x5C]
173BEA:  LDR             R0, [R7,#arg_4]
173BEC:  CMP             R0, #0
173BEE:  BMI             loc_173BAA
173BF0:  LDR             R0, [R7,#arg_4]
173BF2:  VMOV            S18, R5
173BF6:  VLDR            S0, [R7,#arg_0]
173BFA:  MOVS            R5, #0
173BFC:  LDR             R6, [R4,#0x58]
173BFE:  MOV             R9, SP
173C00:  VSUB.F32        S20, S0, S18
173C04:  VMOV            S0, R0
173C08:  VCVT.F32.S32    S22, S0
173C0C:  VMOV            S0, R5
173C10:  ADD             R1, SP, #0x50+var_4C
173C12:  VMOV.F32        S2, S18
173C16:  MOV             R2, R9
173C18:  VCVT.F32.S32    S0, S0
173C1C:  VDIV.F32        S0, S0, S22
173C20:  VMLA.F32        S2, S0, S20
173C24:  VMOV            R0, S2
173C28:  BLX             sincosf
173C2C:  VLDR            S0, [SP,#0x50+var_4C]
173C30:  CMP             R6, R10
173C32:  VLDR            S6, [SP,#0x50+var_50]
173C36:  VLDR            S2, [R11]
173C3A:  VLDR            S4, [R11,#4]
173C3E:  VMLA.F32        S2, S6, S16
173C42:  VMLA.F32        S4, S0, S16
173C46:  VSTR            S2, [SP,#0x50+var_48]
173C4A:  VSTR            S4, [SP,#0x50+var_44]
173C4E:  BNE             loc_173C94
173C50:  CMP.W           R10, #0
173C54:  ADD.W           R8, R10, #1
173C58:  ITTE NE
173C5A:  ADDNE.W         R0, R10, R10,LSR#31
173C5E:  ADDNE.W         R0, R10, R0,ASR#1
173C62:  MOVEQ           R0, #8
173C64:  CMP             R0, R8
173C66:  IT GT
173C68:  MOVGT           R8, R0
173C6A:  CMP             R10, R8
173C6C:  MOV             R6, R10
173C6E:  BGE             loc_173C94
173C70:  MOV.W           R0, R8,LSL#3
173C74:  BL              sub_1654B0
173C78:  LDR             R1, [R4,#0x60]; src
173C7A:  MOV             R10, R0
173C7C:  CBZ             R1, loc_173C8E
173C7E:  LDR             R0, [R4,#0x58]
173C80:  LSLS            R2, R0, #3; n
173C82:  MOV             R0, R10; dest
173C84:  BLX             j_memcpy
173C88:  LDR             R0, [R4,#0x60]
173C8A:  BL              sub_165578
173C8E:  LDR             R6, [R4,#0x58]
173C90:  STRD.W          R8, R10, [R4,#0x5C]
173C94:  LDR             R0, [R4,#0x60]
173C96:  LDRD.W          R1, R2, [SP,#0x50+var_48]
173C9A:  STR.W           R1, [R0,R6,LSL#3]
173C9E:  ADD.W           R0, R0, R6,LSL#3
173CA2:  STR             R2, [R0,#4]
173CA4:  LDR             R0, [R4,#0x58]
173CA6:  ADDS            R6, R0, #1
173CA8:  LDR             R0, [R7,#arg_4]
173CAA:  STR             R6, [R4,#0x58]
173CAC:  CMP             R0, R5
173CAE:  BEQ.W           loc_173BAA
173CB2:  LDR.W           R10, [R4,#0x5C]
173CB6:  ADDS            R5, #1
173CB8:  B               loc_173C0C
