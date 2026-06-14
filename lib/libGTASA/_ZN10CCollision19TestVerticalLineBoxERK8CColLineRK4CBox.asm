; =========================================================
; Game Engine Function: _ZN10CCollision19TestVerticalLineBoxERK8CColLineRK4CBox
; Address            : 0x2DB40C - 0x2DB48A
; =========================================================

2DB40C:  VLDR            S0, [R0]
2DB410:  VLDR            S2, [R1]
2DB414:  VCMPE.F32       S0, S2
2DB418:  VMRS            APSR_nzcv, FPSCR
2DB41C:  BLE             loc_2DB486
2DB41E:  VLDR            S2, [R0,#4]
2DB422:  VLDR            S4, [R1,#4]
2DB426:  VCMPE.F32       S2, S4
2DB42A:  VMRS            APSR_nzcv, FPSCR
2DB42E:  BLE             loc_2DB486
2DB430:  VLDR            S4, [R1,#0xC]
2DB434:  VCMPE.F32       S0, S4
2DB438:  VMRS            APSR_nzcv, FPSCR
2DB43C:  BGE             loc_2DB486
2DB43E:  VLDR            S0, [R1,#0x10]
2DB442:  VCMPE.F32       S2, S0
2DB446:  VMRS            APSR_nzcv, FPSCR
2DB44A:  BGE             loc_2DB486
2DB44C:  VLDR            S0, [R0,#8]
2DB450:  VLDR            S2, [R0,#0x18]
2DB454:  VLDR            S4, [R1,#0x14]
2DB458:  VMIN.F32        D3, D0, D1
2DB45C:  VCMPE.F32       S6, S4
2DB460:  VMRS            APSR_nzcv, FPSCR
2DB464:  BGT             loc_2DB486
2DB466:  VCMPE.F32       S0, S2
2DB46A:  VMRS            APSR_nzcv, FPSCR
2DB46E:  IT LT
2DB470:  VMOVLT.F32      S0, S2
2DB474:  VLDR            S2, [R1,#8]
2DB478:  VCMPE.F32       S0, S2
2DB47C:  VMRS            APSR_nzcv, FPSCR
2DB480:  ITT GE
2DB482:  MOVGE           R0, #1
2DB484:  BXGE            LR
2DB486:  MOVS            R0, #0
2DB488:  BX              LR
