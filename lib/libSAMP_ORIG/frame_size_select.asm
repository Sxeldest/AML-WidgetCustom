; =========================================================
; Game Engine Function: frame_size_select
; Address            : 0xC5390 - 0xC543E
; =========================================================

C5390:  PUSH            {R4,R6,R7,LR}
C5392:  ADD             R7, SP, #8
C5394:  MOVW            R12, #0x851F
C5398:  MOV             R4, R0
C539A:  MOVT            R12, #0x51EB
C539E:  SMMUL.W         R0, R2, R12
C53A2:  ASRS            R3, R0, #7
C53A4:  ADD.W           R0, R3, R0,LSR#31
C53A8:  CMP             R0, R4
C53AA:  BGT             loc_C5438
C53AC:  MOVW            R3, #0x1388
C53B0:  CMP             R1, R3
C53B2:  BNE             loc_C53B8
C53B4:  MOV             R0, R4
C53B6:  B               loc_C53D6
C53B8:  MOVW            R3, #0x1389
C53BC:  SUB.W           LR, R1, R3
C53C0:  CMP.W           LR, #8
C53C4:  BHI             loc_C5438
C53C6:  MOVW            R3, #0x138D
C53CA:  CMP             R1, R3
C53CC:  BGT             loc_C5422
C53CE:  LSL.W           R0, R0, LR
C53D2:  CMP             R0, R4
C53D4:  BGT             loc_C5438
C53D6:  MOVS            R1, #0x64 ; 'd'
C53D8:  MULS            R1, R0
C53DA:  CMP             R1, R2
C53DC:  ITTT NE
C53DE:  MOVNE.W         R1, #0x190
C53E2:  MULNE           R1, R0
C53E4:  CMPNE           R1, R2
C53E6:  BEQ             locret_C5420
C53E8:  MOVS            R1, #0xC8
C53EA:  MULS            R1, R0
C53EC:  CMP             R1, R2
C53EE:  ITTTT NE
C53F0:  MOVNE           R1, #0x32 ; '2'
C53F2:  MULNE           R1, R0
C53F4:  ADDNE.W         R3, R2, R2,LSL#1
C53F8:  CMPNE.W         R1, R3,LSL#1
C53FC:  BEQ             locret_C5420
C53FE:  ADD.W           R4, R2, R2,LSL#2
C5402:  CMP             R1, R4
C5404:  ITT NE
C5406:  LSLNE           R4, R2, #2
C5408:  CMPNE           R1, R4
C540A:  BEQ             locret_C5420
C540C:  CMP             R1, R3
C540E:  IT NE
C5410:  CMPNE           R1, R2
C5412:  BEQ             locret_C5420
C5414:  MOVS            R1, #0x19
C5416:  MULS            R1, R0
C5418:  CMP             R1, R2
C541A:  IT NE
C541C:  MOVNE.W         R0, #0xFFFFFFFF
C5420:  POP             {R4,R6,R7,PC}
C5422:  MOVW            R0, #0x138B
C5426:  SUBS            R0, R1, R0
C5428:  MULS            R0, R2
C542A:  SMMUL.W         R0, R0, R12
C542E:  ASRS            R1, R0, #4
C5430:  ADD.W           R0, R1, R0,LSR#31
C5434:  CMP             R0, R4
C5436:  BLE             loc_C53D6
C5438:  MOV.W           R0, #0xFFFFFFFF
C543C:  POP             {R4,R6,R7,PC}
