; =========================================================
; Game Engine Function: sub_148134
; Address            : 0x148134 - 0x14818C
; =========================================================

148134:  PUSH            {R4,R5,R7,LR}
148136:  ADD             R7, SP, #8
148138:  MOV             R4, R0
14813A:  LDR             R0, [R0]
14813C:  CMP             R0, #1
14813E:  BEQ             loc_14814E
148140:  CMP             R0, #2
148142:  BNE             loc_148156
148144:  MOV             R0, R4
148146:  MOVS            R1, #1
148148:  BL              sub_147F30
14814C:  B               loc_148156
14814E:  MOV             R0, R4
148150:  MOVS            R1, #1
148152:  BL              sub_148084
148156:  LDR             R0, =(off_234A24 - 0x148166)
148158:  MOVW            R1, #0xFFFF
14815C:  STRH            R1, [R4,#8]
14815E:  MOV.W           R1, #0xFFFFFFFF
148162:  ADD             R0, PC; off_234A24
148164:  STR             R1, [R4,#4]
148166:  LDR             R0, [R0]; dword_23DEEC
148168:  LDR             R0, [R0]
14816A:  LDR.W           R5, [R0,#0x84]
14816E:  MOVS            R0, #0
148170:  STR             R0, [R4]
148172:  LDRB.W          R0, [R5,#0x50]
148176:  CMP             R0, #1
148178:  BEQ             loc_148184
14817A:  LDR             R0, [R5]
14817C:  MOVS            R1, #1
14817E:  LDR             R2, [R0,#0x24]
148180:  MOV             R0, R5
148182:  BLX             R2
148184:  MOVS            R0, #1
148186:  STRB.W          R0, [R5,#0x50]
14818A:  POP             {R4,R5,R7,PC}
