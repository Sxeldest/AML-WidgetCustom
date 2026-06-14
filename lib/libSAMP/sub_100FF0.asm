; =========================================================
; Game Engine Function: sub_100FF0
; Address            : 0x100FF0 - 0x101082
; =========================================================

100FF0:  PUSH            {R4-R7,LR}
100FF2:  ADD             R7, SP, #0xC
100FF4:  PUSH.W          {R8,R9,R11}
100FF8:  MOV             R4, R0
100FFA:  LDR             R0, =(off_234A6C - 0x101000)
100FFC:  ADD             R0, PC; off_234A6C
100FFE:  LDR             R5, [R0]; dword_2402D0
101000:  LDR             R0, [R4,#4]
101002:  LDR             R1, [R5]
101004:  LDRB            R0, [R0]
101006:  LDRB.W          R8, [R1]
10100A:  BL              sub_F8224
10100E:  LDR             R1, =(off_234A70 - 0x101016)
101010:  LDR             R2, [R5]
101012:  ADD             R1, PC; off_234A70
101014:  LDR             R6, [R1]; dword_2402DC
101016:  STRB            R0, [R2]
101018:  LDR             R1, [R4,#4]
10101A:  LDR             R0, [R6]
10101C:  LDRH.W          R9, [R0]
101020:  LDRB            R0, [R1]
101022:  BL              sub_F8224
101026:  LDR             R1, [R6]
101028:  SUBS            R2, R0, #4
10102A:  IT NE
10102C:  MOVNE           R2, R0
10102E:  STRH            R2, [R1]
101030:  BL              sub_F82C8
101034:  LDR             R0, [R4,#4]
101036:  LDRB            R0, [R0]
101038:  BL              sub_F82F8
10103C:  BL              sub_F8280
101040:  LDR             R0, [R4,#4]
101042:  LDRB            R0, [R0]
101044:  BL              sub_F8230
101048:  BL              sub_F83C8
10104C:  LDR             R0, [R4,#4]
10104E:  LDRB            R0, [R0]
101050:  BL              sub_F8400
101054:  LDR             R0, =(dword_247514 - 0x10105C)
101056:  LDR             R2, [R4,#8]
101058:  ADD             R0, PC; dword_247514
10105A:  LDR             R1, [R0]
10105C:  LDR             R0, [R2]
10105E:  BL              sub_126C48
101062:  BL              sub_F8390
101066:  LDR             R0, [R5]
101068:  STRB.W          R8, [R0]
10106C:  LDR             R0, [R6]
10106E:  STRH.W          R9, [R0]
101072:  BL              sub_F8298
101076:  POP.W           {R8,R9,R11}
10107A:  POP.W           {R4-R7,LR}
10107E:  B.W             sub_F8268
