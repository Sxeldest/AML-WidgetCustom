; =========================================================
; Game Engine Function: sub_4767B4
; Address            : 0x4767B4 - 0x476906
; =========================================================

4767B4:  PUSH            {R4-R7,LR}
4767B6:  ADD             R7, SP, #0xC
4767B8:  PUSH.W          {R8-R11}
4767BC:  SUB             SP, SP, #0x1C
4767BE:  MOV             R6, R0
4767C0:  LDR.W           R0, [R6,#0xE4]
4767C4:  LDR.W           R3, [R6,#0x148]
4767C8:  CMP             R0, #1
4767CA:  STR             R6, [SP,#0x38+var_30]
4767CC:  BLT             loc_47680E
4767CE:  ADD.W           R10, R6, #0xE8
4767D2:  ADD.W           R9, SP, #0x38+var_2C
4767D6:  MOV.W           R11, #0
4767DA:  MOVS            R5, #0
4767DC:  LDR.W           R0, [R10,R5,LSL#2]
4767E0:  MOV             R8, R3
4767E2:  LDR             R2, [R3,#8]
4767E4:  LDR             R1, [R6,#4]
4767E6:  LDR             R3, [R0,#0xC]
4767E8:  LDR             R6, [R0,#4]
4767EA:  LDR             R4, [R1,#0x20]
4767EC:  MULS            R2, R3
4767EE:  ADD.W           R0, R8, R6,LSL#2
4767F2:  LDR             R6, [SP,#0x38+var_30]
4767F4:  LDR             R1, [R0,#0x40]
4767F6:  STR.W           R11, [SP,#0x38+var_38]
4767FA:  MOV             R0, R6
4767FC:  BLX             R4
4767FE:  STR.W           R0, [R9,R5,LSL#2]
476802:  ADDS            R5, #1
476804:  MOV             R3, R8
476806:  LDR.W           R0, [R6,#0xE4]
47680A:  CMP             R5, R0
47680C:  BLT             loc_4767DC
47680E:  LDRD.W          R8, R0, [R3,#0x10]
476812:  CMP             R8, R0
476814:  BGE             loc_4768BA
476816:  LDR             R4, [R3,#0xC]
476818:  ADD.W           R9, R3, #0x18
47681C:  STR             R3, [SP,#0x38+var_34]
47681E:  LDR.W           R1, [R6,#0xF8]
476822:  CMP             R4, R1
476824:  BCS             loc_4768AE
476826:  LDR.W           R3, [R6,#0xE4]
47682A:  CMP             R3, #1
47682C:  BLT             loc_476892
47682E:  MOV.W           R12, #0
476832:  MOVS            R1, #0
476834:  ADD.W           R0, R6, R12,LSL#2
476838:  LDR.W           R2, [R0,#0xE8]
47683C:  LDR             R0, [R2,#0x38]
47683E:  CMP             R0, #1
476840:  BLT             loc_47688A
476842:  LDR             R5, [R2,#0x34]
476844:  ADD             R3, SP, #0x38+var_2C
476846:  MOV             R11, R4
476848:  MOVS            R6, #0
47684A:  MUL.W           LR, R5, R4
47684E:  LDR.W           R4, [R3,R12,LSL#2]
476852:  CMP             R5, #1
476854:  BLT             loc_47687C
476856:  ADD.W           R0, R6, R8
47685A:  LDR.W           R3, [R4,R0,LSL#2]
47685E:  ADD.W           R0, R9, R1,LSL#2
476862:  ADD.W           R10, R3, LR,LSL#7
476866:  MOVS            R3, #0
476868:  STR.W           R10, [R0,R3,LSL#2]
47686C:  ADDS            R3, #1
47686E:  ADD.W           R10, R10, #0x80
476872:  LDR             R5, [R2,#0x34]
476874:  CMP             R3, R5
476876:  BLT             loc_476868
476878:  LDR             R0, [R2,#0x38]
47687A:  ADD             R1, R3
47687C:  ADDS            R6, #1
47687E:  CMP             R6, R0
476880:  BLT             loc_476852
476882:  LDR             R6, [SP,#0x38+var_30]
476884:  MOV             R4, R11
476886:  LDR.W           R3, [R6,#0xE4]
47688A:  ADD.W           R12, R12, #1
47688E:  CMP             R12, R3
476890:  BLT             loc_476834
476892:  LDR.W           R0, [R6,#0x15C]
476896:  MOV             R1, R9
476898:  LDR             R2, [R0,#4]
47689A:  MOV             R0, R6
47689C:  BLX             R2
47689E:  CBZ             R0, loc_4768D0
4768A0:  LDR.W           R0, [R6,#0xF8]
4768A4:  ADDS            R4, #1
4768A6:  CMP             R4, R0
4768A8:  BCC             loc_476826
4768AA:  LDR             R3, [SP,#0x38+var_34]
4768AC:  LDR             R0, [R3,#0x14]
4768AE:  ADD.W           R8, R8, #1
4768B2:  MOVS            R4, #0
4768B4:  CMP             R8, R0
4768B6:  STR             R4, [R3,#0xC]
4768B8:  BLT             loc_47681E
4768BA:  LDR             R0, [R3,#8]
4768BC:  ADDS            R0, #1
4768BE:  STR             R0, [R3,#8]
4768C0:  LDR.W           R1, [R6,#0xE4]
4768C4:  LDR.W           R0, [R6,#0x148]
4768C8:  CMP             R1, #1
4768CA:  BLE             loc_4768DA
4768CC:  MOVS            R1, #1
4768CE:  B               loc_4768F4
4768D0:  LDR             R0, [SP,#0x38+var_34]
4768D2:  STRD.W          R4, R8, [R0,#0xC]
4768D6:  MOVS            R0, #0
4768D8:  B               loc_4768FE
4768DA:  LDR.W           R1, [R6,#0xE0]
4768DE:  LDR.W           R2, [R6,#0xE8]
4768E2:  LDR             R3, [R0,#8]
4768E4:  SUBS            R1, #1
4768E6:  ADD.W           R6, R2, #0x48 ; 'H'
4768EA:  CMP             R3, R1
4768EC:  IT CC
4768EE:  ADDCC.W         R6, R2, #0xC
4768F2:  LDR             R1, [R6]
4768F4:  MOVS            R2, #0
4768F6:  STRD.W          R2, R2, [R0,#0xC]
4768FA:  STR             R1, [R0,#0x14]
4768FC:  MOVS            R0, #1
4768FE:  ADD             SP, SP, #0x1C
476900:  POP.W           {R8-R11}
476904:  POP             {R4-R7,PC}
