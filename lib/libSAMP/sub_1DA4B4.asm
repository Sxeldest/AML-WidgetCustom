; =========================================================
; Game Engine Function: sub_1DA4B4
; Address            : 0x1DA4B4 - 0x1DA524
; =========================================================

1DA4B4:  VLDR            S0, [R3]
1DA4B8:  CMP             R2, #2
1DA4BC:  BEQ             loc_1DA4EC
1DA4C0:  CMP             R2, #1
1DA4C4:  BNE             loc_1DA518
1DA4C8:  VCMPE.F32       S0, #0.0
1DA4CC:  VMRS            APSR_nzcv, FPSCR
1DA4D0:  BLT             loc_1DA50C
1DA4D4:  VMOV.F32        S2, #1.0
1DA4D8:  VCMPE.F32       S0, S2
1DA4DC:  VMRS            APSR_nzcv, FPSCR
1DA4E0:  VSTRLE          S0, [R0,#4]
1DA4E4:  BXLE            LR
1DA4E8:  B               loc_1DA50C
1DA4EC:  VCMPE.F32       S0, #0.0
1DA4F0:  VMRS            APSR_nzcv, FPSCR
1DA4F4:  BLT             loc_1DA50C
1DA4F8:  VMOV.F32        S2, #1.0
1DA4FC:  VCMPE.F32       S0, S2
1DA500:  VMRS            APSR_nzcv, FPSCR
1DA504:  VSTRLE          S0, [R0,#8]
1DA508:  BXLE            LR
1DA50C:  MOV             R0, R1
1DA510:  MOVW            R1, #0xA003
1DA514:  B               j_alSetError
1DA518:  MOV             R0, R1
1DA51C:  MOVW            R1, #0xA002
1DA520:  B               j_alSetError
