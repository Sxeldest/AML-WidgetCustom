; =========================================================
; Game Engine Function: sub_E4664
; Address            : 0xE4664 - 0xE46E6
; =========================================================

E4664:  PUSH            {R4-R7,LR}
E4666:  ADD             R7, SP, #0xC
E4668:  PUSH.W          {R8}
E466C:  SUB             SP, SP, #0xB0
E466E:  MOV             R4, R0
E4670:  LDR             R0, [R0]
E4672:  MOV             R6, R1
E4674:  MOVS            R1, #0
E4676:  LDR.W           R0, [R0,#-0xC]
E467A:  STR             R4, [SP,#0xC0+var_A0]
E467C:  ADD             R0, R4
E467E:  STR             R1, [SP,#0xC0+var_A8]
E4680:  LDR             R0, [R0,#0x18]
E4682:  STR             R0, [SP,#0xC0+var_9C]
E4684:  ADD.W           R8, SP, #0xC0+var_B8
E4688:  STR             R1, [SP,#0xC0+var_C0]
E468A:  ADD             R0, SP, #0xC0+var_98
E468C:  ADD             R1, SP, #0xC0+var_A0
E468E:  MOV             R2, R8
E4690:  MOVS            R3, #1
E4692:  BL              sub_E62C4
E4696:  ADD             R5, SP, #0xC0+var_98
E4698:  MOVS            R1, #0
E469A:  MOV             R2, R6
E469C:  MOV             R0, R5
E469E:  BL              sub_E6328
E46A2:  ADD.W           R0, R5, #0x20 ; ' '
E46A6:  BL              sub_E6790
E46AA:  LDR             R0, [SP,#0xC0+var_88]
E46AC:  CMP             R5, R0
E46AE:  BEQ             loc_E46B6
E46B0:  CBZ             R0, loc_E46C0
E46B2:  MOVS            R1, #5
E46B4:  B               loc_E46B8
E46B6:  MOVS            R1, #4
E46B8:  LDR             R2, [R0]
E46BA:  LDR.W           R1, [R2,R1,LSL#2]
E46BE:  BLX             R1
E46C0:  LDR             R0, [SP,#0xC0+var_A8]
E46C2:  CMP             R8, R0
E46C4:  BEQ             loc_E46CC
E46C6:  CBZ             R0, loc_E46D6
E46C8:  MOVS            R1, #5
E46CA:  B               loc_E46CE
E46CC:  MOVS            R1, #4
E46CE:  LDR             R2, [R0]
E46D0:  LDR.W           R1, [R2,R1,LSL#2]
E46D4:  BLX             R1
E46D6:  ADD             R0, SP, #0xC0+var_A0
E46D8:  BL              sub_E669A
E46DC:  MOV             R0, R4
E46DE:  ADD             SP, SP, #0xB0
E46E0:  POP.W           {R8}
E46E4:  POP             {R4-R7,PC}
