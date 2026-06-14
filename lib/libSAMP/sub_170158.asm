; =========================================================
; Game Engine Function: sub_170158
; Address            : 0x170158 - 0x17018C
; =========================================================

170158:  PUSH            {R4,R5,R7,LR}
17015A:  ADD             R7, SP, #8
17015C:  MOV             R5, R0
17015E:  LDR             R0, =(dword_381B58 - 0x17016A)
170160:  MOV             R4, R1
170162:  MOVW            R1, #0x1D19
170166:  ADD             R0, PC; dword_381B58
170168:  LDR             R0, [R0]
17016A:  LDRB            R0, [R0,R1]
17016C:  CBZ             R0, loc_170174
17016E:  BL              sub_170010
170172:  B               loc_17017C
170174:  MOVS            R0, #0
170176:  MOVS            R1, #1
170178:  BL              sub_1700C4
17017C:  MOV             R0, R5
17017E:  MOV             R1, R4
170180:  BL              sub_17AD1C
170184:  POP.W           {R4,R5,R7,LR}
170188:  B.W             sub_16E36C
