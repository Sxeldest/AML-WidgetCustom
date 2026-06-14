; =========================================================
; Game Engine Function: sub_47E110
; Address            : 0x47E110 - 0x47E1CC
; =========================================================

47E110:  PUSH            {R4-R7,LR}
47E112:  ADD             R7, SP, #0xC
47E114:  PUSH.W          {R8,R9,R11}
47E118:  MOV             R8, R0
47E11A:  LDR.W           R9, [R8,#0x18]
47E11E:  LDRD.W          R6, R4, [R9]
47E122:  CBNZ            R4, loc_47E144
47E124:  B               loc_47E176
47E126:  LDR.W           R6, [R9]
47E12A:  LDR.W           R4, [R9,#4]
47E12E:  B               loc_47E144
47E130:  LDR.W           R1, [R8,#0x194]
47E134:  CMP             R5, #0
47E136:  LDR             R0, [R1,#0x14]
47E138:  BNE             loc_47E18A
47E13A:  ADDS            R0, #2
47E13C:  STR             R0, [R1,#0x14]
47E13E:  STRD.W          R6, R4, [R9]
47E142:  CBZ             R4, loc_47E176
47E144:  LDRB.W          R0, [R6],#1
47E148:  SUBS            R4, #1
47E14A:  CMP             R0, #0xFF
47E14C:  BEQ             loc_47E15A
47E14E:  LDR.W           R0, [R8,#0x194]
47E152:  LDR             R1, [R0,#0x14]
47E154:  ADDS            R1, #1
47E156:  STR             R1, [R0,#0x14]
47E158:  B               loc_47E13E
47E15A:  CBNZ            R4, loc_47E16A
47E15C:  LDR.W           R1, [R9,#0xC]
47E160:  MOV             R0, R8
47E162:  BLX             R1
47E164:  CBZ             R0, loc_47E182
47E166:  LDRD.W          R6, R4, [R9]
47E16A:  LDRB.W          R5, [R6],#1
47E16E:  SUBS            R4, #1
47E170:  CMP             R5, #0xFF
47E172:  BEQ             loc_47E15A
47E174:  B               loc_47E130
47E176:  LDR.W           R1, [R9,#0xC]
47E17A:  MOV             R0, R8
47E17C:  BLX             R1
47E17E:  CMP             R0, #0
47E180:  BNE             loc_47E126
47E182:  MOVS            R0, #0
47E184:  POP.W           {R8,R9,R11}
47E188:  POP             {R4-R7,PC}
47E18A:  CBZ             R0, loc_47E1BC
47E18C:  LDR.W           R0, [R8]
47E190:  MOVS            R1, #0x74 ; 't'
47E192:  STR             R1, [R0,#0x14]
47E194:  LDR.W           R1, [R8,#0x194]
47E198:  LDR.W           R0, [R8]
47E19C:  LDR             R1, [R1,#0x14]
47E19E:  STR             R1, [R0,#0x18]
47E1A0:  MOV.W           R1, #0xFFFFFFFF
47E1A4:  LDR.W           R0, [R8]
47E1A8:  STR             R5, [R0,#0x1C]
47E1AA:  LDR.W           R0, [R8]
47E1AE:  LDR             R2, [R0,#4]
47E1B0:  MOV             R0, R8
47E1B2:  BLX             R2
47E1B4:  LDR.W           R0, [R8,#0x194]
47E1B8:  MOVS            R1, #0
47E1BA:  STR             R1, [R0,#0x14]
47E1BC:  STR.W           R5, [R8,#0x17C]
47E1C0:  MOVS            R0, #1
47E1C2:  STRD.W          R6, R4, [R9]
47E1C6:  POP.W           {R8,R9,R11}
47E1CA:  POP             {R4-R7,PC}
