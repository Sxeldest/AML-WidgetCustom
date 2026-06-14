; =========================================================
; Game Engine Function: _ZN16CStreamedScripts22ReadStreamedScriptDataEv
; Address            : 0x335308 - 0x3353CE
; =========================================================

335308:  PUSH            {R4-R7,LR}
33530A:  ADD             R7, SP, #0xC
33530C:  PUSH.W          {R8-R11}
335310:  SUB             SP, SP, #0x1C
335312:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x33531A)
335314:  LDR             R1, =(__stack_chk_guard_ptr - 0x33531C)
335316:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
335318:  ADD             R1, PC; __stack_chk_guard_ptr
33531A:  LDR             R3, [R2]; CTheScripts::ScriptSpace ...
33531C:  LDR             R1, [R1]; __stack_chk_guard
33531E:  LDR.W           R2, [R3,#(dword_7BD797 - 0x7BD794)]
335322:  LDR             R1, [R1]
335324:  STR             R1, [SP,#0x38+var_20]
335326:  ADDS            R1, R3, R2
335328:  LDRH.W          R4, [R0,#0xA44]
33532C:  MOV             R2, R0
33532E:  LDR.W           R1, [R1,#3]
335332:  CMP             R4, #0
335334:  STR             R2, [SP,#0x38+var_38]
335336:  ADD             R1, R3
335338:  LDR.W           R1, [R1,#3]
33533C:  ADD             R3, R1
33533E:  LDR             R1, [R3,#8]
335340:  STR.W           R1, [R0,#0xA40]
335344:  BEQ             loc_3353B4
335346:  LDR             R0, [SP,#0x38+var_38]
335348:  ADD.W           R5, R3, #0x10
33534C:  ADD.W           R10, SP, #0x38+var_34
335350:  MOV.W           R11, #0
335354:  ADD.W           R9, R0, #8
335358:  MOV             R0, R5
33535A:  MOV             R1, R10
33535C:  VLD1.8          {D16-D17}, [R0]!
335360:  MOV.W           R8, #0
335364:  MOV             R6, R9
335366:  VST1.8          {D16-D17}, [R1]!
33536A:  LDRB            R0, [R0]
33536C:  STRB            R0, [R1]
33536E:  LDRB            R0, [R5,#0x11]
335370:  STRB.W          R0, [SP,#0x38+var_23]
335374:  LDRB            R0, [R5,#0x12]
335376:  STRB.W          R0, [SP,#0x38+var_22]
33537A:  LDRB            R0, [R5,#0x13]
33537C:  STRB.W          R0, [SP,#0x38+var_21]
335380:  MOV             R0, R6; char *
335382:  MOV             R1, R10; char *
335384:  BLX             strcasecmp
335388:  CBZ             R0, loc_335398
33538A:  ADD.W           R8, R8, #1
33538E:  ADDS            R6, #0x20 ; ' '
335390:  CMP             R8, R4
335392:  BLT             loc_335380
335394:  MOV.W           R8, #0xFFFFFFFF
335398:  LDR             R0, [SP,#0x38+var_38]
33539A:  LDR             R1, [R5,#0x18]
33539C:  ADDS            R5, #0x1C
33539E:  ADD.W           R0, R0, R8,LSL#5
3353A2:  STRH.W          R11, [R0,#6]
3353A6:  ADD.W           R11, R11, #1
3353AA:  STR             R1, [R0,#0x1C]
3353AC:  UXTH.W          R0, R11
3353B0:  CMP             R0, R4
3353B2:  BCC             loc_335358
3353B4:  LDR             R0, =(__stack_chk_guard_ptr - 0x3353BC)
3353B6:  LDR             R1, [SP,#0x38+var_20]
3353B8:  ADD             R0, PC; __stack_chk_guard_ptr
3353BA:  LDR             R0, [R0]; __stack_chk_guard
3353BC:  LDR             R0, [R0]
3353BE:  SUBS            R0, R0, R1
3353C0:  ITTT EQ
3353C2:  ADDEQ           SP, SP, #0x1C
3353C4:  POPEQ.W         {R8-R11}
3353C8:  POPEQ           {R4-R7,PC}
3353CA:  BLX             __stack_chk_fail
