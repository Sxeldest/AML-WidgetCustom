; =========================================================
; Game Engine Function: WriteUnlock
; Address            : 0x24042A - 0x24047E
; =========================================================

24042A:  ADD.W           R1, R0, #0x10
24042E:  MOVS            R2, #0
240430:  DMB.W           ISH
240434:  LDREX.W         R3, [R1]
240438:  STREX.W         R3, R2, [R1]
24043C:  CMP             R3, #0
24043E:  BNE             loc_240434
240440:  ADD.W           R12, R0, #4
240444:  DMB.W           ISH
240448:  DMB.W           ISH
24044C:  LDREX.W         R2, [R12]
240450:  SUBS            R3, R2, #1
240452:  STREX.W         R1, R3, [R12]
240456:  CMP             R1, #0
240458:  BNE             loc_24044C
24045A:  CMP             R2, #1
24045C:  DMB.W           ISH
240460:  IT NE
240462:  BXNE            LR
240464:  ADDS            R0, #8
240466:  MOVS            R1, #0
240468:  DMB.W           ISH
24046C:  LDREX.W         R2, [R0]
240470:  STREX.W         R2, R1, [R0]
240474:  CMP             R2, #0
240476:  BNE             loc_24046C
240478:  DMB.W           ISH
24047C:  BX              LR
