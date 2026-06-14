; =========================================================
; Game Engine Function: _Z23RtAnimInterpolatorBlendP18RtAnimInterpolatorS0_S0_f
; Address            : 0x1EB8D4 - 0x1EB930
; =========================================================

1EB8D4:  PUSH            {R4-R7,LR}
1EB8D6:  ADD             R7, SP, #0xC
1EB8D8:  PUSH.W          {R8-R11}
1EB8DC:  SUB             SP, SP, #0xC
1EB8DE:  STRD.W          R1, R2, [SP,#0x28+var_24]
1EB8E2:  MOV             R4, R0
1EB8E4:  LDR             R0, [R4,#0x2C]
1EB8E6:  MOV             R10, R3
1EB8E8:  CMP             R0, #1
1EB8EA:  BLT             loc_1EB926
1EB8EC:  LDR             R0, [SP,#0x28+var_20]
1EB8EE:  ADD.W           R5, R4, #0x4C ; 'L'
1EB8F2:  MOV.W           R8, #0
1EB8F6:  ADD.W           R11, R0, #0x4C ; 'L'
1EB8FA:  LDR             R0, [SP,#0x28+var_24]
1EB8FC:  ADD.W           R9, R0, #0x4C ; 'L'
1EB900:  LDR             R1, [SP,#0x28+var_24]
1EB902:  MOV             R3, R10
1EB904:  LDR             R2, [SP,#0x28+var_20]
1EB906:  LDR             R0, [R4,#0x24]
1EB908:  LDR             R1, [R1,#0x24]
1EB90A:  LDR             R2, [R2,#0x24]
1EB90C:  MLA.W           R0, R0, R8, R5
1EB910:  LDR             R6, [R4,#0x40]
1EB912:  MLA.W           R1, R1, R8, R9
1EB916:  MLA.W           R2, R2, R8, R11
1EB91A:  BLX             R6
1EB91C:  LDR             R0, [R4,#0x2C]
1EB91E:  ADD.W           R8, R8, #1
1EB922:  CMP             R8, R0
1EB924:  BLT             loc_1EB900
1EB926:  MOVS            R0, #1
1EB928:  ADD             SP, SP, #0xC
1EB92A:  POP.W           {R8-R11}
1EB92E:  POP             {R4-R7,PC}
