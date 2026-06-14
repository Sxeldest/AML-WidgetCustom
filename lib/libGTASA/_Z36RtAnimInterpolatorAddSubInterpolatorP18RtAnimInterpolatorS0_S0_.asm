; =========================================================
; Game Engine Function: _Z36RtAnimInterpolatorAddSubInterpolatorP18RtAnimInterpolatorS0_S0_
; Address            : 0x1EBB8E - 0x1EBC0A
; =========================================================

1EBB8E:  PUSH            {R4-R7,LR}
1EBB90:  ADD             R7, SP, #0xC
1EBB92:  PUSH.W          {R8-R11}
1EBB96:  SUB             SP, SP, #0xC
1EBB98:  MOV             R4, R0
1EBB9A:  MOV             R9, R2
1EBB9C:  LDR             R0, [R4,#0x30]
1EBB9E:  MOV             R11, R1
1EBBA0:  CMP             R0, #0
1EBBA2:  ITE EQ
1EBBA4:  LDREQ.W         R10, [R9,#0x34]
1EBBA8:  MOVNE.W         R10, #0
1EBBAC:  LDR             R0, [R4,#0x2C]
1EBBAE:  CMP             R0, #1
1EBBB0:  BLT             loc_1EBC00
1EBBB2:  ADD.W           R0, R9, #0x4C ; 'L'
1EBBB6:  STR             R0, [SP,#0x28+var_20]
1EBBB8:  ADD.W           R0, R11, #0x4C ; 'L'
1EBBBC:  MOV.W           R8, #0
1EBBC0:  STR             R0, [SP,#0x28+var_24]
1EBBC2:  ADD.W           R0, R4, #0x4C ; 'L'
1EBBC6:  STR             R0, [SP,#0x28+var_28]
1EBBC8:  LDR.W           R0, [R9,#0x24]
1EBBCC:  ADD.W           R3, R10, R8
1EBBD0:  LDR             R1, [SP,#0x28+var_20]
1EBBD2:  LDR.W           R6, [R9,#0x34]
1EBBD6:  MLA.W           R2, R0, R8, R1
1EBBDA:  LDR             R0, [R4,#0x24]
1EBBDC:  LDR             R1, [SP,#0x28+var_28]
1EBBDE:  LDR.W           R5, [R11,#0x24]
1EBBE2:  MLA.W           R0, R0, R3, R1
1EBBE6:  ADD.W           R1, R8, R6
1EBBEA:  LDR             R3, [SP,#0x28+var_24]
1EBBEC:  MLA.W           R1, R1, R5, R3
1EBBF0:  LDR.W           R12, [R4,#0x48]
1EBBF4:  BLX             R12
1EBBF6:  LDR             R0, [R4,#0x2C]
1EBBF8:  ADD.W           R8, R8, #1
1EBBFC:  CMP             R8, R0
1EBBFE:  BLT             loc_1EBBC8
1EBC00:  MOVS            R0, #1
1EBC02:  ADD             SP, SP, #0xC
1EBC04:  POP.W           {R8-R11}
1EBC08:  POP             {R4-R7,PC}
