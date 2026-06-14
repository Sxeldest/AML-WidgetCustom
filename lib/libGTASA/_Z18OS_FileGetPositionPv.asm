; =========================================================
; Game Engine Function: _Z18OS_FileGetPositionPv
; Address            : 0x26764E - 0x26769A
; =========================================================

26764E:  PUSH            {R4-R7,LR}
267650:  ADD             R7, SP, #0xC
267652:  PUSH.W          {R11}
267656:  MOV             R4, R0
267658:  LDR             R0, [R4,#4]; stream
26765A:  CBZ             R0, loc_267668
26765C:  POP.W           {R11}
267660:  POP.W           {R4-R7,LR}
267664:  B.W             j_ftell
267668:  LDR             R0, [R4]
26766A:  LDRD.W          R1, R5, [R0]
26766E:  CMP             R1, #1
267670:  BNE             loc_26767A
267672:  MOV             R0, R5; stream
267674:  BLX             ftell
267678:  B               loc_26768A
26767A:  MOV             R0, R5; asset
26767C:  BLX             AAsset_getLength
267680:  MOV             R6, R0
267682:  MOV             R0, R5; asset
267684:  BLX             AAsset_getRemainingLength
267688:  SUBS            R0, R6, R0
26768A:  LDR             R1, [R4,#0x18]
26768C:  CMP             R1, #0
26768E:  ITT GE
267690:  LDRGE           R1, [R4,#0x1C]
267692:  SUBGE           R0, R0, R1
267694:  POP.W           {R11}
267698:  POP             {R4-R7,PC}
