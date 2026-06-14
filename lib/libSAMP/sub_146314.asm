; =========================================================
; Game Engine Function: sub_146314
; Address            : 0x146314 - 0x146386
; =========================================================

146314:  PUSH            {R7,LR}
146316:  MOV             R7, SP
146318:  SUB             SP, SP, #0x118
14631A:  LDRD.W          R1, R0, [R0]; src
14631E:  MOVS            R3, #0
146320:  ASRS            R2, R0, #0x1F
146322:  ADD.W           R0, R0, R2,LSR#29
146326:  MOVS            R2, #1
146328:  ADD.W           R2, R2, R0,ASR#3; size
14632C:  ADD             R0, SP, #0x120+var_11C; int
14632E:  BL              sub_17D4F2
146332:  ADD.W           R1, SP, #0x120+var_11D; int
146336:  MOVS            R2, #8
146338:  MOVS            R3, #1
14633A:  BL              sub_17D786
14633E:  ADD             R0, SP, #0x120+var_11C; int
146340:  ADD.W           R1, SP, #0x120+var_11E; int
146344:  MOVS            R2, #8
146346:  MOVS            R3, #1
146348:  BL              sub_17D786
14634C:  LDR             R0, =(off_234970 - 0x146356)
14634E:  LDRB.W          R1, [SP,#0x120+var_11D]
146352:  ADD             R0, PC; off_234970
146354:  LDRB.W          R2, [SP,#0x120+var_11E]
146358:  LDR             R0, [R0]; dword_23DEF0
14635A:  LDR             R0, [R0]
14635C:  BL              sub_F948C
146360:  LDR             R0, =(off_23496C - 0x14636A)
146362:  LDRB.W          R1, [SP,#0x120+var_11D]
146366:  ADD             R0, PC; off_23496C
146368:  LDRB.W          R2, [SP,#0x120+var_11E]
14636C:  LDR             R0, [R0]; dword_23DEF4
14636E:  LDR             R0, [R0]
146370:  LDR.W           R0, [R0,#0x20C]
146374:  STRB.W          R1, [R0,#0x25]
146378:  STRB.W          R2, [R0,#0x26]
14637C:  ADD             R0, SP, #0x120+var_11C
14637E:  BL              sub_17D542
146382:  ADD             SP, SP, #0x118
146384:  POP             {R7,PC}
