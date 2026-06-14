; =========================================================
; Game Engine Function: sub_266750
; Address            : 0x266750 - 0x2667C2
; =========================================================

266750:  PUSH            {R4-R7,LR}
266752:  ADD             R7, SP, #0xC
266754:  PUSH.W          {R8}
266758:  SUB             SP, SP, #8
26675A:  MOV             R5, R0
26675C:  MOVW            R0, #:lower16:(elf_hash_chain+0x6048)
266760:  MOV             R4, R1
266762:  MOVT            R0, #:upper16:(elf_hash_chain+0x6048)
266766:  LDR             R6, [R4,R0]
266768:  LDRD.W          R8, R0, [R6,#0x10]
26676C:  LDR             R1, [R6,#0x18]
26676E:  BLX             __aeabi_uidiv
266772:  MOV             R2, R0
266774:  MOV             R0, R4
266776:  MOV             R1, R8
266778:  BLX             j_aluMixData
26677C:  LDR             R0, [R5]
26677E:  LDRD.W          R1, R2, [R6,#0x10]
266782:  LDR             R3, [R0]
266784:  MOV             R0, R5
266786:  BLX             R3
266788:  CBZ             R0, loc_2667BA
26678A:  LDR             R1, =(LogLevel_ptr - 0x266790)
26678C:  ADD             R1, PC; LogLevel_ptr
26678E:  LDR             R1, [R1]; LogLevel
266790:  LDR             R1, [R1]
266792:  CBZ             R1, loc_2667BA
266794:  SUBS            R0, #1
266796:  CMP             R0, #0xF
266798:  BHI             loc_2667A4
26679A:  LDR             R1, =(off_661DF0 - 0x2667A0); "Preconditions violated" ...
26679C:  ADD             R1, PC; off_661DF0
26679E:  LDR.W           R1, [R1,R0,LSL#2]
2667A2:  B               loc_2667A8
2667A4:  LDR             R1, =(aUnknownErrorCo - 0x2667AA); "Unknown error code"
2667A6:  ADD             R1, PC; "Unknown error code"
2667A8:  LDR             R0, =(aEe - 0x2667B4); "(EE)"
2667AA:  ADR             R3, aBqEnqueue; "bq->Enqueue"
2667AC:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x2667B6); "%s: %s\n"
2667AE:  STR             R1, [SP,#0x18+var_18]
2667B0:  ADD             R0, PC; "(EE)"
2667B2:  ADD             R2, PC; "%s: %s\n"
2667B4:  ADR             R1, aOpenslCallback; "opensl_callback"
2667B6:  BLX             j_al_print
2667BA:  ADD             SP, SP, #8
2667BC:  POP.W           {R8}
2667C0:  POP             {R4-R7,PC}
