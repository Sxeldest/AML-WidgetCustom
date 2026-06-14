; =========================================================
; Game Engine Function: sub_1BA42C
; Address            : 0x1BA42C - 0x1BA610
; =========================================================

1BA42C:  PUSH            {R4,R10,R11,LR}
1BA430:  ADD             R11, SP, #8
1BA434:  LDR             R0, =(LogFile_ptr - 0x1BA444)
1BA438:  LDR             R1, =(__sF_ptr - 0x1BA448)
1BA43C:  LDR             R0, [PC,R0]; LogFile
1BA440:  LDR             R1, [PC,R1]; __sF
1BA444:  ADD             R1, R1, #0xA8
1BA448:  STR             R1, [R0]
1BA44C:  ADR             R0, aAlsoftHalfAngl; "__ALSOFT_HALF_ANGLE_CONES"
1BA450:  BL              getenv
1BA454:  MOV             R4, R0
1BA458:  CMP             R4, #0
1BA45C:  BEQ             loc_1BA49C
1BA460:  ADR             R1, aTrue_1; "true"
1BA464:  MOV             R0, R4; s1
1BA468:  BL              strcasecmp
1BA46C:  CMP             R0, #0
1BA470:  BEQ             loc_1BA48C
1BA474:  MOV             R0, R4; nptr
1BA478:  MOV             R1, #0; endptr
1BA47C:  MOV             R2, #0; base
1BA480:  BL              strtol
1BA484:  CMP             R0, #1
1BA488:  BNE             loc_1BA49C
1BA48C:  LDR             R0, =(ConeScale_ptr - 0x1BA49C)
1BA490:  MOV             R1, #0x3F800000
1BA494:  LDR             R0, [PC,R0]; ConeScale
1BA498:  STR             R1, [R0]
1BA49C:  ADR             R0, aAlsoftReverseZ; "__ALSOFT_REVERSE_Z"
1BA4A0:  BL              getenv
1BA4A4:  MOV             R4, R0
1BA4A8:  CMP             R4, #0
1BA4AC:  BEQ             loc_1BA4F0
1BA4B0:  ADR             R1, aTrue_1; "true"
1BA4B4:  MOV             R0, R4; s1
1BA4B8:  BL              strcasecmp
1BA4BC:  CMP             R0, #0
1BA4C0:  BEQ             loc_1BA4DC
1BA4C4:  MOV             R0, R4; nptr
1BA4C8:  MOV             R1, #0; endptr
1BA4CC:  MOV             R2, #0; base
1BA4D0:  BL              strtol
1BA4D4:  CMP             R0, #1
1BA4D8:  BNE             loc_1BA4F0
1BA4DC:  LDR             R0, =(ZScale_ptr - 0x1BA4F0)
1BA4E0:  MOV             R1, #0xBF800000
1BA4E8:  LDR             R0, [PC,R0]; ZScale
1BA4EC:  STR             R1, [R0]
1BA4F0:  ADR             R0, aAlsoftTrapErro; "__ALSOFT_TRAP_ERROR"
1BA4F4:  BL              getenv
1BA4F8:  MOV             R4, R0
1BA4FC:  CMP             R4, #0
1BA500:  BEQ             loc_1BA54C
1BA504:  ADR             R1, aTrue_1; "true"
1BA508:  MOV             R0, R4; s1
1BA50C:  BL              strcasecmp
1BA510:  CMP             R0, #0
1BA514:  BEQ             loc_1BA530
1BA518:  MOV             R0, R4; nptr
1BA51C:  MOV             R1, #0; endptr
1BA520:  MOV             R2, #0; base
1BA524:  BL              strtol
1BA528:  CMP             R0, #1
1BA52C:  BNE             loc_1BA54C
1BA530:  LDR             R0, =(TrapALError_ptr - 0x1BA544)
1BA534:  MOV             R2, #1
1BA538:  LDR             R1, =(byte_382798 - 0x1BA548)
1BA53C:  LDR             R0, [PC,R0]; TrapALError
1BA540:  STRB            R2, [PC,R1]; byte_382798
1BA544:  STRB            R2, [R0]
1BA548:  B               loc_1BA5E8
1BA54C:  ADR             R0, aAlsoftTrapAlEr; "__ALSOFT_TRAP_AL_ERROR"
1BA550:  BL              getenv
1BA554:  MOV             R4, R0
1BA558:  CMP             R4, #0
1BA55C:  BEQ             loc_1BA59C
1BA560:  ADR             R1, aTrue_1; "true"
1BA564:  MOV             R0, R4; s1
1BA568:  BL              strcasecmp
1BA56C:  CMP             R0, #0
1BA570:  BEQ             loc_1BA58C
1BA574:  MOV             R0, R4; nptr
1BA578:  MOV             R1, #0; endptr
1BA57C:  MOV             R2, #0; base
1BA580:  BL              strtol
1BA584:  CMP             R0, #1
1BA588:  BNE             loc_1BA59C
1BA58C:  LDR             R0, =(TrapALError_ptr - 0x1BA59C)
1BA590:  MOV             R1, #1
1BA594:  LDR             R0, [PC,R0]; TrapALError
1BA598:  STRB            R1, [R0]
1BA59C:  ADR             R0, aAlsoftTrapAlcE; "__ALSOFT_TRAP_ALC_ERROR"
1BA5A0:  BL              getenv
1BA5A4:  MOV             R4, R0
1BA5A8:  CMP             R4, #0
1BA5AC:  BEQ             loc_1BA5E8
1BA5B0:  ADR             R1, aTrue_1; "true"
1BA5B4:  MOV             R0, R4; s1
1BA5B8:  BL              strcasecmp
1BA5BC:  CMP             R0, #0
1BA5C0:  BEQ             loc_1BA5DC
1BA5C4:  MOV             R0, R4; nptr
1BA5C8:  MOV             R1, #0; endptr
1BA5CC:  MOV             R2, #0; base
1BA5D0:  BL              strtol
1BA5D4:  CMP             R0, #1
1BA5D8:  BNE             loc_1BA5E8
1BA5DC:  LDR             R0, =(byte_382798 - 0x1BA5EC)
1BA5E0:  MOV             R1, #1
1BA5E4:  STRB            R1, [PC,R0]; byte_382798
1BA5E8:  LDR             R0, =(dword_38279C - 0x1BA5F8)
1BA5EC:  LDR             R1, =(sub_1BA6B8 - 0x1BA5FC)
1BA5F0:  ADD             R0, PC, R0; dword_38279C ; key
1BA5F4:  ADD             R1, PC, R1; sub_1BA6B8 ; destr_function
1BA5F8:  BL              pthread_key_create
1BA5FC:  LDR             R0, =(unk_3827A0 - 0x1BA608)
1BA600:  ADD             R0, PC, R0; unk_3827A0
1BA604:  BL              j_InitializeCriticalSection
1BA608:  POP             {R4,R10,R11,LR}
1BA60C:  B               j_ThunkInit
