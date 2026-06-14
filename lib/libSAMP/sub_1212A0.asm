; =========================================================
; Game Engine Function: sub_1212A0
; Address            : 0x1212A0 - 0x121430
; =========================================================

1212A0:  PUSH            {R4-R7,LR}
1212A2:  ADD             R7, SP, #0xC
1212A4:  PUSH.W          {R8-R11}
1212A8:  SUB             SP, SP, #0x6C
1212AA:  MOV             R4, R0
1212AC:  LDR             R0, =(off_23494C - 0x1212B8)
1212AE:  LDR             R1, =(sub_1214B4+1 - 0x1212BC)
1212B0:  ADD.W           R10, SP, #0x88+var_68
1212B4:  ADD             R0, PC; off_23494C
1212B6:  MOV             R8, R4
1212B8:  ADD             R1, PC; sub_1214B4
1212BA:  MOV             R3, R4
1212BC:  LDR.W           R11, [R0]; dword_23DF24
1212C0:  MOVS            R0, #0
1212C2:  STR.W           R0, [R8,#4]!
1212C6:  LDR.W           R2, [R11]
1212CA:  STR             R2, [SP,#0x88+var_84]
1212CC:  MOVS            R2, #0
1212CE:  STR             R0, [R4]
1212D0:  MOV             R0, R10
1212D2:  BL              sub_121608
1212D6:  ADD             R5, SP, #0x88+var_50
1212D8:  MOV             R1, R10
1212DA:  MOV             R0, R5
1212DC:  BL              sub_1217F8
1212E0:  BL              sub_1217A0
1212E4:  LDR             R0, =(unk_263970 - 0x1212EA)
1212E6:  ADD             R0, PC; unk_263970
1212E8:  LDR.W           R9, [R0,#(dword_263980 - 0x263970)]
1212EC:  CMP.W           R9, #0
1212F0:  BNE             loc_121322
1212F2:  ADD             R6, SP, #0x88+var_50
1212F4:  ADD             R0, SP, #0x88+var_38
1212F6:  MOV             R1, R6
1212F8:  BL              sub_1217F8
1212FC:  BL              sub_1217A0
121300:  LDR             R0, =(unk_263970 - 0x121306)
121302:  ADD             R0, PC; unk_263970
121304:  ADD             R6, SP, #0x88+var_38
121306:  MOV             R1, R6
121308:  BL              sub_121824
12130C:  LDR             R0, [SP,#0x88+var_28]
12130E:  CMP             R6, R0
121310:  BEQ             loc_121318
121312:  CBZ             R0, loc_121322
121314:  MOVS            R1, #5
121316:  B               loc_12131A
121318:  MOVS            R1, #4
12131A:  LDR             R2, [R0]
12131C:  LDR.W           R1, [R2,R1,LSL#2]
121320:  BLX             R1
121322:  LDR             R0, [SP,#0x88+var_40]
121324:  CMP             R5, R0
121326:  BEQ             loc_12132E
121328:  CBZ             R0, loc_121338
12132A:  MOVS            R1, #5
12132C:  B               loc_121330
12132E:  MOVS            R1, #4
121330:  LDR             R2, [R0]
121332:  LDR.W           R1, [R2,R1,LSL#2]
121336:  BLX             R1
121338:  CMP.W           R9, #0
12133C:  BNE             loc_121354
12133E:  MOVW            R0, #0x4708
121342:  LDR             R1, [SP,#0x88+var_84]
121344:  MOVT            R0, #0x67 ; 'g'
121348:  ADD             R0, R1
12134A:  LDR             R1, =(sub_121774+1 - 0x121350)
12134C:  ADD             R1, PC; sub_121774
12134E:  MOV             R2, R4
121350:  BL              sub_164196
121354:  LDR             R0, [SP,#0x88+var_58]
121356:  CMP             R10, R0
121358:  BEQ             loc_121360
12135A:  CBZ             R0, loc_12136A
12135C:  MOVS            R1, #5
12135E:  B               loc_121362
121360:  MOVS            R1, #4
121362:  LDR             R2, [R0]
121364:  LDR.W           R1, [R2,R1,LSL#2]
121368:  BLX             R1
12136A:  CMP.W           R9, #0
12136E:  BEQ             loc_12137E
121370:  LDR             R1, =(aAxl - 0x12137A); "AXL" ...
121372:  MOVS            R0, #5; prio
121374:  LDR             R2, =(aFixCrashGetTex - 0x12137C); "fix_crash_get_texture: Can't hook get_t"... ...
121376:  ADD             R1, PC; "AXL"
121378:  ADD             R2, PC; "fix_crash_get_texture: Can't hook get_t"...
12137A:  BLX             __android_log_print
12137E:  LDR.W           R9, [R11]
121382:  ADD.W           R10, SP, #0x88+var_80
121386:  LDR             R1, =(sub_121644+1 - 0x121392)
121388:  MOVS            R2, #0
12138A:  MOV             R0, R10
12138C:  MOV             R3, R4
12138E:  ADD             R1, PC; sub_121644
121390:  BL              sub_12167C
121394:  ADD             R5, SP, #0x88+var_50
121396:  MOV             R1, R10
121398:  MOV             R0, R5
12139A:  BL              sub_11C010
12139E:  BL              sub_121A0C
1213A2:  LDR             R0, =(unk_263990 - 0x1213A8)
1213A4:  ADD             R0, PC; unk_263990
1213A6:  LDR.W           R11, [R0,#(dword_2639A0 - 0x263990)]
1213AA:  CMP.W           R11, #0
1213AE:  BNE             loc_1213E0
1213B0:  ADD             R6, SP, #0x88+var_50
1213B2:  ADD             R0, SP, #0x88+var_38
1213B4:  MOV             R1, R6
1213B6:  BL              sub_11C010
1213BA:  BL              sub_121A0C
1213BE:  LDR             R0, =(unk_263990 - 0x1213C4)
1213C0:  ADD             R0, PC; unk_263990
1213C2:  ADD             R6, SP, #0x88+var_38
1213C4:  MOV             R1, R6
1213C6:  BL              sub_11C03C
1213CA:  LDR             R0, [SP,#0x88+var_28]
1213CC:  CMP             R6, R0
1213CE:  BEQ             loc_1213D6
1213D0:  CBZ             R0, loc_1213E0
1213D2:  MOVS            R1, #5
1213D4:  B               loc_1213D8
1213D6:  MOVS            R1, #4
1213D8:  LDR             R2, [R0]
1213DA:  LDR.W           R1, [R2,R1,LSL#2]
1213DE:  BLX             R1
1213E0:  LDR             R0, [SP,#0x88+var_40]
1213E2:  CMP             R5, R0
1213E4:  BEQ             loc_1213EC
1213E6:  CBZ             R0, loc_1213F6
1213E8:  MOVS            R1, #5
1213EA:  B               loc_1213EE
1213EC:  MOVS            R1, #4
1213EE:  LDR             R2, [R0]
1213F0:  LDR.W           R1, [R2,R1,LSL#2]
1213F4:  BLX             R1
1213F6:  CMP.W           R11, #0
1213FA:  BNE             loc_121410
1213FC:  MOVW            R0, #0x12D0
121400:  LDR             R1, =(sub_1219EC+1 - 0x12140C)
121402:  MOVT            R0, #0x67 ; 'g'
121406:  ADD             R0, R9
121408:  ADD             R1, PC; sub_1219EC
12140A:  MOV             R2, R8
12140C:  BL              sub_164196
121410:  LDR             R0, [SP,#0x88+var_70]
121412:  CMP             R10, R0
121414:  BEQ             loc_12141C
121416:  CBZ             R0, loc_121426
121418:  MOVS            R1, #5
12141A:  B               loc_12141E
12141C:  MOVS            R1, #4
12141E:  LDR             R2, [R0]
121420:  LDR.W           R1, [R2,R1,LSL#2]
121424:  BLX             R1
121426:  MOV             R0, R4
121428:  ADD             SP, SP, #0x6C ; 'l'
12142A:  POP.W           {R8-R11}
12142E:  POP             {R4-R7,PC}
