; =========================================================
; Game Engine Function: sub_108138
; Address            : 0x108138 - 0x108190
; =========================================================

108138:  PUSH            {R4,R6,R7,LR}
10813A:  ADD             R7, SP, #8
10813C:  LDR             R0, [R1,#4]
10813E:  MOVS            R4, #1
108140:  STRB.W          R4, [R1,#0x35]
108144:  CMP             R0, R3
108146:  BEQ             loc_10814A
108148:  POP             {R4,R6,R7,PC}
10814A:  LDR             R3, [R1,#0x10]
10814C:  LDR             R0, [R7,#arg_0]
10814E:  STRB.W          R4, [R1,#0x34]
108152:  CBZ             R3, loc_108160
108154:  CMP             R3, R2
108156:  BEQ             loc_108174
108158:  LDR             R0, [R1,#0x24]
10815A:  ADDS            R0, #1
10815C:  STR             R0, [R1,#0x24]
10815E:  B               loc_108188
108160:  MOVS            R3, #1
108162:  STR             R0, [R1,#0x18]
108164:  CMP             R0, #1
108166:  STR             R3, [R1,#0x24]
108168:  STR             R2, [R1,#0x10]
10816A:  BNE             locret_108148
10816C:  LDR             R0, [R1,#0x30]
10816E:  CMP             R0, #1
108170:  BEQ             loc_108188
108172:  B               locret_108148
108174:  LDR             R2, [R1,#0x18]
108176:  CMP             R2, #2
108178:  ITT EQ
10817A:  STREQ           R0, [R1,#0x18]
10817C:  MOVEQ           R2, R0
10817E:  LDR             R0, [R1,#0x30]
108180:  CMP             R0, #1
108182:  BNE             locret_108148
108184:  CMP             R2, #1
108186:  BNE             locret_108148
108188:  MOVS            R0, #1
10818A:  STRB.W          R0, [R1,#0x36]
10818E:  POP             {R4,R6,R7,PC}
