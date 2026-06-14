; =========================================================
; Game Engine Function: sub_14229C
; Address            : 0x14229C - 0x142374
; =========================================================

14229C:  PUSH            {R4-R7,LR}
14229E:  ADD             R7, SP, #0xC
1422A0:  PUSH.W          {R8}
1422A4:  SUB             SP, SP, #0x10
1422A6:  MOV             R4, R0
1422A8:  LDR.W           R0, [R0,#0x210]
1422AC:  CBZ             R0, loc_1422B8
1422AE:  LDR             R1, [R0]
1422B0:  MOVS            R2, #0
1422B2:  LDR             R3, [R1,#0xC]
1422B4:  MOVS            R1, #0
1422B6:  BLX             R3
1422B8:  LDR             R0, =(off_234A24 - 0x1422BE)
1422BA:  ADD             R0, PC; off_234A24
1422BC:  LDR             R0, [R0]; dword_23DEEC
1422BE:  LDR             R0, [R0]
1422C0:  CBZ             R0, loc_1422E6
1422C2:  LDR             R5, [R0,#0x60]
1422C4:  MOVS            R2, #0
1422C6:  LDR             R0, =(unk_8A5D2 - 0x1422CC)
1422C8:  ADD             R0, PC; unk_8A5D2
1422CA:  ADDS            R1, R0, R2
1422CC:  ADDS            R2, #1
1422CE:  LDRB            R1, [R1,#1]
1422D0:  CMP             R1, #0
1422D2:  BNE             loc_1422CA
1422D4:  LDR             R1, =(unk_8A5D2 - 0x1422DC)
1422D6:  ADD             R0, SP, #0x20+var_1C; int
1422D8:  ADD             R1, PC; unk_8A5D2 ; s
1422DA:  BL              sub_F1E90
1422DE:  LDR             R1, [SP,#0x20+var_1C]
1422E0:  MOV             R0, R5
1422E2:  BL              sub_12D5E8
1422E6:  MOV             R0, R4
1422E8:  BL              sub_143388
1422EC:  LDR.W           R0, [R4,#0x3B0]
1422F0:  LDR             R5, [R0]
1422F2:  CBZ             R5, loc_142310
1422F4:  MOVS            R6, #0
1422F6:  ADDS            R0, R5, R6
1422F8:  LDRB.W          R0, [R0,#0xFB4]
1422FC:  CBZ             R0, loc_142308
1422FE:  UXTH            R1, R6
142300:  MOV             R0, R5
142302:  MOVS            R2, #0
142304:  BL              sub_148CAE
142308:  ADDS            R6, #1
14230A:  CMP.W           R6, #0x3EC
14230E:  BNE             loc_1422F6
142310:  MOVW            R0, #0x13BC
142314:  MOVS            R1, #1
142316:  LDR             R0, [R5,R0]
142318:  LDR             R0, [R0,#0x1C]
14231A:  BL              sub_10421C
14231E:  LDR             R0, =(off_234A1C - 0x142324)
142320:  ADD             R0, PC; off_234A1C
142322:  LDR             R0, [R0]; dword_23DF04
142324:  LDR             R0, [R0]
142326:  CBZ             R0, loc_14232E
142328:  MOVS            R1, #1
14232A:  BL              sub_E317C
14232E:  LDR             R0, =(off_2349A8 - 0x142334)
142330:  ADD             R0, PC; off_2349A8
142332:  LDR             R6, [R0]; dword_381BF4
142334:  LDR             R5, [R6]
142336:  CBZ             R5, loc_142366
142338:  LDR             R1, =(byte_8F794 - 0x142342)
14233A:  ADD.W           R8, SP, #0x20+var_1C
14233E:  ADD             R1, PC; byte_8F794 ; s
142340:  MOV             R0, R8; int
142342:  BL              sub_DC6DC
142346:  MOV             R0, R5
142348:  MOVS            R1, #0xFF
14234A:  MOVS            R2, #0xFF
14234C:  MOV             R3, R8
14234E:  BL              sub_17CAF8
142352:  LDRB.W          R0, [SP,#0x20+var_1C]
142356:  LSLS            R0, R0, #0x1F
142358:  ITT NE
14235A:  LDRNE           R0, [SP,#0x20+var_14]; void *
14235C:  BLXNE           j__ZdlPv; operator delete(void *)
142360:  LDR             R0, [R6]
142362:  BL              sub_17C270
142366:  MOVS            R0, #1
142368:  STR.W           R0, [R4,#0x218]
14236C:  ADD             SP, SP, #0x10
14236E:  POP.W           {R8}
142372:  POP             {R4-R7,PC}
