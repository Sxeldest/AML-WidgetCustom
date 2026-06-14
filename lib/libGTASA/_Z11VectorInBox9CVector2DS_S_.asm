; =========================================================
; Game Engine Function: _Z11VectorInBox9CVector2DS_S_
; Address            : 0x2971C0 - 0x297210
; =========================================================

2971C0:  VMOV            S0, R0
2971C4:  VMOV            S2, R2
2971C8:  VCMPE.F32       S0, S2
2971CC:  VMRS            APSR_nzcv, FPSCR
2971D0:  BLT             loc_2971E2
2971D2:  LDR             R0, [SP,#arg_0]
2971D4:  VMOV            S2, R0
2971D8:  VCMPE.F32       S0, S2
2971DC:  VMRS            APSR_nzcv, FPSCR
2971E0:  BLE             loc_2971E6
2971E2:  MOVS            R0, #0
2971E4:  BX              LR
2971E6:  VMOV            S0, R1
2971EA:  MOVS            R0, #0
2971EC:  VMOV            S2, R3
2971F0:  VCMPE.F32       S0, S2
2971F4:  VMRS            APSR_nzcv, FPSCR
2971F8:  IT LT
2971FA:  BXLT            LR
2971FC:  LDR             R1, [SP,#arg_4]
2971FE:  VMOV            S2, R1
297202:  VCMPE.F32       S0, S2
297206:  VMRS            APSR_nzcv, FPSCR
29720A:  IT LE
29720C:  MOVLE           R0, #1
29720E:  BX              LR
