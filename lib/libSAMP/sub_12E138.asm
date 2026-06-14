; =========================================================
; Game Engine Function: sub_12E138
; Address            : 0x12E138 - 0x12E190
; =========================================================

12E138:  PUSH            {R4-R7,LR}
12E13A:  ADD             R7, SP, #0xC
12E13C:  PUSH.W          {R11}
12E140:  MOV             R6, R0
12E142:  MOVS            R0, #0
12E144:  MOV             R5, R1
12E146:  STR             R0, [R6]
12E148:  STR             R0, [R6,#4]
12E14A:  LDR             R1, [R1]
12E14C:  LDR             R2, [R5,#4]
12E14E:  STR             R0, [R6,#8]
12E150:  SUBS            R0, R2, R1
12E152:  BEQ             loc_12E188
12E154:  ASRS            R1, R0, #3
12E156:  MOV             R0, R6
12E158:  BL              sub_12E19A
12E15C:  LDRD.W          R1, R2, [R5]
12E160:  LDR             R0, [R6,#4]
12E162:  CMP             R1, R2
12E164:  BEQ             loc_12E186
12E166:  LDRD.W          R5, R3, [R1]
12E16A:  STRD.W          R5, R3, [R0]
12E16E:  CBZ             R3, loc_12E180
12E170:  ADDS            R3, #4
12E172:  LDREX.W         R5, [R3]
12E176:  ADDS            R5, #1
12E178:  STREX.W         R4, R5, [R3]
12E17C:  CMP             R4, #0
12E17E:  BNE             loc_12E172
12E180:  ADDS            R0, #8
12E182:  ADDS            R1, #8
12E184:  B               loc_12E162
12E186:  STR             R0, [R6,#4]
12E188:  MOV             R0, R6
12E18A:  POP.W           {R11}
12E18E:  POP             {R4-R7,PC}
