; =========================================================
; Game Engine Function: _Z16GetTouchDistancebfff7CVectorS_Pf
; Address            : 0x4C8378 - 0x4C842C
; =========================================================

4C8378:  VMOV.F32        S0, #0.5
4C837C:  MOVS            R0, #0
4C837E:  VMOV            S2, R3
4C8382:  VMUL.F32        S8, S2, S0
4C8386:  VLDR            S2, [SP,#arg_0]
4C838A:  VSUB.F32        S4, S2, S8
4C838E:  VMOV            S2, R1
4C8392:  VCMPE.F32       S4, S2
4C8396:  VMRS            APSR_nzcv, FPSCR
4C839A:  ITTTT LT
4C839C:  VLDRLT          S6, [SP,#arg_4]
4C83A0:  VSUBLT.F32      S10, S6, S8
4C83A4:  VMOVLT          S6, R2
4C83A8:  VCMPELT.F32     S10, S6
4C83AC:  IT LT
4C83AE:  VMRSLT          APSR_nzcv, FPSCR
4C83B2:  BGE             locret_4C842A
4C83B4:  VLDR            S12, [SP,#arg_C]
4C83B8:  VADD.F32        S12, S8, S12
4C83BC:  VCMPE.F32       S12, S2
4C83C0:  VMRS            APSR_nzcv, FPSCR
4C83C4:  BLE             locret_4C842A
4C83C6:  LDR             R1, [SP,#arg_18]
4C83C8:  MOVS            R0, #0
4C83CA:  CBZ             R1, locret_4C842A
4C83CC:  VLDR            S14, [SP,#arg_10]
4C83D0:  VADD.F32        S8, S8, S14
4C83D4:  VCMPE.F32       S8, S6
4C83D8:  VMRS            APSR_nzcv, FPSCR
4C83DC:  IT LE
4C83DE:  BXLE            LR
4C83E0:  VADD.F32        S8, S10, S8
4C83E4:  LDR             R0, [SP,#arg_14]
4C83E6:  VADD.F32        S4, S4, S12
4C83EA:  LDR             R2, [SP,#arg_8]
4C83EC:  VMOV            S10, R0
4C83F0:  MOVS            R0, #1
4C83F2:  VMOV            S12, R2
4C83F6:  VADD.F32        S10, S12, S10
4C83FA:  VMUL.F32        S8, S8, S0
4C83FE:  VMUL.F32        S4, S4, S0
4C8402:  VMUL.F32        S0, S10, S0
4C8406:  VSUB.F32        S6, S8, S6
4C840A:  VSUB.F32        S2, S4, S2
4C840E:  VMUL.F32        S0, S0, S0
4C8412:  VMUL.F32        S4, S6, S6
4C8416:  VMUL.F32        S2, S2, S2
4C841A:  VADD.F32        S2, S2, S4
4C841E:  VADD.F32        S0, S0, S2
4C8422:  VSQRT.F32       S0, S0
4C8426:  VSTR            S0, [R1]
4C842A:  BX              LR
