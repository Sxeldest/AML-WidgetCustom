; =========================================================
; Game Engine Function: sub_1DA444
; Address            : 0x1DA444 - 0x1DA4B4
; =========================================================

1DA444:  VMOV            S0, R3
1DA448:  CMP             R2, #2
1DA44C:  BEQ             loc_1DA47C
1DA450:  CMP             R2, #1
1DA454:  BNE             loc_1DA4A8
1DA458:  VCMPE.F32       S0, #0.0
1DA45C:  VMRS            APSR_nzcv, FPSCR
1DA460:  BLT             loc_1DA49C
1DA464:  VMOV.F32        S2, #1.0
1DA468:  VCMPE.F32       S0, S2
1DA46C:  VMRS            APSR_nzcv, FPSCR
1DA470:  VSTRLE          S0, [R0,#4]
1DA474:  BXLE            LR
1DA478:  B               loc_1DA49C
1DA47C:  VCMPE.F32       S0, #0.0
1DA480:  VMRS            APSR_nzcv, FPSCR
1DA484:  BLT             loc_1DA49C
1DA488:  VMOV.F32        S2, #1.0
1DA48C:  VCMPE.F32       S0, S2
1DA490:  VMRS            APSR_nzcv, FPSCR
1DA494:  VSTRLE          S0, [R0,#8]
1DA498:  BXLE            LR
1DA49C:  MOV             R0, R1
1DA4A0:  MOVW            R1, #0xA003
1DA4A4:  B               j_alSetError
1DA4A8:  MOV             R0, R1
1DA4AC:  MOVW            R1, #0xA002
1DA4B0:  B               j_alSetError
