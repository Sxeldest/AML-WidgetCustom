; =========================================================
; Game Engine Function: _ZNK8CVehicle14CanPedEnterCarEv
; Address            : 0x584DC8 - 0x584E58
; =========================================================

584DC8:  LDR             R1, [R0,#0x14]
584DCA:  VLDR            S2, =-0.1
584DCE:  VLDR            S0, [R1,#0x28]
584DD2:  VCMPE.F32       S0, S2
584DD6:  VMRS            APSR_nzcv, FPSCR
584DDA:  BLT             loc_584DF8
584DDC:  VLDR            S2, =0.1
584DE0:  VCMPE.F32       S0, S2
584DE4:  VMRS            APSR_nzcv, FPSCR
584DE8:  BGT             loc_584DF8
584DEA:  LDR.W           R1, [R0,#0x5A0]
584DEE:  CMP             R1, #9
584DF0:  ITTT NE
584DF2:  MOVNE           R1, #0
584DF4:  MOVNE           R0, R1
584DF6:  BXNE            LR
584DF8:  VLDR            S0, [R0,#0x48]
584DFC:  MOVS            R1, #0
584DFE:  VLDR            S2, [R0,#0x4C]
584E02:  VMUL.F32        S0, S0, S0
584E06:  VLDR            S4, [R0,#0x50]
584E0A:  VMUL.F32        S2, S2, S2
584E0E:  VMUL.F32        S4, S4, S4
584E12:  VADD.F32        S0, S0, S2
584E16:  VADD.F32        S2, S0, S4
584E1A:  VLDR            S0, =0.04
584E1E:  VCMPE.F32       S2, S0
584E22:  VMRS            APSR_nzcv, FPSCR
584E26:  BGT             loc_584E54
584E28:  VLDR            S2, [R0,#0x54]
584E2C:  VLDR            S4, [R0,#0x58]
584E30:  VMUL.F32        S2, S2, S2
584E34:  VLDR            S6, [R0,#0x5C]
584E38:  VMUL.F32        S4, S4, S4
584E3C:  VMUL.F32        S6, S6, S6
584E40:  VADD.F32        S2, S2, S4
584E44:  VADD.F32        S2, S2, S6
584E48:  VCMPE.F32       S2, S0
584E4C:  VMRS            APSR_nzcv, FPSCR
584E50:  IT LE
584E52:  MOVLE           R1, #1
584E54:  MOV             R0, R1
584E56:  BX              LR
