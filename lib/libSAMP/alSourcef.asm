; =========================================================
; Game Engine Function: alSourcef
; Address            : 0x1CB3A0 - 0x1CB764
; =========================================================

1CB3A0:  PUSH            {R4-R7,R11,LR}
1CB3A4:  ADD             R11, SP, #0x10
1CB3A8:  VPUSH           {D8}
1CB3AC:  MOV             R7, R2
1CB3B0:  MOV             R6, R1
1CB3B4:  MOV             R5, R0
1CB3B8:  BL              j_GetContextRef
1CB3BC:  MOV             R4, R0
1CB3C0:  CMP             R4, #0
1CB3C4:  BEQ             loc_1CB534
1CB3C8:  ADD             R0, R4, #0x7C ; '|'
1CB3CC:  MOV             R1, R5
1CB3D0:  BL              j_LookupUIntMapKey
1CB3D4:  MOV             R5, R0
1CB3D8:  CMP             R5, #0
1CB3DC:  BEQ             loc_1CB53C
1CB3E0:  VMOV            S16, R7
1CB3E4:  CMP             R6, #0xC000
1CB3E8:  BGE             loc_1CB548
1CB3EC:  MOVW            R0, #0x1001
1CB3F0:  SUB             R0, R6, R0
1CB3F4:  CMP             R0, #0x25; switch 38 cases
1CB3F8:  BHI             def_1CB408; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB3FC:  ADR             R1, jpt_1CB408
1CB400:  MOV             R0, R0,LSL#2
1CB404:  LDR             R0, [R0,R1]
1CB408:  ADD             PC, R0, R1; switch jump
1CB40C:  DCD loc_1CB5D0 - 0x1CB40C; jump table for switch statement
1CB410:  DCD loc_1CB5F4 - 0x1CB40C; jumptable 001CB408 case 1
1CB414:  DCD loc_1CB618 - 0x1CB40C; jumptable 001CB408 case 2
1CB418:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB41C:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB420:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB424:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB428:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB42C:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB430:  DCD loc_1CB62C - 0x1CB40C; jumptable 001CB408 case 9
1CB434:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB438:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB43C:  DCD loc_1CB640 - 0x1CB40C; jumptable 001CB408 case 12
1CB440:  DCD loc_1CB664 - 0x1CB40C; jumptable 001CB408 case 13
1CB444:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB448:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB44C:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB450:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB454:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB458:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB45C:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB460:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB464:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB468:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB46C:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB470:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB474:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB478:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB47C:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB480:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB484:  DCD def_1CB408 - 0x1CB40C; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB488:  DCD loc_1CB688 - 0x1CB40C; jumptable 001CB408 case 31
1CB48C:  DCD loc_1CB69C - 0x1CB40C; jumptable 001CB408 case 32
1CB490:  DCD loc_1CB6B0 - 0x1CB40C; jumptable 001CB408 case 33
1CB494:  DCD loc_1CB6D4 - 0x1CB40C; jumptable 001CB408 case 34
1CB498:  DCD loc_1CB4A4 - 0x1CB40C; jumptable 001CB408 cases 35-37
1CB49C:  DCD loc_1CB4A4 - 0x1CB40C; jumptable 001CB408 cases 35-37
1CB4A0:  DCD loc_1CB4A4 - 0x1CB40C; jumptable 001CB408 cases 35-37
1CB4A4:  VCMPE.F32       S16, #0.0; jumptable 001CB408 cases 35-37
1CB4A8:  VMRS            APSR_nzcv, FPSCR
1CB4AC:  BLT             loc_1CB73C
1CB4B0:  LDR             R0, [R4,#0xFC]
1CB4B4:  ADD             R0, R0, #8; mutex
1CB4B8:  BL              j_EnterCriticalSection
1CB4BC:  VLDR            S0, =1000.0
1CB4C0:  MOVW            R0, #0x1024
1CB4C4:  CMP             R6, R0
1CB4C8:  MOVW            R1, #0x1012
1CB4CC:  VMUL.F32        S0, S16, S0
1CB4D0:  VMOVEQ.F32      S16, S0
1CB4D4:  VCVT.S32.F32    S0, S16
1CB4D8:  LDR             R0, [R5,#0x5C]
1CB4DC:  STR             R6, [R5,#0xC8]
1CB4E0:  CMP             R0, R1
1CB4E4:  VSTR            S0, [R5,#0xC4]
1CB4E8:  BEQ             loc_1CB4FC
1CB4EC:  LDR             R0, [R5,#0x5C]
1CB4F0:  MOVW            R1, #0x1013
1CB4F4:  CMP             R0, R1
1CB4F8:  BNE             loc_1CB524
1CB4FC:  LDR             R0, [R4,#0xE0]
1CB500:  CMP             R0, #0
1CB504:  BNE             loc_1CB524
1CB508:  MOV             R0, R5
1CB50C:  BL              j_ApplyOffset
1CB510:  CMP             R0, #0
1CB514:  BNE             loc_1CB524
1CB518:  MOV             R0, R4
1CB51C:  MOVW            R1, #0xA003
1CB520:  BL              j_alSetError
1CB524:  LDR             R0, [R4,#0xFC]
1CB528:  ADD             R0, R0, #8; mutex
1CB52C:  BL              j_LeaveCriticalSection
1CB530:  B               loc_1CB748
1CB534:  VPOP            {D8}
1CB538:  POP             {R4-R7,R11,PC}
1CB53C:  MOV             R0, R4
1CB540:  MOVW            R1, #0xA001
1CB544:  B               loc_1CB744
1CB548:  MOV             R0, #0x20007
1CB550:  CMP             R6, R0
1CB554:  BGT             loc_1CB58C
1CB558:  CMP             R6, #0xC000
1CB55C:  BEQ             loc_1CB6E8
1CB560:  CMP             R6, R0
1CB564:  BNE             def_1CB408; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB568:  VCMPE.F32       S16, #0.0
1CB56C:  VMRS            APSR_nzcv, FPSCR
1CB570:  BLT             loc_1CB73C
1CB574:  VMOV.F32        S0, #10.0
1CB578:  VCMPE.F32       S16, S0
1CB57C:  VMRS            APSR_nzcv, FPSCR
1CB580:  BGT             loc_1CB73C
1CB584:  VSTR            S16, [R5,#0xB8]
1CB588:  B               loc_1CB72C
1CB58C:  MOV             R0, #0x20008
1CB594:  CMP             R6, R0
1CB598:  BEQ             loc_1CB70C
1CB59C:  MOV             R0, #0x20009
1CB5A4:  CMP             R6, R0
1CB5A8:  BNE             def_1CB408; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB5AC:  VCMPE.F32       S16, #0.0
1CB5B0:  VMRS            APSR_nzcv, FPSCR
1CB5B4:  BLT             loc_1CB73C
1CB5B8:  VMOV.F32        S0, #1.0
1CB5BC:  VCMPE.F32       S16, S0
1CB5C0:  VMRS            APSR_nzcv, FPSCR
1CB5C4:  BGT             loc_1CB73C
1CB5C8:  VSTR            S16, [R5,#0xB4]
1CB5CC:  B               loc_1CB72C
1CB5D0:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 0
1CB5D4:  VMRS            APSR_nzcv, FPSCR
1CB5D8:  BLT             loc_1CB73C
1CB5DC:  VLDR            S0, =360.0
1CB5E0:  VCMPE.F32       S16, S0
1CB5E4:  VMRS            APSR_nzcv, FPSCR
1CB5E8:  BGT             loc_1CB73C
1CB5EC:  VSTR            S16, [R5,#0x14]
1CB5F0:  B               loc_1CB72C
1CB5F4:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 1
1CB5F8:  VMRS            APSR_nzcv, FPSCR
1CB5FC:  BLT             loc_1CB73C
1CB600:  VLDR            S0, =360.0
1CB604:  VCMPE.F32       S16, S0
1CB608:  VMRS            APSR_nzcv, FPSCR
1CB60C:  BGT             loc_1CB73C
1CB610:  VSTR            S16, [R5,#0x18]
1CB614:  B               loc_1CB72C
1CB618:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 2
1CB61C:  VMRS            APSR_nzcv, FPSCR
1CB620:  BLT             loc_1CB73C
1CB624:  VSTR            S16, [R5]
1CB628:  B               loc_1CB72C
1CB62C:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 9
1CB630:  VMRS            APSR_nzcv, FPSCR
1CB634:  BLT             loc_1CB73C
1CB638:  VSTR            S16, [R5,#4]
1CB63C:  B               loc_1CB72C
1CB640:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 12
1CB644:  VMRS            APSR_nzcv, FPSCR
1CB648:  BLT             loc_1CB73C
1CB64C:  VMOV.F32        S0, #1.0
1CB650:  VCMPE.F32       S16, S0
1CB654:  VMRS            APSR_nzcv, FPSCR
1CB658:  BGT             loc_1CB73C
1CB65C:  VSTR            S16, [R5,#0xC]
1CB660:  B               loc_1CB72C
1CB664:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 13
1CB668:  VMRS            APSR_nzcv, FPSCR
1CB66C:  BLT             loc_1CB73C
1CB670:  VMOV.F32        S0, #1.0
1CB674:  VCMPE.F32       S16, S0
1CB678:  VMRS            APSR_nzcv, FPSCR
1CB67C:  BGT             loc_1CB73C
1CB680:  VSTR            S16, [R5,#0x10]
1CB684:  B               loc_1CB72C
1CB688:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 31
1CB68C:  VMRS            APSR_nzcv, FPSCR
1CB690:  BLT             loc_1CB73C
1CB694:  VSTR            S16, [R5,#0x1C]
1CB698:  B               loc_1CB72C
1CB69C:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 32
1CB6A0:  VMRS            APSR_nzcv, FPSCR
1CB6A4:  BLT             loc_1CB73C
1CB6A8:  VSTR            S16, [R5,#0x24]
1CB6AC:  B               loc_1CB72C
1CB6B0:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 33
1CB6B4:  VMRS            APSR_nzcv, FPSCR
1CB6B8:  BLT             loc_1CB73C
1CB6BC:  VMOV.F32        S0, #1.0
1CB6C0:  VCMPE.F32       S16, S0
1CB6C4:  VMRS            APSR_nzcv, FPSCR
1CB6C8:  BGT             loc_1CB73C
1CB6CC:  VSTR            S16, [R5,#8]
1CB6D0:  B               loc_1CB72C
1CB6D4:  VCMPE.F32       S16, #0.0; jumptable 001CB408 case 34
1CB6D8:  VMRS            APSR_nzcv, FPSCR
1CB6DC:  BLT             loc_1CB73C
1CB6E0:  VSTR            S16, [R5,#0x20]
1CB6E4:  B               loc_1CB72C
1CB6E8:  VCMPE.F32       S16, #0.0
1CB6EC:  VMRS            APSR_nzcv, FPSCR
1CB6F0:  BLT             loc_1CB73C
1CB6F4:  VMOV.F32        S0, #1.0
1CB6F8:  VCMPE.F32       S16, S0
1CB6FC:  VMRS            APSR_nzcv, FPSCR
1CB700:  BGT             loc_1CB73C
1CB704:  VSTR            S16, [R5,#0xC0]
1CB708:  B               loc_1CB72C
1CB70C:  VCMPE.F32       S16, #0.0
1CB710:  VMRS            APSR_nzcv, FPSCR
1CB714:  BLT             loc_1CB73C
1CB718:  VMOV.F32        S0, #10.0
1CB71C:  VCMPE.F32       S16, S0
1CB720:  VMRS            APSR_nzcv, FPSCR
1CB724:  BGT             loc_1CB73C
1CB728:  VSTR            S16, [R5,#0xBC]
1CB72C:  MOVW            R0, #0x1F9C
1CB730:  MOV             R1, #1
1CB734:  STR             R1, [R5,R0]
1CB738:  B               loc_1CB748
1CB73C:  MOV             R0, R4
1CB740:  MOVW            R1, #0xA003
1CB744:  BL              j_alSetError
1CB748:  MOV             R0, R4
1CB74C:  VPOP            {D8}
1CB750:  POP             {R4-R7,R11,LR}
1CB754:  B               j_ALCcontext_DecRef
1CB758:  MOV             R0, R4; jumptable 001CB408 default case, cases 3-8,10,11,14-30
1CB75C:  MOVW            R1, #0xA002
1CB760:  B               loc_1CB744
