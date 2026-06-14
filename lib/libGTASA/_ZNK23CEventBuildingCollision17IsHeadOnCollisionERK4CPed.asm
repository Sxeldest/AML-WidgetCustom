; =========================================================
; Game Engine Function: _ZNK23CEventBuildingCollision17IsHeadOnCollisionERK4CPed
; Address            : 0x371948 - 0x3719A4
; =========================================================

371948:  PUSH            {R4,R5,R7,LR}
37194A:  ADD             R7, SP, #8
37194C:  SUB             SP, SP, #0x10
37194E:  LDR             R5, [R1,#0x14]
371950:  MOVS            R4, #0
371952:  LDRD.W          R1, R0, [R0,#0x18]
371956:  STRD.W          R1, R0, [SP,#0x18+var_18]
37195A:  MOV             R0, SP; this
37195C:  STR             R4, [SP,#0x18+var_10]
37195E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
371962:  VLDR            S0, [R5,#0x10]
371966:  VLDR            S6, [SP,#0x18+var_18]
37196A:  VLDR            S2, [R5,#0x14]
37196E:  VLDR            S8, [SP,#0x18+var_14]
371972:  VMUL.F32        S0, S0, S6
371976:  VLDR            S4, [R5,#0x18]
37197A:  VMUL.F32        S2, S2, S8
37197E:  VLDR            S10, [SP,#0x18+var_10]
371982:  VMUL.F32        S4, S4, S10
371986:  VADD.F32        S0, S0, S2
37198A:  VLDR            S2, =-0.866
37198E:  VADD.F32        S0, S0, S4
371992:  VCMPE.F32       S0, S2
371996:  VMRS            APSR_nzcv, FPSCR
37199A:  IT LT
37199C:  MOVLT           R4, #1
37199E:  MOV             R0, R4
3719A0:  ADD             SP, SP, #0x10
3719A2:  POP             {R4,R5,R7,PC}
