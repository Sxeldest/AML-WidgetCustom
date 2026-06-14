; =========================================================
; Game Engine Function: sub_10421C
; Address            : 0x10421C - 0x1042BE
; =========================================================

10421C:  PUSH            {R4,R5,R7,LR}
10421E:  ADD             R7, SP, #8
104220:  SUB             SP, SP, #0x40
104222:  MOV             R4, R0
104224:  LDR             R0, [R0,#8]
104226:  MOV             R5, R1
104228:  BL              sub_1082F4
10422C:  CMP             R0, #0
10422E:  BEQ             loc_1042BA
104230:  LDR             R2, [R4,#0x54]
104232:  CBZ             R5, loc_104286
104234:  CBZ             R2, loc_10423A
104236:  SUBS            R0, R2, #1
104238:  STR             R0, [R4,#0x54]
10423A:  LDR             R0, =(unk_B36D6 - 0x104246)
10423C:  MOVS            R2, #1
10423E:  LDRB.W          R1, [R4,#0x60]
104242:  ADD             R0, PC; unk_B36D6
104244:  BL              sub_107188
104248:  LDR             R1, [R4,#8]
10424A:  MOVS            R2, #0
10424C:  LDR             R0, =(unk_B36EA - 0x104252)
10424E:  ADD             R0, PC; unk_B36EA
104250:  BL              sub_107188
104254:  LDR             R0, [R4,#0x5C]
104256:  CBZ             R0, loc_104260
104258:  LDRB.W          R0, [R0,#0x485]
10425C:  LSLS            R0, R0, #0x1F
10425E:  BNE             loc_104274
104260:  MOV             R1, SP
104262:  MOV             R0, R4
104264:  BL              sub_F8910
104268:  LDR             R0, [R4]
10426A:  ADD             R3, SP, #0x48+var_18
10426C:  LDM             R3, {R1-R3}
10426E:  LDR             R5, [R0,#0x10]
104270:  MOV             R0, R4
104272:  BLX             R5
104274:  LDR             R0, =(off_234970 - 0x10427A)
104276:  ADD             R0, PC; off_234970
104278:  LDR             R0, [R0]; dword_23DEF0
10427A:  LDR             R0, [R0]
10427C:  CBZ             R0, loc_1042BA
10427E:  MOVS            R1, #1
104280:  BL              sub_F97A8
104284:  B               loc_1042BA
104286:  LDR             R0, =(unk_B36D6 - 0x104292)
104288:  ADDS            R2, #1
10428A:  LDRB.W          R1, [R4,#0x60]
10428E:  ADD             R0, PC; unk_B36D6
104290:  STR             R2, [R4,#0x54]
104292:  MOVS            R2, #0
104294:  BL              sub_107188
104298:  LDR             R1, [R4,#8]
10429A:  MOVS            R2, #1
10429C:  LDR             R0, =(unk_B36EA - 0x1042A2)
10429E:  ADD             R0, PC; unk_B36EA
1042A0:  BL              sub_107188
1042A4:  LDR             R0, =(off_234970 - 0x1042AA)
1042A6:  ADD             R0, PC; off_234970
1042A8:  LDR             R0, [R0]; dword_23DEF0
1042AA:  LDR             R0, [R0]
1042AC:  CBZ             R0, loc_1042BA
1042AE:  MOVS            R1, #0
1042B0:  ADD             SP, SP, #0x40 ; '@'
1042B2:  POP.W           {R4,R5,R7,LR}
1042B6:  B.W             sub_F97A8
1042BA:  ADD             SP, SP, #0x40 ; '@'
1042BC:  POP             {R4,R5,R7,PC}
