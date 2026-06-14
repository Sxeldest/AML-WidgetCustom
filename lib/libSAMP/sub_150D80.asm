; =========================================================
; Game Engine Function: sub_150D80
; Address            : 0x150D80 - 0x150DB0
; =========================================================

150D80:  LDRB.W          R1, [R0,#0x49]
150D84:  CBZ             R1, loc_150DAC
150D86:  VLDR            S0, [R0,#0x60]
150D8A:  VCMP.F32        S0, #0.0
150D8E:  VMRS            APSR_nzcv, FPSCR
150D92:  ITT EQ
150D94:  MOVEQ           R0, #1
150D96:  BXEQ            LR
150D98:  VLDR            S2, [R0,#0x64]
150D9C:  MOVS            R0, #0
150D9E:  VCMP.F32        S2, S0
150DA2:  VMRS            APSR_nzcv, FPSCR
150DA6:  IT LS
150DA8:  MOVLS           R0, #1
150DAA:  BX              LR
150DAC:  MOVS            R0, #0
150DAE:  BX              LR
