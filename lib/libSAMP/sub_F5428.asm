; =========================================================
; Game Engine Function: sub_F5428
; Address            : 0xF5428 - 0xF5460
; =========================================================

F5428:  LDR             R1, =(dword_240084 - 0xF542E)
F542A:  ADD             R1, PC; dword_240084
F542C:  LDR             R3, [R1,#(dword_240088 - 0x240084)]
F542E:  CBZ             R3, loc_F545C
F5430:  ADD.W           R12, R1, #4
F5434:  MOV             R1, R12
F5436:  LDR             R2, [R3,#0x10]
F5438:  CMP             R2, R0
F543A:  MOV             R2, R3
F543C:  IT CC
F543E:  ADDCC           R2, #4
F5440:  LDR             R2, [R2]
F5442:  IT CS
F5444:  MOVCS           R1, R3
F5446:  CMP             R2, #0
F5448:  MOV             R3, R2
F544A:  BNE             loc_F5436
F544C:  CMP             R1, R12
F544E:  BEQ             loc_F545C
F5450:  LDR             R2, [R1,#0x10]
F5452:  CMP             R2, R0
F5454:  ITT LS
F5456:  ADDLS.W         R0, R1, #0x14
F545A:  BXLS            LR
F545C:  MOVS            R0, #0
F545E:  BX              LR
