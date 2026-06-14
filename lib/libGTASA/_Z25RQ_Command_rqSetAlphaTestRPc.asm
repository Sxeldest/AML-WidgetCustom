; =========================================================
; Game Engine Function: _Z25RQ_Command_rqSetAlphaTestRPc
; Address            : 0x1CFCC4 - 0x1CFD68
; =========================================================

1CFCC4:  PUSH            {R4-R7,LR}
1CFCC6:  ADD             R7, SP, #0xC
1CFCC8:  PUSH.W          {R11}
1CFCCC:  VPUSH           {D8}
1CFCD0:  LDR             R1, [R0]
1CFCD2:  LDR             R2, =(off_6BCBF8 - 0x1CFCDC)
1CFCD4:  ADDS            R5, R1, #4
1CFCD6:  MOV             R3, R1
1CFCD8:  ADD             R2, PC; off_6BCBF8
1CFCDA:  LDR.W           R6, [R3],#8
1CFCDE:  STR             R5, [R0]
1CFCE0:  LDR             R4, [R1,#4]
1CFCE2:  STR             R3, [R0]
1CFCE4:  LDR             R0, [R2]
1CFCE6:  CBNZ            R0, loc_1CFCF4
1CFCE8:  ADR             R0, aGlalphafuncqco; "glAlphaFuncQCOM"
1CFCEA:  BLX             eglGetProcAddress
1CFCEE:  LDR             R1, =(off_6BCBF8 - 0x1CFCF4)
1CFCF0:  ADD             R1, PC; off_6BCBF8
1CFCF2:  STR             R0, [R1]
1CFCF4:  LDR             R0, =(dword_67A26C - 0x1CFD04)
1CFCF6:  MOVW            R5, #0x207
1CFCFA:  CMP             R6, #8
1CFCFC:  VMOV            S16, R4
1CFD00:  ADD             R0, PC; dword_67A26C
1CFD02:  LDR             R0, [R0]
1CFD04:  IT CC
1CFD06:  ADDCC.W         R5, R6, #0x200
1CFD0A:  CMP             R5, R0
1CFD0C:  BNE             loc_1CFD28
1CFD0E:  CMP.W           R5, #0x200
1CFD12:  BEQ             loc_1CFD5E
1CFD14:  LDR             R0, =(unk_67A270 - 0x1CFD1A)
1CFD16:  ADD             R0, PC; unk_67A270
1CFD18:  VLDR            S0, [R0]
1CFD1C:  VCMP.F32        S0, S16
1CFD20:  VMRS            APSR_nzcv, FPSCR
1CFD24:  BNE             loc_1CFD3C
1CFD26:  B               loc_1CFD5E
1CFD28:  CMP.W           R5, #0x200
1CFD2C:  BNE             loc_1CFD3C
1CFD2E:  MOV.W           R0, #0xBC0; cap
1CFD32:  BLX             glDisable
1CFD36:  VMOV.F32        S16, #-1.0
1CFD3A:  B               loc_1CFD50
1CFD3C:  MOV.W           R0, #0xBC0; cap
1CFD40:  BLX             glEnable
1CFD44:  LDR             R0, =(off_6BCBF8 - 0x1CFD4C)
1CFD46:  MOV             R1, R4
1CFD48:  ADD             R0, PC; off_6BCBF8
1CFD4A:  LDR             R2, [R0]
1CFD4C:  MOV             R0, R5
1CFD4E:  BLX             R2
1CFD50:  LDR             R0, =(dword_67A26C - 0x1CFD58)
1CFD52:  LDR             R1, =(unk_67A270 - 0x1CFD5A)
1CFD54:  ADD             R0, PC; dword_67A26C
1CFD56:  ADD             R1, PC; unk_67A270
1CFD58:  STR             R5, [R0]
1CFD5A:  VSTR            S16, [R1]
1CFD5E:  VPOP            {D8}
1CFD62:  POP.W           {R11}
1CFD66:  POP             {R4-R7,PC}
