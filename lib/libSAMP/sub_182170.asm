; =========================================================
; Game Engine Function: sub_182170
; Address            : 0x182170 - 0x1821B6
; =========================================================

182170:  PUSH            {R4,R5,R7,LR}
182172:  ADD             R7, SP, #8
182174:  CBZ             R1, locret_182192
182176:  MOV             R4, R0
182178:  LDR.W           R0, [R0,#0x384]
18217C:  CBZ             R0, locret_182192
18217E:  LDR.W           R2, [R4,#0x380]
182182:  MOVS            R5, #0
182184:  LDR.W           R3, [R2,R5,LSL#2]
182188:  CMP             R3, R1
18218A:  BEQ             loc_182194
18218C:  ADDS            R5, #1
18218E:  CMP             R0, R5
182190:  BNE             loc_182184
182192:  POP             {R4,R5,R7,PC}
182194:  ADDS            R0, R5, #1
182196:  BEQ             locret_182192
182198:  LDR             R0, [R1]
18219A:  LDR             R2, [R0,#4]
18219C:  MOV             R0, R1
18219E:  MOV             R1, R4
1821A0:  BLX             R2
1821A2:  LDRD.W          R0, R1, [R4,#0x380]
1821A6:  SUBS            R1, #1
1821A8:  STR.W           R1, [R4,#0x384]
1821AC:  LDR.W           R2, [R0,R1,LSL#2]
1821B0:  STR.W           R2, [R0,R5,LSL#2]
1821B4:  POP             {R4,R5,R7,PC}
