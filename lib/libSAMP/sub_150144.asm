; =========================================================
; Game Engine Function: sub_150144
; Address            : 0x150144 - 0x15018E
; =========================================================

150144:  PUSH            {R4-R7,LR}
150146:  ADD             R7, SP, #0xC
150148:  PUSH.W          {R8}
15014C:  MOV             R4, R0
15014E:  LSRS            R0, R1, #4
150150:  CMP             R0, #0x7C ; '|'
150152:  BHI             loc_150188
150154:  MOV             R0, R4
150156:  MOV             R8, R3
150158:  MOV             R5, R2
15015A:  MOV             R6, R1
15015C:  BL              sub_F2396
150160:  CBZ             R0, loc_150188
150162:  LDR.W           R0, [R4,R6,LSL#2]
150166:  CBZ             R0, loc_150188
150168:  ADDS            R1, R4, R6
15016A:  MOVW            R2, #0x9C40
15016E:  LDRB            R1, [R1,R2]
150170:  CBZ             R1, loc_150188
150172:  CBZ             R5, loc_15017A
150174:  MOVS            R1, #1
150176:  STRH.W          R1, [R0,#0x23]
15017A:  MOV             R1, R8
15017C:  POP.W           {R8}
150180:  POP.W           {R4-R7,LR}
150184:  B.W             sub_109FFC
150188:  POP.W           {R8}
15018C:  POP             {R4-R7,PC}
