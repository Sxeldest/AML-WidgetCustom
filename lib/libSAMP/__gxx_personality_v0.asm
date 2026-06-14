; =========================================================
; Game Engine Function: __gxx_personality_v0
; Address            : 0x21E41C - 0x21E52C
; =========================================================

21E41C:  PUSH            {R4-R7,LR}
21E41E:  ADD             R7, SP, #0xC
21E420:  PUSH.W          {R8}
21E424:  SUB             SP, SP, #0x30
21E426:  MOV             R6, R0
21E428:  LDR             R0, =(__stack_chk_guard_ptr - 0x21E42E)
21E42A:  ADD             R0, PC; __stack_chk_guard_ptr
21E42C:  LDR             R0, [R0]; __stack_chk_guard
21E42E:  LDR             R0, [R0]
21E430:  STR             R0, [SP,#0x40+var_14]
21E432:  CBZ             R1, loc_21E490
21E434:  MOV             R5, R2
21E436:  CBZ             R2, loc_21E490
21E438:  MOV             R0, R1
21E43A:  MOV             R4, R1
21E43C:  BL              sub_21DA34
21E440:  MOV             R8, R0
21E442:  BIC.W           R0, R6, #8
21E446:  CMP             R0, #2
21E448:  BEQ             loc_21E4E0
21E44A:  CMP             R0, #1
21E44C:  BEQ             loc_21E494
21E44E:  CBNZ            R0, loc_21E490
21E450:  LSLS            R0, R6, #0x1C
21E452:  BMI             loc_21E4E0
21E454:  STR             R5, [SP,#0x40+var_40]
21E456:  ADD             R0, SP, #0x40+var_38
21E458:  MOVS            R1, #1
21E45A:  MOV             R2, R8
21E45C:  MOV             R3, R4
21E45E:  BL              sub_21E548
21E462:  LDR             R0, [SP,#0x40+var_20]
21E464:  CMP             R0, #8
21E466:  BEQ             loc_21E4E0
21E468:  CMP             R0, #6
21E46A:  BNE             loc_21E50A
21E46C:  MOV             R0, R5
21E46E:  MOVS            R1, #0xD
21E470:  BL              sub_21E818
21E474:  CMP.W           R8, #0
21E478:  STR             R0, [R4,#0x20]
21E47A:  BEQ             loc_21E48C
21E47C:  LDR             R0, [SP,#0x40+var_24]
21E47E:  ADD.W           R6, R4, #0x24 ; '$'
21E482:  LDR             R1, [SP,#0x40+var_38]
21E484:  ADD             R5, SP, #0x40+var_30
21E486:  STR             R1, [R4,#0x34]
21E488:  LDM             R5, {R2,R3,R5}
21E48A:  STM             R6!, {R0,R2,R3,R5}
21E48C:  MOVS            R0, #6
21E48E:  B               loc_21E50A
21E490:  MOVS            R0, #3
21E492:  B               loc_21E50A
21E494:  MOV             R0, R5
21E496:  MOVS            R1, #0xD
21E498:  LDR             R6, [R4,#0x20]
21E49A:  BL              sub_21E818
21E49E:  CMP             R6, R0
21E4A0:  BNE             loc_21E4C0
21E4A2:  CMP.W           R8, #0
21E4A6:  BEQ             loc_21E4EA
21E4A8:  ADD.W           R6, R4, #0x24 ; '$'
21E4AC:  MOVS            R0, #6
21E4AE:  STR             R0, [SP,#0x40+var_20]
21E4B0:  LDM             R6, {R0-R3,R6}
21E4B2:  STR             R6, [SP,#0x40+var_38]
21E4B4:  STR             R0, [SP,#0x40+var_24]
21E4B6:  ADD             R0, SP, #0x40+var_30
21E4B8:  STM             R0!, {R1-R3}
21E4BA:  ASRS            R0, R6, #0x1F
21E4BC:  STR             R0, [SP,#0x40+var_34]
21E4BE:  B               loc_21E4FE
21E4C0:  STR             R5, [SP,#0x40+var_40]
21E4C2:  ADD             R0, SP, #0x40+var_38
21E4C4:  MOVS            R1, #2
21E4C6:  MOV             R2, R8
21E4C8:  MOV             R3, R4
21E4CA:  BL              sub_21E548
21E4CE:  LDR             R0, [SP,#0x40+var_20]
21E4D0:  CMP             R0, #8
21E4D2:  BEQ             loc_21E4E0
21E4D4:  CMP             R0, #6
21E4D6:  BNE             loc_21E50A
21E4D8:  MOV             R0, R4
21E4DA:  BLX             j___cxa_begin_cleanup
21E4DE:  B               loc_21E4FE
21E4E0:  MOV             R0, R4
21E4E2:  MOV             R1, R5
21E4E4:  BL              sub_21E534
21E4E8:  B               loc_21E50A
21E4EA:  STR             R5, [SP,#0x40+var_40]
21E4EC:  ADD             R0, SP, #0x40+var_38
21E4EE:  MOVS            R1, #6
21E4F0:  MOVS            R2, #0
21E4F2:  MOV             R3, R4
21E4F4:  BL              sub_21E548
21E4F8:  LDR             R0, [SP,#0x40+var_20]
21E4FA:  CMP             R0, #6
21E4FC:  BNE             loc_21E524
21E4FE:  ADD             R2, SP, #0x40+var_38
21E500:  MOV             R0, R4
21E502:  MOV             R1, R5
21E504:  BL              sub_21E870
21E508:  MOVS            R0, #7
21E50A:  LDR             R1, [SP,#0x40+var_14]
21E50C:  LDR             R2, =(__stack_chk_guard_ptr - 0x21E512)
21E50E:  ADD             R2, PC; __stack_chk_guard_ptr
21E510:  LDR             R2, [R2]; __stack_chk_guard
21E512:  LDR             R2, [R2]
21E514:  CMP             R2, R1
21E516:  ITTT EQ
21E518:  ADDEQ           SP, SP, #0x30 ; '0'
21E51A:  POPEQ.W         {R8}
21E51E:  POPEQ           {R4-R7,PC}
21E520:  BLX             __stack_chk_fail
21E524:  MOVS            R0, #0; int
21E526:  MOV             R1, R4; void *
21E528:  BL              sub_21E854
