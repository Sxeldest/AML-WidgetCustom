; =========================================================
; Game Engine Function: sub_106138
; Address            : 0x106138 - 0x10618C
; =========================================================

106138:  PUSH            {R4,R5,R7,LR}
10613A:  ADD             R7, SP, #8
10613C:  MOV             R5, R0
10613E:  LDR             R0, [R1,#4]
106140:  MOV             R4, R1
106142:  CBZ             R0, loc_106150
106144:  LDR             R1, [R4]
106146:  ADD             R0, R1
106148:  LDRB.W          R0, [R0,#-1]
10614C:  CMP             R0, #0x5D ; ']'
10614E:  BEQ             loc_10615C
106150:  LDR             R1, =(asc_4B4F4 - 0x106158); " " ...
106152:  MOV             R0, R4
106154:  ADD             R1, PC; " "
106156:  ADDS            R2, R1, #1
106158:  BL              sub_FFB40
10615C:  LDR             R1, =(asc_4B103 - 0x106164); "[" ...
10615E:  MOV             R0, R4
106160:  ADD             R1, PC; "["
106162:  ADDS            R2, R1, #1
106164:  BL              sub_FFB40
106168:  LDR             R0, [R5,#0xC]
10616A:  CBZ             R0, loc_106172
10616C:  MOV             R1, R4
10616E:  BL              sub_FE074
106172:  LDR             R1, =(asc_4D740 - 0x10617A); "]" ...
106174:  MOV             R0, R4
106176:  ADD             R1, PC; "]"
106178:  ADDS            R2, R1, #1
10617A:  BL              sub_FFB40
10617E:  LDR             R0, [R5,#8]
106180:  LDR             R1, [R0]
106182:  LDR             R2, [R1,#0x14]
106184:  MOV             R1, R4
106186:  POP.W           {R4,R5,R7,LR}
10618A:  BX              R2
