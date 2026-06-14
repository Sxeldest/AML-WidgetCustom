; =========================================================
; Game Engine Function: _Z15FileWriteEndianPvPhjj
; Address            : 0x1E740E - 0x1E7478
; =========================================================

1E740E:  PUSH            {R4-R7,LR}
1E7410:  ADD             R7, SP, #0xC
1E7412:  PUSH.W          {R11}
1E7416:  MOV             R4, R2
1E7418:  MOV             R5, R1
1E741A:  MOV             R6, R0
1E741C:  CMP             R3, #2
1E741E:  BEQ             loc_1E7456
1E7420:  CMP             R3, #4
1E7422:  BNE             loc_1E7472
1E7424:  CBZ             R4, loc_1E7472
1E7426:  ADDS            R1, R5, #3; ptr
1E7428:  MOV             R0, R6; void *
1E742A:  MOVS            R2, #1; int
1E742C:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
1E7430:  ADDS            R1, R5, #2; ptr
1E7432:  MOV             R0, R6; void *
1E7434:  MOVS            R2, #1; int
1E7436:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
1E743A:  ADDS            R1, R5, #1; ptr
1E743C:  MOV             R0, R6; void *
1E743E:  MOVS            R2, #1; int
1E7440:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
1E7444:  MOV             R0, R6; void *
1E7446:  MOV             R1, R5; ptr
1E7448:  MOVS            R2, #1; int
1E744A:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
1E744E:  ADDS            R5, #4
1E7450:  SUBS            R4, #4
1E7452:  BNE             loc_1E7426
1E7454:  B               loc_1E7472
1E7456:  CBZ             R4, loc_1E7472
1E7458:  ADDS            R1, R5, #1; ptr
1E745A:  MOV             R0, R6; void *
1E745C:  MOVS            R2, #1; int
1E745E:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
1E7462:  MOV             R0, R6; void *
1E7464:  MOV             R1, R5; ptr
1E7466:  MOVS            R2, #1; int
1E7468:  BLX             j__Z12OS_FileWritePvPKvi; OS_FileWrite(void *,void const*,int)
1E746C:  ADDS            R5, #2
1E746E:  SUBS            R4, #2
1E7470:  BNE             loc_1E7458
1E7472:  POP.W           {R11}
1E7476:  POP             {R4-R7,PC}
