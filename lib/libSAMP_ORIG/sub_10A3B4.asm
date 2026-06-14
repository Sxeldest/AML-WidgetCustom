; =========================================================
; Game Engine Function: sub_10A3B4
; Address            : 0x10A3B4 - 0x10A5DC
; =========================================================

10A3B4:  PUSH            {R4-R11,LR}
10A3B8:  ADD             R11, SP, #0x1C
10A3BC:  SUB             SP, SP, #0x2C
10A3C0:  MOV             R5, R0
10A3C4:  LDR             R0, [R0,#0x4C]
10A3C8:  MOV             R10, R1
10A3CC:  ADD             R1, SP, #0x48+var_44
10A3D0:  LDRB            R8, [R0,#3]
10A3D4:  MOV             R0, R10
10A3D8:  BL              sub_10AD8C
10A3DC:  CMP             R0, #0
10A3E0:  LDRB            R0, [R5,#0x50]
10A3E4:  LDR             R7, [SP,#0x48+var_3C]
10A3E8:  MOVNE           R7, #0
10A3EC:  TST             R0, #1
10A3F0:  BNE             loc_10A544
10A3F4:  LDR             R6, [R7]
10A3F8:  CMP             R6, #0
10A3FC:  BEQ             loc_10A544
10A400:  AND             R1, R8, #0xF
10A404:  MOV             R0, #9
10A408:  CMP             R1, #3
10A40C:  BEQ             loc_10A49C
10A410:  CMP             R1, #1
10A414:  BNE             loc_10A53C
10A418:  ADD             R9, SP, #0x48+var_44
10A41C:  B               loc_10A430
10A420:  MOV             R7, R0
10A424:  LDR             R0, [R7]
10A428:  CMP             R0, #0
10A42C:  BEQ             loc_10A544
10A430:  MOV             R0, #0
10A434:  LDRH            R6, [R7]
10A438:  LDRH            R8, [R7,#2]
10A43C:  MOV             R1, #0xF
10A440:  STR             R0, [SP,#0x48+var_44]
10A444:  MOV             R0, R10
10A448:  MOV             R2, R9
10A44C:  LDR             R4, [R5,#0x48]
10A450:  BL              sub_10AB7C
10A454:  AND             R1, R6, #1
10A458:  ADD             R0, R7, #4
10A45C:  BFI             R1, R8, #1, #1
10A460:  CMP             R1, #2
10A464:  BCC             loc_10A420
10A468:  BNE             loc_10A56C
10A46C:  LDR             R2, [SP,#0x48+var_44]
10A470:  BIC             R1, R8, #1
10A474:  ADD             R1, R1, R4
10A478:  ADD             R7, R7, #8
10A47C:  BIC             R2, R2, #1
10A480:  CMP             R1, R2
10A484:  BHI             loc_10A424
10A488:  BIC             R3, R6, #1
10A48C:  ADD             R1, R1, R3
10A490:  CMP             R2, R1
10A494:  BCS             loc_10A424
10A498:  B               loc_10A518
10A49C:  ADD             R9, SP, #0x48+var_44
10A4A0:  B               loc_10A4B4
10A4A4:  MOV             R7, R0
10A4A8:  LDR             R6, [R7]
10A4AC:  CMP             R6, #0
10A4B0:  BEQ             loc_10A544
10A4B4:  MOV             R0, #0
10A4B8:  MOV             R1, #0xF
10A4BC:  STR             R0, [SP,#0x48+var_44]
10A4C0:  MOV             R0, R10
10A4C4:  MOV             R2, R9
10A4C8:  LDR             R4, [R5,#0x48]
10A4CC:  LDR             R8, [R7,#4]
10A4D0:  BL              sub_10AB7C
10A4D4:  AND             R1, R6, #1
10A4D8:  ADD             R0, R7, #8
10A4DC:  BFI             R1, R8, #1, #1
10A4E0:  CMP             R1, #2
10A4E4:  BCC             loc_10A4A4
10A4E8:  BNE             loc_10A56C
10A4EC:  LDR             R2, [SP,#0x48+var_44]
10A4F0:  BIC             R1, R8, #1
10A4F4:  ADD             R1, R4, R1
10A4F8:  ADD             R7, R7, #0xC
10A4FC:  BIC             R2, R2, #1
10A500:  CMP             R1, R2
10A504:  BHI             loc_10A4A8
10A508:  BIC             R3, R6, #1
10A50C:  ADD             R1, R1, R3
10A510:  CMP             R2, R1
10A514:  BCS             loc_10A4A8
10A518:  LDR             R0, [R0]
10A51C:  MOV             R1, R0,LSL#1
10A520:  BFI             R1, R0, #0, #0x1F
10A524:  MOV             R0, #6
10A528:  CMN             R1, #1
10A52C:  BEQ             loc_10A53C
10A530:  CMN             R1, #2
10A534:  BNE             loc_10A5A4
10A538:  MOV             R0, #9
10A53C:  SUB             SP, R11, #0x1C
10A540:  POP             {R4-R11,PC}
10A544:  MOV             R0, R10
10A548:  BL              sub_10AD74
10A54C:  MOV             R1, R0
10A550:  MOV             R0, #9
10A554:  CMP             R1, #0
10A558:  MOVWEQ          R0, #5
10A55C:  CMP             R1, #1
10A560:  MOVWEQ          R0, #8
10A564:  SUB             SP, R11, #0x1C
10A568:  POP             {R4-R11,PC}
10A56C:  LDR             R1, =(aLibunwindSS - 0x10A580); "libunwind: %s - %s\n" ...
10A570:  LDR             R2, =(aProcessdescrip - 0x10A588); "ProcessDescriptors" ...
10A574:  LDR             R3, =(aInvalidDescrip - 0x10A58C); "Invalid descriptor kind found." ...
10A578:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10A57C:  LDR             R0, =(__sF_ptr - 0x10A590)
10A580:  ADD             R2, PC, R2; "ProcessDescriptors"
10A584:  ADD             R3, PC, R3; "Invalid descriptor kind found."
10A588:  LDR             R0, [PC,R0]; __sF
10A58C:  ADD             R4, R0, #0xA8
10A590:  MOV             R0, R4; stream
10A594:  BL              fprintf
10A598:  MOV             R0, R4; stream
10A59C:  BL              fflush
10A5A0:  BL              abort
10A5A4:  LDR             R1, =(aLibunwindSS - 0x10A5B8); "libunwind: %s - %s\n" ...
10A5A8:  LDR             R2, =(aProcessdescrip - 0x10A5C0); "ProcessDescriptors" ...
10A5AC:  LDR             R3, =(aTypeMatchingNo - 0x10A5C4); "Type matching not implemented" ...
10A5B0:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10A5B4:  LDR             R0, =(__sF_ptr - 0x10A5C8)
10A5B8:  ADD             R2, PC, R2; "ProcessDescriptors"
10A5BC:  ADD             R3, PC, R3; "Type matching not implemented"
10A5C0:  LDR             R0, [PC,R0]; __sF
10A5C4:  ADD             R4, R0, #0xA8
10A5C8:  MOV             R0, R4; stream
10A5CC:  BL              fprintf
10A5D0:  MOV             R0, R4; stream
10A5D4:  BL              fflush
10A5D8:  BL              abort
