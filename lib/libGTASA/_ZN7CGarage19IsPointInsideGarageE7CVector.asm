; =========================================================
; Game Engine Function: _ZN7CGarage19IsPointInsideGarageE7CVector
; Address            : 0x31349C - 0x31353A
; =========================================================

31349C:  VMOV            S0, R3
3134A0:  VLDR            S2, [R0,#8]
3134A4:  VCMPE.F32       S2, S0
3134A8:  VMRS            APSR_nzcv, FPSCR
3134AC:  BGT             loc_313500
3134AE:  VLDR            S2, [R0,#0x1C]
3134B2:  VCMPE.F32       S2, S0
3134B6:  VMRS            APSR_nzcv, FPSCR
3134BA:  BLT             loc_313500
3134BC:  VLDR            S0, [R0]
3134C0:  VMOV            S10, R1
3134C4:  VLDR            S2, [R0,#4]
3134C8:  VMOV            S8, R2
3134CC:  VSUB.F32        S0, S10, S0
3134D0:  VLDR            S4, [R0,#0xC]
3134D4:  VSUB.F32        S2, S8, S2
3134D8:  VLDR            S6, [R0,#0x10]
3134DC:  VMUL.F32        S4, S0, S4
3134E0:  VMUL.F32        S6, S2, S6
3134E4:  VADD.F32        S4, S4, S6
3134E8:  VCMPE.F32       S4, #0.0
3134EC:  VMRS            APSR_nzcv, FPSCR
3134F0:  BLT             loc_313500
3134F2:  VLDR            S6, [R0,#0x20]
3134F6:  VCMPE.F32       S4, S6
3134FA:  VMRS            APSR_nzcv, FPSCR
3134FE:  BLE             loc_313506
313500:  MOVS            R1, #0
313502:  MOV             R0, R1
313504:  BX              LR
313506:  VLDR            S4, [R0,#0x14]
31350A:  MOVS            R1, #0
31350C:  VLDR            S6, [R0,#0x18]
313510:  VMUL.F32        S0, S0, S4
313514:  VMUL.F32        S2, S2, S6
313518:  VADD.F32        S0, S0, S2
31351C:  VCMPE.F32       S0, #0.0
313520:  VMRS            APSR_nzcv, FPSCR
313524:  BLT             loc_313536
313526:  VLDR            S2, [R0,#0x24]
31352A:  VCMPE.F32       S0, S2
31352E:  VMRS            APSR_nzcv, FPSCR
313532:  IT LE
313534:  MOVLE           R1, #1
313536:  MOV             R0, R1
313538:  BX              LR
