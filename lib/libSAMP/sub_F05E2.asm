; =========================================================
; Game Engine Function: sub_F05E2
; Address            : 0xF05E2 - 0xF0670
; =========================================================

F05E2:  PUSH            {R4-R7,LR}
F05E4:  ADD             R7, SP, #0xC
F05E6:  PUSH.W          {R11}
F05EA:  LDR             R6, [R0,#8]
F05EC:  MOV             R4, R0
F05EE:  MOV             R5, R1
F05F0:  CMP.W           R5, #0xFFFFFFFF
F05F4:  LDRD.W          R0, R2, [R6,#8]
F05F8:  ADD.W           R1, R0, #1
F05FC:  BLE             loc_F0616
F05FE:  CMP             R2, R1
F0600:  BCS             loc_F060E
F0602:  LDR             R0, [R6]
F0604:  LDR             R2, [R0]
F0606:  MOV             R0, R6
F0608:  BLX             R2
F060A:  LDR             R0, [R6,#8]
F060C:  ADDS            R1, R0, #1
F060E:  LDR             R2, [R6,#4]
F0610:  STR             R1, [R6,#8]
F0612:  MOVS            R1, #0x2B ; '+'
F0614:  B               loc_F062E
F0616:  CMP             R2, R1
F0618:  BCS             loc_F0626
F061A:  LDR             R0, [R6]
F061C:  LDR             R2, [R0]
F061E:  MOV             R0, R6
F0620:  BLX             R2
F0622:  LDR             R0, [R6,#8]
F0624:  ADDS            R1, R0, #1
F0626:  LDR             R2, [R6,#4]
F0628:  NEGS            R5, R5
F062A:  STR             R1, [R6,#8]
F062C:  MOVS            R1, #0x2D ; '-'
F062E:  STRB            R1, [R2,R0]
F0630:  MOV             R0, #0x91A2B3C5
F0638:  UMULL.W         R0, R1, R5, R0
F063C:  MOV             R0, R4
F063E:  LSRS            R1, R1, #0xB
F0640:  BL              sub_EFC70
F0644:  MOV             R0, #0x88888889
F064C:  UMULL.W         R1, R2, R5, R0
F0650:  LSRS            R1, R2, #5
F0652:  UMULL.W         R0, R2, R1, R0
F0656:  LSRS            R0, R2, #5
F0658:  LSLS            R0, R0, #4
F065A:  SUB.W           R0, R0, R2,LSR#5
F065E:  SUB.W           R1, R1, R0,LSL#2
F0662:  MOV             R0, R4
F0664:  POP.W           {R11}
F0668:  POP.W           {R4-R7,LR}
F066C:  B.W             sub_EFC70
