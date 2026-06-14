; =========================================================
; Game Engine Function: sub_1BF3FC
; Address            : 0x1BF3FC - 0x1BF53C
; =========================================================

1BF3FC:  PUSH            {R4-R6,R10,R11,LR}
1BF400:  ADD             R11, SP, #0x10
1BF404:  MOV             R4, R0
1BF408:  LDR             R0, =(dword_38279C - 0x1BF418)
1BF40C:  MOV             R5, R1
1BF410:  LDR             R0, [PC,R0]; dword_38279C ; key
1BF414:  BL              pthread_getspecific
1BF418:  CMP             R0, R4
1BF41C:  BNE             loc_1BF45C
1BF420:  LDR             R0, =(LogLevel_ptr - 0x1BF42C)
1BF424:  LDR             R0, [PC,R0]; LogLevel
1BF428:  LDR             R0, [R0]
1BF42C:  CMP             R0, #2
1BF430:  BCC             loc_1BF444
1BF434:  ADR             R0, aReleasecontext; "ReleaseContext"
1BF438:  ADR             R1, aPReleasedWhile; "%p released while current on thread\n"
1BF43C:  MOV             R2, R4
1BF440:  BL              j_al_print
1BF444:  LDR             R0, =(dword_38279C - 0x1BF454)
1BF448:  MOV             R1, #0; pointer
1BF44C:  LDR             R0, [PC,R0]; dword_38279C ; key
1BF450:  BL              pthread_setspecific
1BF454:  MOV             R0, R4
1BF458:  BL              j_ALCcontext_DecRef
1BF45C:  LDR             R0, =(dword_382830 - 0x1BF468)
1BF460:  ADD             R0, PC, R0; dword_382830
1BF464:  LDREX           R0, [R0]
1BF468:  CMP             R0, R4
1BF46C:  BNE             loc_1BF4A0
1BF470:  LDR             R0, =(dword_382830 - 0x1BF488)
1BF474:  MOV             R1, #0
1BF478:  LDR             R2, =(dword_382830 - 0x1BF48C)
1BF47C:  DMB             ISH
1BF480:  ADD             R0, PC, R0; dword_382830
1BF484:  ADD             R2, PC, R2; dword_382830
1BF488:  STREX           R3, R1, [R0]
1BF48C:  CMP             R3, #0
1BF490:  BEQ             loc_1BF4AC
1BF494:  LDREX           R3, [R2]
1BF498:  CMP             R3, R4
1BF49C:  BEQ             loc_1BF488
1BF4A0:  CLREX
1BF4A4:  DMB             ISH
1BF4A8:  B               loc_1BF4B8
1BF4AC:  MOV             R0, R4
1BF4B0:  DMB             ISH
1BF4B4:  BL              j_ALCcontext_DecRef
1BF4B8:  ADD             R6, R5, #8
1BF4BC:  MOV             R0, R6; mutex
1BF4C0:  BL              j_EnterCriticalSection
1BF4C4:  MOV             R0, #0x28950
1BF4CC:  LDR             R0, [R5,R0]!
1BF4D0:  CMP             R0, #0
1BF4D4:  BNE             loc_1BF4F4
1BF4D8:  B               loc_1BF528
1BF4DC:  CLREX
1BF4E0:  DMB             ISH
1BF4E4:  LDR             R5, [R5]
1BF4E8:  LDR             R0, [R5,#0x104]!
1BF4EC:  CMP             R0, #0
1BF4F0:  BEQ             loc_1BF528
1BF4F4:  LDR             R0, [R4,#0x104]
1BF4F8:  LDREX           R1, [R5]
1BF4FC:  CMP             R1, R4
1BF500:  BNE             loc_1BF4DC
1BF504:  DMB             ISH
1BF508:  STREX           R1, R0, [R5]
1BF50C:  CMP             R1, #0
1BF510:  BEQ             loc_1BF524
1BF514:  LDREX           R1, [R5]
1BF518:  CMP             R1, R4
1BF51C:  BEQ             loc_1BF508
1BF520:  B               loc_1BF4DC
1BF524:  DMB             ISH
1BF528:  MOV             R0, R6; mutex
1BF52C:  BL              j_LeaveCriticalSection
1BF530:  MOV             R0, R4
1BF534:  POP             {R4-R6,R10,R11,LR}
1BF538:  B               j_ALCcontext_DecRef
