; =========================================================
; Game Engine Function: sub_1683F8
; Address            : 0x1683F8 - 0x16849C
; =========================================================

1683F8:  PUSH            {R4-R7,LR}
1683FA:  ADD             R7, SP, #0xC
1683FC:  PUSH.W          {R8-R10}
168400:  LDR             R2, =(dword_381B58 - 0x16840A)
168402:  MOVW            R6, #0x1A9C
168406:  ADD             R2, PC; dword_381B58
168408:  LDR             R2, [R2]
16840A:  LDR.W           R10, [R2,R6]
16840E:  CMP.W           R10, #0
168412:  BEQ             loc_168496
168414:  CBZ             R0, loc_168480
168416:  CMP.W           R10, #1
16841A:  BLT             loc_168480
16841C:  ADD             R2, R6
16841E:  MOV.W           R9, #0
168422:  MOV.W           R8, #1
168426:  LDR.W           R12, [R2,#8]
16842A:  ADD.W           LR, R12, #0x28 ; '('
16842E:  ADD.W           R2, R9, R9,LSL#3
168432:  ADD.W           R2, R12, R2,LSL#2
168436:  LDR             R2, [R2,#4]
168438:  CBZ             R2, loc_16846E
16843A:  LDRB            R4, [R2,#0xB]
16843C:  LSLS            R4, R4, #0x1F
16843E:  BNE             loc_16846E
168440:  MOVS            R5, #0
168442:  MOV             R6, R8
168444:  MOV             R4, LR
168446:  CBZ             R2, loc_16845A
168448:  LDR.W           R3, [R0,#0x2FC]
16844C:  LDR.W           R2, [R2,#0x2FC]
168450:  SUBS            R2, R2, R3
168452:  CLZ.W           R2, R2
168456:  LSRS            R2, R2, #5
168458:  ORRS            R5, R2
16845A:  CMP             R6, R10
16845C:  BGE             loc_16846A
16845E:  LSLS            R2, R5, #0x1F
168460:  BNE             loc_16846A
168462:  LDR.W           R2, [R4],#0x24
168466:  ADDS            R6, #1
168468:  B               loc_168446
16846A:  LSLS            R2, R5, #0x1F
16846C:  BEQ             loc_168484
16846E:  ADD.W           R9, R9, #1
168472:  ADD.W           R8, R8, #1
168476:  ADD.W           LR, LR, #0x24 ; '$'
16847A:  CMP             R9, R10
16847C:  BNE             loc_16842E
16847E:  B               loc_168496
168480:  MOV.W           R9, #0
168484:  CMP             R9, R10
168486:  BGE             loc_168496
168488:  MOV             R0, R9
16848A:  POP.W           {R8-R10}
16848E:  POP.W           {R4-R7,LR}
168492:  B.W             sub_1702CC
168496:  POP.W           {R8-R10}
16849A:  POP             {R4-R7,PC}
