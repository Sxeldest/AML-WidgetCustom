; =========================================================
; Game Engine Function: sub_83340
; Address            : 0x83340 - 0x833BE
; =========================================================

83340:  PUSH            {R4-R7,LR}
83342:  ADD             R7, SP, #0xC
83344:  PUSH.W          {R8}
83348:  SUB             SP, SP, #8
8334A:  MOV             R8, R0
8334C:  LDR             R0, =(byte_1A49FC - 0x83354)
8334E:  MOV             R5, R1
83350:  ADD             R0, PC; byte_1A49FC
83352:  LDRB            R1, [R0]
83354:  MOVS            R0, #0
83356:  CBZ             R1, loc_833B6
83358:  LDR             R1, =(byte_1A6FA6 - 0x8335E)
8335A:  ADD             R1, PC; byte_1A6FA6
8335C:  LDRB            R1, [R1]
8335E:  CBZ             R1, loc_833B6
83360:  LDR             R1, =(byte_1A4A24 - 0x83366)
83362:  ADD             R1, PC; byte_1A4A24
83364:  LDRB            R1, [R1]
83366:  CBNZ            R1, loc_833B6
83368:  LDR             R0, =(off_114CC0 - 0x83370)
8336A:  LDR             R6, =(dword_1A4A1C - 0x83372)
8336C:  ADD             R0, PC; off_114CC0
8336E:  ADD             R6, PC; dword_1A4A1C
83370:  LDR             R4, [R0]; off_1ABF44
83372:  LDR             R0, [R6]
83374:  LDR             R3, [R4]
83376:  MOVS            R1, #0
83378:  MOVS            R2, #0
8337A:  BLX             R3
8337C:  ADDS            R0, #1
8337E:  CMP.W           R0, #0x2580
83382:  BLS             loc_833B4
83384:  LDR             R0, [R6]
83386:  LDR             R3, [R4]
83388:  LDR             R1, =(unk_1A4A26 - 0x8338E)
8338A:  ADD             R1, PC; unk_1A4A26
8338C:  MOV.W           R2, #0x2580
83390:  BLX             R3
83392:  CMP.W           R0, #0x2580
83396:  BNE             loc_833B4
83398:  LDR             R0, =(dword_1A4A18 - 0x8339E)
8339A:  ADD             R0, PC; dword_1A4A18
8339C:  LDR             R0, [R0]
8339E:  LDR             R1, =(unk_1A4A26 - 0x833A4)
833A0:  ADD             R1, PC; unk_1A4A26
833A2:  MOV.W           R2, #0x12C0
833A6:  MOV             R3, R8
833A8:  STR             R5, [SP,#0x18+var_18]
833AA:  BLX             j_opus_encode
833AE:  BIC.W           R0, R0, R0,ASR#31
833B2:  B               loc_833B6
833B4:  MOVS            R0, #0
833B6:  ADD             SP, SP, #8
833B8:  POP.W           {R8}
833BC:  POP             {R4-R7,PC}
