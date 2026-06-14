; =========================================================
; Game Engine Function: mpg123_fmt_support
; Address            : 0x22503A - 0x2251C4
; =========================================================

22503A:  MOVW            R3, #0x5621
22503E:  CMP             R1, R3
225040:  BLE             loc_225066
225042:  CMP.W           R1, #0x7D00
225046:  BLT             loc_225088
225048:  BEQ             loc_2250BE
22504A:  MOVW            R3, #0xAC44
22504E:  CMP             R1, R3
225050:  BEQ             loc_2250F6
225052:  MOVW            R3, #0xBB80
225056:  CMP             R1, R3
225058:  BNE             loc_225148
22505A:  MOV.W           R12, #8
22505E:  CMP.W           R2, #0x200
225062:  BGE             loc_2250C8
225064:  B               loc_225100
225066:  MOVW            R3, #0x2EDF
22506A:  CMP             R1, R3
22506C:  BGT             loc_2250A4
22506E:  CMP.W           R1, #0x1F40
225072:  BEQ             loc_225124
225074:  MOVW            R3, #0x2B11
225078:  CMP             R1, R3
22507A:  BNE             loc_225148
22507C:  MOV.W           R12, #1
225080:  CMP.W           R2, #0x200
225084:  BGE             loc_2250C8
225086:  B               loc_225100
225088:  MOVW            R3, #0x5622
22508C:  CMP             R1, R3
22508E:  BEQ             loc_225130
225090:  MOVW            R3, #0x5DC0
225094:  CMP             R1, R3
225096:  BNE             loc_225148
225098:  MOV.W           R12, #5
22509C:  CMP.W           R2, #0x200
2250A0:  BGE             loc_2250C8
2250A2:  B               loc_225100
2250A4:  MOVW            R3, #0x2EE0
2250A8:  CMP             R1, R3
2250AA:  BEQ             loc_22513C
2250AC:  CMP.W           R1, #0x3E80
2250B0:  BNE             loc_225148
2250B2:  MOV.W           R12, #3
2250B6:  CMP.W           R2, #0x200
2250BA:  BGE             loc_2250C8
2250BC:  B               loc_225100
2250BE:  MOV.W           R12, #6
2250C2:  CMP.W           R2, #0x200
2250C6:  BLT             loc_225100
2250C8:  CMP.W           R2, #0x2100
2250CC:  BGE             loc_2250E4
2250CE:  CMP.W           R2, #0x200
2250D2:  BEQ             loc_225162
2250D4:  CMP.W           R2, #0x400
2250D8:  BEQ             loc_225166
2250DA:  CMP.W           R2, #0x1180
2250DE:  BNE             loc_225182
2250E0:  MOVS            R2, #2
2250E2:  B               loc_225186
2250E4:  BEQ             loc_22516A
2250E6:  CMP.W           R2, #0x5080
2250EA:  BEQ             loc_22516E
2250EC:  CMP.W           R2, #0x6000
2250F0:  BNE             loc_225182
2250F2:  MOVS            R2, #5
2250F4:  B               loc_225186
2250F6:  MOV.W           R12, #7
2250FA:  CMP.W           R2, #0x200
2250FE:  BGE             loc_2250C8
225100:  CMP             R2, #0x5F ; '_'
225102:  BGT             loc_225114
225104:  CMP             R2, #1
225106:  BEQ             loc_225172
225108:  CMP             R2, #4
22510A:  BEQ             loc_225176
22510C:  CMP             R2, #8
22510E:  BNE             loc_225182
225110:  MOVS            R2, #0xB
225112:  B               loc_225186
225114:  CMP             R2, #0x60 ; '`'
225116:  BEQ             loc_22517A
225118:  CMP             R2, #0x82
22511A:  BEQ             loc_22517E
22511C:  CMP             R2, #0xD0
22511E:  BNE             loc_225182
225120:  MOVS            R2, #0
225122:  B               loc_225186
225124:  MOV.W           R12, #0
225128:  CMP.W           R2, #0x200
22512C:  BGE             loc_2250C8
22512E:  B               loc_225100
225130:  MOV.W           R12, #4
225134:  CMP.W           R2, #0x200
225138:  BGE             loc_2250C8
22513A:  B               loc_225100
22513C:  MOV.W           R12, #2
225140:  CMP.W           R2, #0x200
225144:  BGE             loc_2250C8
225146:  B               loc_225100
225148:  CMP             R0, #0
22514A:  ITT NE
22514C:  LDRNE           R3, [R0,#8]
22514E:  CMPNE           R3, #0
225150:  BEQ             loc_2251B6
225152:  CMP             R3, R1
225154:  BNE             loc_2251B6
225156:  MOV.W           R12, #9
22515A:  CMP.W           R2, #0x200
22515E:  BGE             loc_2250C8
225160:  B               loc_225100
225162:  MOVS            R2, #6
225164:  B               loc_225186
225166:  MOVS            R2, #7
225168:  B               loc_225186
22516A:  MOVS            R2, #3
22516C:  B               loc_225186
22516E:  MOVS            R2, #4
225170:  B               loc_225186
225172:  MOVS            R2, #9
225174:  B               loc_225186
225176:  MOVS            R2, #0xA
225178:  B               loc_225186
22517A:  MOVS            R2, #1
22517C:  B               loc_225186
22517E:  MOVS            R2, #8
225180:  B               loc_225186
225182:  MOV.W           R2, #0xFFFFFFFF
225186:  MOVS            R1, #0
225188:  CBZ             R0, loc_2251B2
22518A:  ORR.W           R3, R2, R12
22518E:  CMP             R3, #0
225190:  BLT             loc_2251B2
225192:  ADD.W           R1, R12, R12,LSL#1
225196:  ADD.W           R0, R0, R1,LSL#2
22519A:  ADD             R0, R2
22519C:  LDRB.W          R1, [R0,#0x20]
2251A0:  LDRB.W          R0, [R0,#0x98]
2251A4:  CMP             R1, #0
2251A6:  IT NE
2251A8:  MOVNE           R1, #1
2251AA:  CMP             R0, #0
2251AC:  IT NE
2251AE:  ORRNE.W         R1, R1, #2
2251B2:  MOV             R0, R1
2251B4:  BX              LR
2251B6:  MOV.W           R12, #0xFFFFFFFF
2251BA:  CMP.W           R2, #0x200
2251BE:  BGE.W           loc_2250C8
2251C2:  B               loc_225100
