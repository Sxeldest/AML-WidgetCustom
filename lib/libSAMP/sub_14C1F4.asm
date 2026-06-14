; =========================================================
; Game Engine Function: sub_14C1F4
; Address            : 0x14C1F4 - 0x14C454
; =========================================================

14C1F4:  PUSH            {R4-R7,LR}
14C1F6:  ADD             R7, SP, #0xC
14C1F8:  PUSH.W          {R8,R9,R11}
14C1FC:  SUBW            SP, SP, #0xC48
14C200:  LDR             R1, =(off_23496C - 0x14C20E)
14C202:  LDRD.W          R4, R6, [R0]
14C206:  ADD.W           R0, SP, #0xC60+dest; int
14C20A:  ADD             R1, PC; off_23496C
14C20C:  LDR             R1, [R1]; dword_23DEF4
14C20E:  LDR             R1, [R1]
14C210:  LDR.W           R1, [R1,#0x3B0]
14C214:  LDR             R5, [R1,#0x10]
14C216:  MOV.W           R1, #0x100; n
14C21A:  BLX             sub_22178C
14C21E:  ADD.W           R0, SP, #0xC60+var_220; int
14C222:  MOV.W           R1, #0x100; n
14C226:  BLX             sub_22178C
14C22A:  ADD.W           R0, SP, #0xC60+var_320; int
14C22E:  MOV.W           R1, #0x100; n
14C232:  BLX             sub_22178C
14C236:  ASRS            R0, R6, #0x1F
14C238:  MOVS            R1, #1
14C23A:  ADD.W           R0, R6, R0,LSR#29
14C23E:  MOVS            R3, #0
14C240:  ADD.W           R2, R1, R0,ASR#3; size
14C244:  ADD             R0, SP, #0xC60+var_C48; int
14C246:  MOV             R1, R4; src
14C248:  BL              sub_17D4F2
14C24C:  SUB.W           R1, R7, #-(var_1C+2); int
14C250:  MOVS            R2, #0x10
14C252:  MOVS            R3, #1
14C254:  BL              sub_17D786
14C258:  LDRH.W          R0, [R7,#var_1C+2]
14C25C:  CMP.W           R0, #0x3E8
14C260:  BHI             loc_14C272
14C262:  ADDS            R1, R5, R0
14C264:  LDRB            R1, [R1,#4]
14C266:  CBZ             R1, loc_14C272
14C268:  ADD.W           R0, R5, R0,LSL#2
14C26C:  LDR.W           R8, [R0,#0x3EC]
14C270:  B               loc_14C276
14C272:  MOV.W           R8, #0
14C276:  ADD             R0, SP, #0xC60+var_C48; int
14C278:  SUB.W           R1, R7, #-(var_1C+1); int
14C27C:  MOVS            R2, #8
14C27E:  MOVS            R3, #1
14C280:  BL              sub_17D786
14C284:  LDRB.W          R0, [R7,#var_1C+1]
14C288:  CMP             R0, #2
14C28A:  BEQ             loc_14C352
14C28C:  CMP             R0, #1
14C28E:  BNE.W           loc_14C444
14C292:  ADD             R0, SP, #0xC60+var_C48; int
14C294:  SUB.W           R1, R7, #-var_1C; int
14C298:  MOVS            R2, #8
14C29A:  MOVS            R3, #1
14C29C:  BL              sub_17D786
14C2A0:  ADD             R0, SP, #0xC60+var_C48; int
14C2A2:  SUB.W           R1, R7, #-var_1E; int
14C2A6:  MOVS            R2, #0x10
14C2A8:  MOVS            R3, #1
14C2AA:  BL              sub_17D786
14C2AE:  ADD             R0, SP, #0xC60+var_C48; int
14C2B0:  SUB.W           R1, R7, #-var_1F; int
14C2B4:  MOVS            R2, #8
14C2B6:  MOVS            R3, #1
14C2B8:  BL              sub_17D786
14C2BC:  LDRB.W          R2, [R7,#var_1F]
14C2C0:  ADD.W           R5, SP, #0xC60+dest
14C2C4:  ADD             R0, SP, #0xC60+var_C48; int
14C2C6:  MOV             R1, R5; dest
14C2C8:  BL              sub_17D744
14C2CC:  LDRB.W          R0, [R7,#var_1F]
14C2D0:  MOVS            R1, #0
14C2D2:  STRB            R1, [R5,R0]
14C2D4:  ADD             R0, SP, #0xC60+var_C48; int
14C2D6:  SUB.W           R1, R7, #-var_1F; int
14C2DA:  MOVS            R2, #8
14C2DC:  MOVS            R3, #1
14C2DE:  BL              sub_17D786
14C2E2:  LDRB.W          R2, [R7,#var_1F]
14C2E6:  ADD.W           R5, SP, #0xC60+var_220
14C2EA:  ADD             R0, SP, #0xC60+var_C48; int
14C2EC:  MOV             R1, R5; dest
14C2EE:  BL              sub_17D744
14C2F2:  LDRB.W          R0, [R7,#var_1F]
14C2F6:  MOVS            R1, #0
14C2F8:  STRB            R1, [R5,R0]
14C2FA:  ADD             R0, SP, #0xC60+var_C48; int
14C2FC:  ADDW            R1, SP, #0xC60+var_324; int
14C300:  MOVS            R2, #0x20 ; ' '
14C302:  MOVS            R3, #1
14C304:  BL              sub_17D786
14C308:  ADD.W           R0, SP, #0xC60+dest; char *
14C30C:  MOV.W           R1, #0x100; size_t
14C310:  BLX             __strlen_chk
14C314:  CMP             R0, #0x1F
14C316:  BHI.W           loc_14C444
14C31A:  ADD.W           R5, SP, #0xC60+var_220
14C31E:  MOV.W           R1, #0x100; size_t
14C322:  MOV             R0, R5; char *
14C324:  BLX             __strlen_chk
14C328:  CMP.W           R8, #0
14C32C:  BEQ.W           loc_14C444
14C330:  CMP             R0, #0x1F
14C332:  BHI.W           loc_14C444
14C336:  LDRH.W          R1, [R7,#var_1E]
14C33A:  LDR.W           R0, [SP,#0xC60+var_324]
14C33E:  LDRB.W          R2, [R7,#var_1C]
14C342:  ADD.W           R3, SP, #0xC60+dest
14C346:  STRD.W          R5, R0, [SP,#0xC60+var_C60]
14C34A:  MOV             R0, R8
14C34C:  BL              sub_102390
14C350:  B               loc_14C444
14C352:  ADD             R0, SP, #0xC60+var_C48; int
14C354:  SUB.W           R1, R7, #-var_1C; int
14C358:  MOVS            R2, #8
14C35A:  MOVS            R3, #1
14C35C:  BL              sub_17D786
14C360:  ADD             R0, SP, #0xC60+var_C48; int
14C362:  ADDW            R1, SP, #0xC60+var_325; int
14C366:  MOVS            R2, #8
14C368:  MOVS            R3, #1
14C36A:  BL              sub_17D786
14C36E:  ADD             R0, SP, #0xC60+var_C48; int
14C370:  SUB.W           R1, R7, #-var_1F; int
14C374:  MOVS            R2, #8
14C376:  MOVS            R3, #1
14C378:  BL              sub_17D786
14C37C:  LDRB.W          R2, [R7,#var_1F]
14C380:  ADD             R0, SP, #0xC60+var_C48; int
14C382:  ADD.W           R1, SP, #0xC60+var_320; dest
14C386:  BL              sub_17D744
14C38A:  ADD             R0, SP, #0xC60+var_C48; int
14C38C:  ADDW            R1, SP, #0xC60+var_326; int
14C390:  MOVS            R2, #8
14C392:  MOVS            R3, #1
14C394:  BL              sub_17D786
14C398:  ADD             R0, SP, #0xC60+var_C48; int
14C39A:  ADDW            R1, SP, #0xC60+var_327; int
14C39E:  MOVS            R2, #8
14C3A0:  MOVS            R3, #1
14C3A2:  BL              sub_17D786
14C3A6:  ADD             R0, SP, #0xC60+var_C48; int
14C3A8:  ADDW            R1, SP, #0xC60+var_32C; int
14C3AC:  MOVS            R2, #0x20 ; ' '
14C3AE:  MOVS            R3, #1
14C3B0:  BL              sub_17D786
14C3B4:  ADD             R0, SP, #0xC60+var_C48; int
14C3B6:  ADD.W           R1, SP, #0xC60+var_330; int
14C3BA:  MOVS            R2, #0x20 ; ' '
14C3BC:  MOVS            R3, #1
14C3BE:  BL              sub_17D786
14C3C2:  ADD             R0, SP, #0xC60+var_C48; int
14C3C4:  ADDW            R1, SP, #0xC60+var_331; int
14C3C8:  MOVS            R2, #8
14C3CA:  MOVS            R3, #1
14C3CC:  BL              sub_17D786
14C3D0:  BL              sub_18CEC8
14C3D4:  MOVS            R1, #0
14C3D6:  ADD             R3, SP, #0xC60+var_C48
14C3D8:  STR             R1, [SP,#0xC60+var_C60]
14C3DA:  ADD.W           R1, SP, #0xC60+s
14C3DE:  MOV.W           R2, #0x800
14C3E2:  BL              sub_18D07E
14C3E6:  ADD.W           R0, SP, #0xC60+var_320; char *
14C3EA:  MOV.W           R1, #0x100; size_t
14C3EE:  BLX             __strlen_chk
14C3F2:  CBZ             R0, loc_14C444
14C3F4:  ADD.W           R9, SP, #0xC60+var_320
14C3F8:  MOV.W           R1, #0x100; size_t
14C3FC:  MOV             R0, R9; char *
14C3FE:  BLX             __strlen_chk
14C402:  CMP.W           R8, #0
14C406:  BEQ             loc_14C444
14C408:  CMP             R0, #0x1F
14C40A:  BHI             loc_14C444
14C40C:  LDRB.W          R1, [R7,#var_1C]; int
14C410:  LDRB.W          R0, [SP,#0xC60+var_326]
14C414:  LDRB.W          R3, [SP,#0xC60+var_325]
14C418:  LDRB.W          R2, [SP,#0xC60+var_327]
14C41C:  LDR.W           R6, [SP,#0xC60+var_32C]
14C420:  LDR.W           R4, [SP,#0xC60+var_330]
14C424:  LDRB.W          R5, [SP,#0xC60+var_331]
14C428:  CMP             R2, #0
14C42A:  IT NE
14C42C:  MOVNE           R2, #1
14C42E:  STRD.W          R2, R6, [SP,#0xC60+var_C58]
14C432:  ADD.W           R2, SP, #0xC60+s; s
14C436:  STRD.W          R9, R0, [SP,#0xC60+var_C60]
14C43A:  MOV             R0, R8; int
14C43C:  STRD.W          R4, R5, [SP,#0xC60+var_C50]
14C440:  BL              sub_102408
14C444:  ADD             R0, SP, #0xC60+var_C48
14C446:  BL              sub_17D542
14C44A:  ADDW            SP, SP, #0xC48
14C44E:  POP.W           {R8,R9,R11}
14C452:  POP             {R4-R7,PC}
