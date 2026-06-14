; =========================================================
; Game Engine Function: sub_78052
; Address            : 0x78052 - 0x78110
; =========================================================

78052:  PUSH            {R4-R7,LR}
78054:  ADD             R7, SP, #0xC
78056:  PUSH.W          {R8-R11}
7805A:  SUB             SP, SP, #4
7805C:  MOV             R5, R0
7805E:  LDR.W           R10, [R5,#4]!
78062:  CMP.W           R10, #0
78066:  BEQ             loc_780FA
78068:  STR             R1, [SP,#0x20+var_20]
7806A:  ADDS            R5, R0, #4
7806C:  LDRB            R1, [R2]
7806E:  LDRD.W          R11, R9, [R2,#4]
78072:  ANDS.W          R3, R1, #1
78076:  ITT EQ
78078:  ADDEQ.W         R9, R2, #1
7807C:  MOVEQ.W         R11, R1,LSR#1
78080:  B               loc_7808C
78082:  LDR.W           R0, [R10]
78086:  CBZ             R0, loc_780FE
78088:  MOV             R5, R10
7808A:  MOV             R10, R0
7808C:  MOV             R0, R10
7808E:  MOV             R4, R11
78090:  LDRB.W          R2, [R0,#0x10]!
78094:  LDR.W           R8, [R0,#4]
78098:  ANDS.W          R1, R2, #1
7809C:  IT EQ
7809E:  MOVEQ.W         R8, R2,LSR#1
780A2:  CMP             R8, R11
780A4:  IT CC
780A6:  MOVCC           R4, R8
780A8:  CBZ             R4, loc_780C8
780AA:  LDR.W           R6, [R10,#0x18]
780AE:  CMP             R1, #0
780B0:  IT EQ
780B2:  ADDEQ           R6, R0, #1
780B4:  MOV             R0, R9; s1
780B6:  MOV             R1, R6; s2
780B8:  MOV             R2, R4; n
780BA:  BLX             memcmp
780BE:  CBZ             R0, loc_780CE
780C0:  CMP.W           R0, #0xFFFFFFFF
780C4:  BLE             loc_78082
780C6:  B               loc_780D2
780C8:  CMP             R11, R8
780CA:  BCC             loc_78082
780CC:  B               loc_780E6
780CE:  CMP             R11, R8
780D0:  BCC             loc_78082
780D2:  MOV             R0, R6; s1
780D4:  MOV             R1, R9; s2
780D6:  MOV             R2, R4; n
780D8:  BLX             memcmp
780DC:  CBZ             R0, loc_780E6
780DE:  CMP.W           R0, #0xFFFFFFFF
780E2:  BLE             loc_780EA
780E4:  B               loc_780F6
780E6:  CMP             R8, R11
780E8:  BCS             loc_780F6
780EA:  MOV             R5, R10
780EC:  LDR.W           R0, [R5,#4]!
780F0:  CBZ             R0, loc_780F6
780F2:  MOV             R10, R5
780F4:  B               loc_78088
780F6:  LDR             R0, [SP,#0x20+var_20]
780F8:  B               loc_78102
780FA:  STR             R5, [R1]
780FC:  B               loc_78106
780FE:  LDR             R0, [SP,#0x20+var_20]
78100:  MOV             R5, R10
78102:  STR.W           R10, [R0]
78106:  MOV             R0, R5
78108:  ADD             SP, SP, #4
7810A:  POP.W           {R8-R11}
7810E:  POP             {R4-R7,PC}
