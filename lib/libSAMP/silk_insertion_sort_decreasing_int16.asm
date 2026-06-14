; =========================================================
; Game Engine Function: silk_insertion_sort_decreasing_int16
; Address            : 0x19659E - 0x1966A2
; =========================================================

19659E:  PUSH            {R4-R7,LR}
1965A0:  ADD             R7, SP, #0xC
1965A2:  PUSH.W          {R8-R11}
1965A6:  SUB             SP, SP, #8
1965A8:  CMP             R3, #1
1965AA:  MOV.W           R6, #0
1965AE:  STR             R2, [SP,#0x24+var_20]
1965B0:  BLT             loc_196620
1965B2:  STR.W           R6, [R1,R6,LSL#2]
1965B6:  ADDS            R6, #1
1965B8:  CMP             R3, R6
1965BA:  BNE             loc_1965B2
1965BC:  CMP             R3, #1
1965BE:  MOV.W           R5, #0
1965C2:  IT GT
1965C4:  MOVGT           R5, #1
1965C6:  MOVS            R6, #0
1965C8:  CMP             R3, #2
1965CA:  BLT             loc_196620
1965CC:  ADDS            R2, R1, #4
1965CE:  ADD.W           R8, R0, #2
1965D2:  MOV.W           LR, #1
1965D6:  STR             R5, [SP,#0x24+var_24]
1965D8:  LDRSH.W         R10, [R0,LR,LSL#1]
1965DC:  MOV             R11, R2
1965DE:  MOV             R4, R8
1965E0:  MOV             R9, LR
1965E2:  LDRSH.W         R6, [R4,#-2]
1965E6:  CMP             R10, R6
1965E8:  BLE             loc_196606
1965EA:  STRH.W          R6, [R4],#-2
1965EE:  MOV             R6, R11
1965F0:  LDR.W           R12, [R6,#-4]!
1965F4:  SUB.W           R9, R9, #1
1965F8:  ADD.W           R5, R9, #1
1965FC:  STR.W           R12, [R11]
196600:  CMP             R5, #1
196602:  MOV             R11, R6
196604:  BGT             loc_1965E2
196606:  STRH.W          R10, [R0,R9,LSL#1]
19660A:  ADDS            R2, #4
19660C:  ADD.W           R8, R8, #2
196610:  STR.W           LR, [R1,R9,LSL#2]
196614:  ADD.W           LR, LR, #1
196618:  CMP             LR, R3
19661A:  BNE             loc_1965D8
19661C:  LDRD.W          R6, R2, [SP,#0x24+var_24]
196620:  CMP             R3, R2
196622:  BGE             loc_19669A
196624:  SUB.W           R12, R3, #1
196628:  CMP             R6, #1
19662A:  BNE             loc_19667C
19662C:  SUBS            R6, R3, #2
19662E:  ADD.W           R8, R1, R12,LSL#2
196632:  ADD.W           LR, R0, R6,LSL#1
196636:  LDRSH.W         R9, [R0,R3,LSL#1]
19663A:  LDRSH.W         R4, [R0,R12,LSL#1]
19663E:  CMP             R9, R4
196640:  BLE             loc_196674
196642:  MOV             R10, R8
196644:  MOV             R4, LR
196646:  MOV             R6, R12
196648:  LDRSH.W         R5, [R4]
19664C:  CMP             R9, R5
19664E:  BLE             loc_196666
196650:  STRH            R5, [R4,#2]
196652:  MOV             R11, R10
196654:  LDR.W           R5, [R11,#-4]!
196658:  SUBS            R6, #1
19665A:  SUBS            R4, #2
19665C:  STR.W           R5, [R10]
196660:  CMP             R6, #0
196662:  MOV             R10, R11
196664:  BGT             loc_196648
196666:  SUBS            R4, R6, #1
196668:  ADDS            R4, #1
19666A:  STRH.W          R9, [R0,R4,LSL#1]
19666E:  STR.W           R3, [R1,R4,LSL#2]
196672:  LDR             R2, [SP,#0x24+var_20]
196674:  ADDS            R3, #1
196676:  CMP             R3, R2
196678:  BNE             loc_196636
19667A:  B               loc_19669A
19667C:  LDRH.W          R5, [R0,R12,LSL#1]
196680:  LDRSH.W         R6, [R0,R3,LSL#1]
196684:  SXTH            R4, R5
196686:  CMP             R6, R4
196688:  BLE             loc_196694
19668A:  MOV             R5, R6
19668C:  STRH.W          R6, [R0,R12,LSL#1]
196690:  STR.W           R3, [R1,R12,LSL#2]
196694:  ADDS            R3, #1
196696:  CMP             R2, R3
196698:  BNE             loc_196680
19669A:  ADD             SP, SP, #8
19669C:  POP.W           {R8-R11}
1966A0:  POP             {R4-R7,PC}
