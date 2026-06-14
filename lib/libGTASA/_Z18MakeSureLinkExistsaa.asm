; =========================================================
; Game Engine Function: _Z18MakeSureLinkExistsaa
; Address            : 0x31A3DC - 0x31A4A8
; =========================================================

31A3DC:  PUSH            {R4-R7,LR}
31A3DE:  ADD             R7, SP, #0xC
31A3E0:  PUSH.W          {R8-R11}
31A3E4:  SUB             SP, SP, #8
31A3E6:  LDR             R2, =(ConnectsToGiven_ptr - 0x31A3F2)
31A3E8:  ADD.W           R3, R1, R1,LSL#1
31A3EC:  UXTB            R4, R0
31A3EE:  ADD             R2, PC; ConnectsToGiven_ptr
31A3F0:  LDR             R2, [R2]; ConnectsToGiven
31A3F2:  LDRB.W          R1, [R2,R3,LSL#1]
31A3F6:  CMP             R1, R4
31A3F8:  BEQ             loc_31A4A0
31A3FA:  LDR             R6, =(ConnectsToGiven_ptr - 0x31A400)
31A3FC:  ADD             R6, PC; ConnectsToGiven_ptr
31A3FE:  LDR             R6, [R6]; ConnectsToGiven
31A400:  ADD.W           R12, R6, R3,LSL#1
31A404:  LDRB.W          R5, [R12,#1]!
31A408:  CMP             R5, R4
31A40A:  BEQ             loc_31A4A0
31A40C:  LDR             R6, =(ConnectsToGiven_ptr - 0x31A412)
31A40E:  ADD             R6, PC; ConnectsToGiven_ptr
31A410:  LDR             R6, [R6]; ConnectsToGiven
31A412:  ADD.W           LR, R6, R3,LSL#1
31A416:  LDRB.W          R11, [LR,#2]!
31A41A:  CMP             R11, R4
31A41C:  BEQ             loc_31A4A0
31A41E:  LDR             R6, =(ConnectsToGiven_ptr - 0x31A424)
31A420:  ADD             R6, PC; ConnectsToGiven_ptr
31A422:  LDR             R6, [R6]; ConnectsToGiven
31A424:  ADD.W           R8, R6, R3,LSL#1
31A428:  LDRB.W          R10, [R8,#3]!
31A42C:  CMP             R10, R4
31A42E:  BEQ             loc_31A4A0
31A430:  LDR             R6, =(ConnectsToGiven_ptr - 0x31A436)
31A432:  ADD             R6, PC; ConnectsToGiven_ptr
31A434:  LDR             R6, [R6]; ConnectsToGiven
31A436:  ADD.W           R6, R6, R3,LSL#1
31A43A:  LDRB.W          R9, [R6,#4]!
31A43E:  STR             R6, [SP,#0x24+var_24]
31A440:  CMP             R9, R4
31A442:  MOV             R6, R9
31A444:  STR             R6, [SP,#0x24+var_20]
31A446:  BEQ             loc_31A4A0
31A448:  LDR             R6, =(ConnectsToGiven_ptr - 0x31A44E)
31A44A:  ADD             R6, PC; ConnectsToGiven_ptr
31A44C:  LDR             R6, [R6]; ConnectsToGiven
31A44E:  ADD.W           R6, R6, R3,LSL#1
31A452:  LDRB.W          R9, [R6,#5]!
31A456:  CMP             R9, R4
31A458:  BEQ             loc_31A4A0
31A45A:  SXTB            R1, R1
31A45C:  CMP             R1, #0
31A45E:  BLT             loc_31A498
31A460:  SXTB            R1, R5
31A462:  CMP.W           R1, #0xFFFFFFFF
31A466:  BLE             loc_31A49C
31A468:  SXTB.W          R1, R11
31A46C:  CMP             R1, #0
31A46E:  MOV             R12, LR
31A470:  BLT             loc_31A49C
31A472:  SXTB.W          R1, R10
31A476:  CMP             R1, #0
31A478:  MOV             R12, R8
31A47A:  BLT             loc_31A49C
31A47C:  LDR             R1, [SP,#0x24+var_20]
31A47E:  LDR.W           R12, [SP,#0x24+var_24]
31A482:  SXTB            R1, R1
31A484:  CMP             R1, #0
31A486:  BLT             loc_31A49C
31A488:  SXTB.W          R1, R9
31A48C:  CMP             R1, #0
31A48E:  MOV             R12, R6
31A490:  IT LT
31A492:  STRBLT.W        R0, [R12]
31A496:  B               loc_31A4A0
31A498:  ADD.W           R12, R2, R3,LSL#1
31A49C:  STRB.W          R0, [R12]
31A4A0:  ADD             SP, SP, #8
31A4A2:  POP.W           {R8-R11}
31A4A6:  POP             {R4-R7,PC}
