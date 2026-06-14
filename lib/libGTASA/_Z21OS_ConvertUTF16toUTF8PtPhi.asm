; =========================================================
; Game Engine Function: _Z21OS_ConvertUTF16toUTF8PtPhi
; Address            : 0x270304 - 0x2703CA
; =========================================================

270304:  PUSH            {R4-R7,LR}
270306:  ADD             R7, SP, #0xC
270308:  PUSH.W          {R8-R11}
27030C:  SUB             SP, SP, #4
27030E:  MOV             R11, R2
270310:  MOV             R8, R1
270312:  MOVS            R2, #0
270314:  CMP             R0, #0
270316:  BEQ             loc_2703AC
270318:  LDRH            R1, [R0]
27031A:  MOVS            R6, #0
27031C:  CMP             R1, #0
27031E:  BEQ             loc_2703B2
270320:  ADDS            R5, R0, #2
270322:  SUB.W           R10, R7, #-var_1F
270326:  MOVS            R0, #0
270328:  UXTH            R2, R1
27032A:  CMP             R2, #0x7F
27032C:  BHI             loc_270334
27032E:  MOVS            R3, #0
270330:  MOVS            R2, #1
270332:  B               loc_270382
270334:  AND.W           R3, R1, #0xF800
270338:  CMP.W           R6, R3,LSR#11
27033C:  BNE             loc_270358
27033E:  MOVW            R6, #0xFFFE
270342:  LSRS            R4, R2, #6
270344:  MOVS            R2, #6
270346:  MOVS            R3, #1
270348:  BFI.W           R4, R2, #5, #0x1B
27034C:  MOVS            R2, #2
27034E:  MOV.W           R12, #0
270352:  MOVT            R6, #0x3FF
270356:  B               loc_270378
270358:  MOVW            R6, #0xFFFE
27035C:  MOVS            R3, #0xE0
27035E:  LSRS            R4, R2, #6
270360:  MOVT            R6, #0x3FF
270364:  ORR.W           R3, R3, R2,LSR#12
270368:  BFI.W           R4, R6, #6, #0x1A
27036C:  STRB.W          R3, [R7,#var_1F]
270370:  MOVS            R3, #2
270372:  MOVS            R2, #3
270374:  MOV.W           R12, #1
270378:  BFI.W           R1, R6, #6, #0x1A
27037C:  MOVS            R6, #0
27037E:  STRB.W          R4, [R10,R12]
270382:  ADD.W           R9, R2, R0
270386:  STRB.W          R1, [R10,R3]
27038A:  CMP             R9, R11
27038C:  BGE             loc_2703B6
27038E:  MOVS            R4, #1
270390:  CMP             R2, #1
270392:  ADD             R0, R8; void *
270394:  IT LE
270396:  MOVLE           R2, R4; size_t
270398:  MOV             R1, R10; void *
27039A:  BLX             memcpy_1
27039E:  LDRH.W          R1, [R5],#2
2703A2:  MOV             R0, R9
2703A4:  CMP             R1, #0
2703A6:  BNE             loc_270328
2703A8:  MOV             R6, R9
2703AA:  B               loc_2703BA
2703AC:  MOVS            R4, #1
2703AE:  MOVS            R6, #0
2703B0:  B               loc_2703BC
2703B2:  MOVS            R4, #1
2703B4:  B               loc_2703BC
2703B6:  MOVS            R4, #0
2703B8:  MOV             R6, R0
2703BA:  MOVS            R2, #0
2703BC:  STRB.W          R2, [R8,R6]
2703C0:  MOV             R0, R4
2703C2:  ADD             SP, SP, #4
2703C4:  POP.W           {R8-R11}
2703C8:  POP             {R4-R7,PC}
