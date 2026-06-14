; =========================================================
; Game Engine Function: _Z23RpMTEffectDictAddEffectP14RpMTEffectDictP10RpMTEffect
; Address            : 0x1C565C - 0x1C56D2
; =========================================================

1C565C:  PUSH            {R4-R7,LR}
1C565E:  ADD             R7, SP, #0xC
1C5660:  PUSH.W          {R8}
1C5664:  MOV             R5, R1
1C5666:  MOV             R4, R0
1C5668:  MOV             R8, R5
1C566A:  LDR.W           R0, [R8,#0x28]!
1C566E:  CBZ             R0, loc_1C56B2
1C5670:  LDR             R1, [R5,#0x2C]
1C5672:  MOV             R6, R5
1C5674:  STR             R0, [R1]
1C5676:  LDRD.W          R0, R1, [R5,#0x28]
1C567A:  STR             R1, [R0,#4]
1C567C:  LDR.W           R0, [R6,#4]!
1C5680:  SUBS            R0, #1
1C5682:  STR             R0, [R6]
1C5684:  BNE             loc_1C56B4
1C5686:  MOV             R0, R5
1C5688:  BLX             j__Z26RpMTEffectDictRemoveEffectP10RpMTEffect; RpMTEffectDictRemoveEffect(RpMTEffect *)
1C568C:  LDR             R0, [R5]
1C568E:  CBZ             R0, loc_1C56A0
1C5690:  LDR             R1, =(unk_6B7180 - 0x1C569A)
1C5692:  ADD.W           R0, R0, R0,LSL#2
1C5696:  ADD             R1, PC; unk_6B7180
1C5698:  ADD.W           R0, R1, R0,LSL#2
1C569C:  LDR             R1, [R0,#4]
1C569E:  CBNZ            R1, loc_1C56AC
1C56A0:  LDR             R0, =(RwEngineInstance_ptr - 0x1C56A6)
1C56A2:  ADD             R0, PC; RwEngineInstance_ptr
1C56A4:  LDR             R0, [R0]; RwEngineInstance
1C56A6:  LDR             R0, [R0]
1C56A8:  LDR.W           R1, [R0,#0x130]
1C56AC:  MOV             R0, R5
1C56AE:  BLX             R1
1C56B0:  B               loc_1C56B4
1C56B2:  ADDS            R6, R5, #4
1C56B4:  LDR             R0, [R4]
1C56B6:  STRD.W          R0, R4, [R5,#0x28]
1C56BA:  LDR             R0, [R4]
1C56BC:  STR.W           R8, [R0,#4]
1C56C0:  STR.W           R8, [R4]
1C56C4:  LDR             R0, [R6]
1C56C6:  ADDS            R0, #1
1C56C8:  STR             R0, [R6]
1C56CA:  MOV             R0, R4
1C56CC:  POP.W           {R8}
1C56D0:  POP             {R4-R7,PC}
