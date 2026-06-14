; =========================================================
; Game Engine Function: _ZN19CUpsideDownCarCheck13AddCarToCheckEi
; Address            : 0x328546 - 0x3285AC
; =========================================================

328546:  LDR             R2, [R0]
328548:  MOV.W           R12, #0
32854C:  CMP             R2, #0
32854E:  BLT             loc_32858C
328550:  MOV             R3, R0
328552:  LDR.W           R2, [R3,#8]!
328556:  CMP.W           R2, #0xFFFFFFFF
32855A:  BLE             loc_328592
32855C:  MOV             R3, R0
32855E:  LDR.W           R2, [R3,#0x10]!
328562:  CMP             R2, #0
328564:  BLT             loc_328596
328566:  MOV             R3, R0
328568:  LDR.W           R2, [R3,#0x18]!
32856C:  CMP             R2, #0
32856E:  BLT             loc_32859A
328570:  MOV             R3, R0
328572:  LDR.W           R2, [R3,#0x20]!
328576:  CMP             R2, #0
328578:  BLT             loc_32859E
32857A:  MOV             R3, R0
32857C:  LDR.W           R2, [R3,#0x28]!
328580:  CMP.W           R2, #0xFFFFFFFF
328584:  IT GT
328586:  BXGT            LR
328588:  MOVS            R2, #5
32858A:  B               loc_3285A0
32858C:  MOVS            R2, #0
32858E:  MOV             R3, R0
328590:  B               loc_3285A0
328592:  MOVS            R2, #1
328594:  B               loc_3285A0
328596:  MOVS            R2, #2
328598:  B               loc_3285A0
32859A:  MOVS            R2, #3
32859C:  B               loc_3285A0
32859E:  MOVS            R2, #4
3285A0:  ADD.W           R0, R0, R2,LSL#3
3285A4:  STR             R1, [R3]
3285A6:  STR.W           R12, [R0,#4]
3285AA:  BX              LR
