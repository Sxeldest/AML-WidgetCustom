; =========================================================
; Game Engine Function: sub_10A354
; Address            : 0x10A354 - 0x10A47E
; =========================================================

10A354:  PUSH            {R4,R5,R7,LR}
10A356:  ADD             R7, SP, #8
10A358:  MOV             R4, R0
10A35A:  LDR             R0, =(off_23496C - 0x10A366)
10A35C:  VMOV.I32        Q8, #0
10A360:  MOV             R5, R1
10A362:  ADD             R0, PC; off_23496C
10A364:  MOVW            R12, #0xFFFF
10A368:  LDR             R0, [R0]; dword_23DEF4
10A36A:  VST1.32         {D16-D17}, [R4]
10A36E:  LDR             R0, [R0]
10A370:  CBZ             R0, loc_10A3A2
10A372:  LDR.W           R0, [R0,#0x3B0]
10A376:  LDR             R3, [R0,#4]
10A378:  CBZ             R3, loc_10A3A2
10A37A:  MOVW            R0, #0xEA60
10A37E:  ADDS            R2, R3, R0
10A380:  LDRD.W          R0, R2, [R2]
10A384:  CMP             R0, R2
10A386:  BEQ             loc_10A39A
10A388:  LDR             R1, [R0]
10A38A:  LDR.W           R1, [R3,R1,LSL#2]
10A38E:  CMP             R1, R5
10A390:  BEQ             loc_10A39A
10A392:  ADDS            R0, #4
10A394:  CMP             R0, R2
10A396:  BNE             loc_10A388
10A398:  B               loc_10A3A2
10A39A:  CMP             R0, R2
10A39C:  IT NE
10A39E:  LDRNE.W         R12, [R0]
10A3A2:  LDR             R0, [R5,#0xC]
10A3A4:  STRH.W          R12, [R4]
10A3A8:  CBZ             R0, loc_10A3BE
10A3AA:  BL              sub_10837C
10A3AE:  MOV             R1, R0
10A3B0:  LDR             R0, [R5,#0xC]
10A3B2:  CMP             R1, #1
10A3B4:  BNE             loc_10A3C4
10A3B6:  LDR.W           R1, [R0,#0x5C8]
10A3BA:  STR             R1, [R4,#4]
10A3BC:  B               loc_10A3CA
10A3BE:  MOVS            R0, #0
10A3C0:  STR             R0, [R4,#4]
10A3C2:  B               loc_10A3DE
10A3C4:  MOVS            R1, #0
10A3C6:  STR             R1, [R4,#4]
10A3C8:  CBZ             R0, loc_10A3DE
10A3CA:  BL              sub_10837C
10A3CE:  MOV             R1, R0
10A3D0:  LDR             R0, [R5,#0xC]
10A3D2:  CMP             R1, #1
10A3D4:  BNE             loc_10A3EC
10A3D6:  LDR.W           R1, [R0,#0x5BD]
10A3DA:  STR             R1, [R4,#8]
10A3DC:  B               loc_10A3F4
10A3DE:  MOVS            R0, #0
10A3E0:  STR             R0, [R4,#8]
10A3E2:  MOVS            R0, #0
10A3E4:  STRH            R0, [R4,#0xC]
10A3E6:  ADDS            R4, #0xD
10A3E8:  LDRB            R0, [R4]
10A3EA:  B               loc_10A472
10A3EC:  MOVS            R1, #0
10A3EE:  CMP             R0, #0
10A3F0:  STR             R1, [R4,#8]
10A3F2:  BEQ             loc_10A3E2
10A3F4:  BL              sub_10837C
10A3F8:  MOV             R1, R0
10A3FA:  LDR             R0, [R5,#0xC]
10A3FC:  CMP             R1, #1
10A3FE:  BNE             loc_10A410
10A400:  MOVS            R1, #0
10A402:  LDR.W           R2, [R0,#0x5C4]
10A406:  STRB.W          R1, [R4,#0xD]!
10A40A:  STRB.W          R2, [R4,#-1]
10A40E:  B               loc_10A41C
10A410:  MOVS            R1, #0
10A412:  CMP             R0, #0
10A414:  STRH            R1, [R4,#0xC]
10A416:  ADD.W           R4, R4, #0xD
10A41A:  BEQ             loc_10A3E8
10A41C:  BL              sub_10837C
10A420:  MOV             R1, R0
10A422:  LDR             R0, [R5,#0xC]
10A424:  CMP             R1, #1
10A426:  BNE             loc_10A446
10A428:  ADDW            R1, R0, #0x5B9
10A42C:  LDRB            R0, [R4]
10A42E:  MOVS            R2, #0
10A430:  LDRB            R3, [R1,R2]
10A432:  ADDS            R2, #1
10A434:  CMP             R3, #0
10A436:  IT NE
10A438:  MOVNE           R3, #1
10A43A:  ORRS            R0, R3
10A43C:  CMP             R2, #4
10A43E:  MOV.W           R0, R0,LSL#1
10A442:  BNE             loc_10A430
10A444:  B               loc_10A470
10A446:  CMP             R0, #0
10A448:  BEQ             loc_10A3E8
10A44A:  BL              sub_10837C
10A44E:  CMP             R0, #2
10A450:  BNE             loc_10A3E8
10A452:  LDR             R1, [R5,#0xC]
10A454:  MOVS            R2, #0
10A456:  LDRB            R0, [R4]
10A458:  ADD.W           R1, R1, #0x670
10A45C:  LDRB            R3, [R1,R2]
10A45E:  ADDS            R2, #1
10A460:  CMP             R3, #0
10A462:  IT NE
10A464:  MOVNE           R3, #1
10A466:  ORRS            R0, R3
10A468:  CMP             R2, #2
10A46A:  MOV.W           R0, R0,LSL#1
10A46E:  BNE             loc_10A45C
10A470:  STRB            R0, [R4]
10A472:  LSLS            R1, R0, #0x18
10A474:  ITTT NE
10A476:  UXTBNE          R0, R0
10A478:  LSRNE           R0, R0, #1
10A47A:  STRBNE          R0, [R4]
10A47C:  POP             {R4,R5,R7,PC}
