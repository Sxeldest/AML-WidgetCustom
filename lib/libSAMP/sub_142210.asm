; =========================================================
; Game Engine Function: sub_142210
; Address            : 0x142210 - 0x142288
; =========================================================

142210:  PUSH            {R4,R5,R7,LR}
142212:  ADD             R7, SP, #8
142214:  SUB             SP, SP, #8
142216:  MOV             R4, R0
142218:  LDR             R0, =(off_234930 - 0x14221E)
14221A:  ADD             R0, PC; off_234930
14221C:  LDR             R0, [R0]; dword_23DF1C
14221E:  LDR             R0, [R0]
142220:  CMP             R0, #4
142222:  BNE             loc_142244
142224:  LDR             R0, =(dword_239034 - 0x14222A)
142226:  ADD             R0, PC; dword_239034
142228:  LDR             R1, [R0]
14222A:  CBNZ            R1, loc_142240
14222C:  LDRH            R1, [R0,#(word_239038 - 0x239034)]
14222E:  MOVW            R2, #0x3838
142232:  SUBS            R2, R2, R1
142234:  EOR.W           R1, R2, R1,LSL#2
142238:  MOVW            R2, #0x7627
14223C:  CMP             R1, R2
14223E:  BEQ             loc_142244
142240:  LDRB            R0, [R0,#(byte_23903A - 0x239034)]
142242:  CBZ             R0, loc_142284
142244:  LDR             R0, =(off_234A24 - 0x14224A)
142246:  ADD             R0, PC; off_234A24
142248:  LDR             R0, [R0]; dword_23DEEC
14224A:  LDR             R0, [R0]
14224C:  CBZ             R0, loc_142264
14224E:  LDR             R5, [R0,#0x60]
142250:  MOV             R0, SP; int
142252:  LDR             R1, =(unk_9020A - 0x14225A)
142254:  MOVS            R2, #0x31 ; '1'
142256:  ADD             R1, PC; unk_9020A ; s
142258:  BL              sub_F1E90
14225C:  LDR             R1, [SP,#0x10+var_10]
14225E:  MOV             R0, R5
142260:  BL              sub_12D5E8
142264:  LDR             R0, =(off_234A1C - 0x14226A)
142266:  ADD             R0, PC; off_234A1C
142268:  LDR             R0, [R0]; dword_23DF04
14226A:  LDR             R0, [R0]
14226C:  CBZ             R0, loc_142274
14226E:  MOVS            R1, #1
142270:  BL              sub_E317C
142274:  LDR.W           R0, [R4,#0x210]
142278:  MOVS            R2, #0
14227A:  LDR             R1, [R0]
14227C:  LDR             R3, [R1,#0xC]
14227E:  MOV.W           R1, #0x7D0
142282:  BLX             R3
142284:  ADD             SP, SP, #8
142286:  POP             {R4,R5,R7,PC}
