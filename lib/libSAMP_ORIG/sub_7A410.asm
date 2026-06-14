; =========================================================
; Game Engine Function: sub_7A410
; Address            : 0x7A410 - 0x7A8EE
; =========================================================

7A410:  PUSH            {R4-R7,LR}
7A412:  ADD             R7, SP, #0xC
7A414:  PUSH.W          {R8}
7A418:  VPUSH           {D8-D15}
7A41C:  SUB             SP, SP, #0x70
7A41E:  LDR             R0, =(dword_1A4548 - 0x7A426)
7A420:  LDR             R2, =(dword_116D38 - 0x7A428)
7A422:  ADD             R0, PC; dword_1A4548
7A424:  ADD             R2, PC; dword_116D38
7A426:  LDR             R1, [R0]
7A428:  LDR             R0, [R2]
7A42A:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x7A434)
7A42E:  CMP             R1, #2
7A430:  ADD             R2, PC; __stack_chk_guard_ptr
7A432:  LDR             R2, [R2]; __stack_chk_guard
7A434:  LDR             R2, [R2]
7A436:  STR             R2, [SP,#0xC0+var_54]
7A438:  BEQ             loc_7A46C
7A43A:  CMP             R1, #1
7A43C:  BNE.W           loc_7A8D0
7A440:  LDR             R1, =(off_114AD8 - 0x7A44A)
7A442:  MOV.W           R3, #0x13A0
7A446:  ADD             R1, PC; off_114AD8
7A448:  LDR             R1, [R1]; dword_1A4434
7A44A:  LDR             R1, [R1]
7A44C:  LDR.W           R1, [R1,#0x3B0]
7A450:  LDR             R1, [R1]
7A452:  LDR             R2, =(off_114B58 - 0x7A45A)
7A454:  LDRH            R1, [R1,R3]
7A456:  ADD             R2, PC; off_114B58
7A458:  MOV.W           R3, #0x23C
7A45C:  LDR             R2, [R2]; unk_1176A0
7A45E:  MLA.W           R1, R1, R3, R2
7A462:  ADD.W           R0, R1, R0,LSL#2
7A466:  ADD.W           R0, R0, #0x214
7A46A:  B               loc_7A48C
7A46C:  UXTH            R0, R0
7A46E:  CMP.W           R0, #0x3E8
7A472:  BHI.W           loc_7A8D0
7A476:  LDR             R1, =(off_114AD8 - 0x7A47C)
7A478:  ADD             R1, PC; off_114AD8
7A47A:  LDR             R1, [R1]; dword_1A4434
7A47C:  LDR             R1, [R1]
7A47E:  LDR.W           R1, [R1,#0x3B0]
7A482:  LDR             R1, [R1,#0x10]
7A484:  ADD.W           R0, R1, R0,LSL#2
7A488:  ADD.W           R0, R0, #0x3EC
7A48C:  LDR             R0, [R0]
7A48E:  CMP             R0, #0
7A490:  BEQ.W           loc_7A8D0
7A494:  LDR             R0, [R0,#4]
7A496:  VLDR            S19, =0.0
7A49A:  CMP             R0, #0
7A49C:  BEQ             loc_7A560
7A49E:  VMOV.F32        S21, S19
7A4A2:  LDR             R0, [R0,#0x14]
7A4A4:  VMOV.F32        S23, S19
7A4A8:  VMOV.F32        S28, S19
7A4AC:  CMP             R0, #0
7A4AE:  VMOV.F32        S30, S19
7A4B2:  VMOV.F32        S17, S19
7A4B6:  VMOV.F32        S16, S19
7A4BA:  VMOV.F32        S18, S19
7A4BE:  VMOV.F32        S20, S19
7A4C2:  VMOV.F32        S0, S19
7A4C6:  VMOV.F32        S2, S19
7A4CA:  VMOV.F32        S4, S19
7A4CE:  BEQ             loc_7A58C
7A4D0:  LDR             R1, [R0,#0x20]
7A4D2:  LDR             R2, [R0,#0x18]
7A4D4:  LDR             R3, [R0,#0x24]
7A4D6:  LDR             R6, [R0,#0x14]
7A4D8:  VMOV            S0, R1
7A4DC:  LDR.W           R12, [R0]
7A4E0:  VMOV            S2, R2
7A4E4:  LDR             R5, [R0,#4]
7A4E6:  VMOV            S4, R3
7A4EA:  LDR             R4, [R0,#8]
7A4EC:  VMOV            S6, R6
7A4F0:  LDR             R1, [R0,#0x10]
7A4F2:  VMOV            S3, R12
7A4F6:  LDR             R2, [R0,#0x28]
7A4F8:  VMOV            S1, R5
7A4FC:  VLDR            S14, =0.6
7A500:  VMOV            S10, R4
7A504:  VMOV            S8, R1
7A508:  LDR             R1, [R0,#0x38]
7A50A:  VMOV            S12, R2
7A50E:  LDR             R2, [R0,#0x34]
7A510:  VMUL.F32        S18, S4, S14
7A514:  LDR             R0, [R0,#0x30]
7A516:  VMUL.F32        S16, S0, S14
7A51A:  VMUL.F32        S17, S2, S14
7A51E:  VMUL.F32        S20, S12, S14
7A522:  VMUL.F32        S30, S6, S14
7A526:  VMUL.F32        S28, S8, S14
7A52A:  VMUL.F32        S23, S10, S14
7A52E:  VMUL.F32        S21, S1, S14
7A532:  VMUL.F32        S19, S3, S14
7A536:  VMOV            S4, R1
7A53A:  VMOV            S2, R2
7A53E:  VMOV            S0, R0
7A542:  B               loc_7A58C
7A544:  DCD dword_1A4548 - 0x7A426
7A548:  DCD dword_116D38 - 0x7A428
7A54C:  DCD off_114AD8 - 0x7A44A
7A550:  DCD off_114B58 - 0x7A45A
7A554:  DCD off_114AD8 - 0x7A47C
7A558:  DCFS 0.0
7A55C:  DCFS 0.6
7A560:  VMOV.F32        S21, S19
7A564:  VMOV.F32        S23, S19
7A568:  VMOV.F32        S28, S19
7A56C:  VMOV.F32        S30, S19
7A570:  VMOV.F32        S17, S19
7A574:  VMOV.F32        S16, S19
7A578:  VMOV.F32        S18, S19
7A57C:  VMOV.F32        S20, S19
7A580:  VMOV.F32        S0, S19
7A584:  VMOV.F32        S2, S19
7A588:  VMOV.F32        S4, S19
7A58C:  LDR             R0, =(off_114AA8 - 0x7A59C)
7A58E:  MOVW            R8, #0x5799
7A592:  MOVS            R1, #0
7A594:  MOVT            R8, #0x5C ; '\'
7A598:  ADD             R0, PC; off_114AA8
7A59A:  STRD.W          R1, R1, [SP,#0xC0+var_C0]
7A59E:  ADD             R1, SP, #0xC0+var_78
7A5A0:  MOVS            R2, #0
7A5A2:  LDR             R5, [R0]; dword_1A4404
7A5A4:  MOVS            R3, #0
7A5A6:  VSTR            S4, [SP,#0xC0+var_64]
7A5AA:  VSTR            S2, [SP,#0xC0+var_68]
7A5AE:  LDR             R0, [R5]
7A5B0:  VSTR            S0, [SP,#0xC0+var_6C]
7A5B4:  ADD.W           R6, R0, R8
7A5B8:  ADD             R0, SP, #0xC0+var_6C
7A5BA:  BLX             R6
7A5BC:  CMP             R0, #0
7A5BE:  BEQ.W           loc_7A8D0
7A5C2:  VMOV.F32        S22, #1.0
7A5C6:  VLDR            S0, [SP,#0xC0+var_70]
7A5CA:  VCMP.F32        S0, S22
7A5CE:  VMRS            APSR_nzcv, FPSCR
7A5D2:  BMI.W           loc_7A8D0
7A5D6:  VLDR            S0, [SP,#0xC0+var_6C]
7A5DA:  ADD             R1, SP, #0xC0+var_60
7A5DC:  VLDR            S2, [SP,#0xC0+var_68]
7A5E0:  MOVS            R6, #0
7A5E2:  VLDR            S4, [SP,#0xC0+var_64]
7A5E6:  VSUB.F32        S0, S0, S19
7A5EA:  VSUB.F32        S2, S2, S21
7A5EE:  LDR             R0, [R5]
7A5F0:  VSUB.F32        S4, S4, S23
7A5F4:  MOVS            R2, #0
7A5F6:  ADD.W           R4, R0, R8
7A5FA:  ADD             R0, SP, #0xC0+var_B8
7A5FC:  MOVS            R3, #0
7A5FE:  VLDR            S24, [SP,#0xC0+var_78]
7A602:  VLDR            S26, [SP,#0xC0+var_74]
7A606:  STRD.W          R6, R6, [SP,#0xC0+var_C0]
7A60A:  VSTR            S0, [SP,#0xC0+var_B8]
7A60E:  VSTR            S2, [SP,#0xC0+var_B4]
7A612:  VSTR            S4, [SP,#0xC0+var_B0]
7A616:  BLX             R4
7A618:  VLDR            S4, [SP,#0xC0+var_58]
7A61C:  MOVS            R1, #0
7A61E:  VLDR            S2, [SP,#0xC0+var_5C]
7A622:  MOVS            R2, #0
7A624:  VCMP.F32        S4, S22
7A628:  VLDR            S0, [SP,#0xC0+var_60]
7A62C:  VMRS            APSR_nzcv, FPSCR
7A630:  VMOV.F32        S4, S26
7A634:  IT GE
7A636:  MOVGE           R1, #1
7A638:  ANDS            R0, R1
7A63A:  IT NE
7A63C:  VMOVNE.F32      S4, S2
7A640:  VMOV.F32        S2, S24
7A644:  IT NE
7A646:  VMOVNE.F32      S2, S0
7A64A:  VLDR            S0, [SP,#0xC0+var_6C]
7A64E:  VLDR            S6, [SP,#0xC0+var_68]
7A652:  ADD             R1, SP, #0xC0+var_60
7A654:  VLDR            S8, [SP,#0xC0+var_64]
7A658:  VADD.F32        S0, S19, S0
7A65C:  VADD.F32        S6, S21, S6
7A660:  LDR             R0, [R5]
7A662:  VADD.F32        S8, S23, S8
7A666:  MOVS            R3, #0
7A668:  ADD.W           R4, R0, R8
7A66C:  ADD             R0, SP, #0xC0+var_B8
7A66E:  VSTR            S4, [SP,#0xC0+var_7C]
7A672:  VSTR            S2, [SP,#0xC0+var_80]
7A676:  STRD.W          R6, R6, [SP,#0xC0+var_C0]
7A67A:  VSTR            S0, [SP,#0xC0+var_B8]
7A67E:  VSTR            S6, [SP,#0xC0+var_B4]
7A682:  VSTR            S8, [SP,#0xC0+var_B0]
7A686:  BLX             R4
7A688:  VLDR            S4, [SP,#0xC0+var_58]
7A68C:  MOVS            R1, #0
7A68E:  VLDR            S2, [SP,#0xC0+var_5C]
7A692:  MOVS            R2, #0
7A694:  VCMP.F32        S4, S22
7A698:  VLDR            S0, [SP,#0xC0+var_60]
7A69C:  VMRS            APSR_nzcv, FPSCR
7A6A0:  VMOV.F32        S4, S26
7A6A4:  IT GE
7A6A6:  MOVGE           R1, #1
7A6A8:  ANDS            R0, R1
7A6AA:  IT NE
7A6AC:  VMOVNE.F32      S4, S2
7A6B0:  VMOV.F32        S2, S24
7A6B4:  IT NE
7A6B6:  VMOVNE.F32      S2, S0
7A6BA:  VLDR            S0, [SP,#0xC0+var_6C]
7A6BE:  VLDR            S6, [SP,#0xC0+var_68]
7A6C2:  ADD             R1, SP, #0xC0+var_60
7A6C4:  VLDR            S8, [SP,#0xC0+var_64]
7A6C8:  VSUB.F32        S0, S0, S28
7A6CC:  VSUB.F32        S6, S6, S30
7A6D0:  LDR             R0, [R5]
7A6D2:  VSUB.F32        S8, S8, S17
7A6D6:  MOVS            R3, #0
7A6D8:  ADD.W           R4, R0, R8
7A6DC:  ADD             R0, SP, #0xC0+var_B8
7A6DE:  VSTR            S4, [SP,#0xC0+var_84]
7A6E2:  VSTR            S2, [SP,#0xC0+var_88]
7A6E6:  STRD.W          R6, R6, [SP,#0xC0+var_C0]
7A6EA:  VSTR            S0, [SP,#0xC0+var_B8]
7A6EE:  VSTR            S6, [SP,#0xC0+var_B4]
7A6F2:  VSTR            S8, [SP,#0xC0+var_B0]
7A6F6:  BLX             R4
7A6F8:  VLDR            S4, [SP,#0xC0+var_58]
7A6FC:  MOVS            R1, #0
7A6FE:  VLDR            S2, [SP,#0xC0+var_5C]
7A702:  MOVS            R2, #0
7A704:  VCMP.F32        S4, S22
7A708:  VLDR            S0, [SP,#0xC0+var_60]
7A70C:  VMRS            APSR_nzcv, FPSCR
7A710:  VMOV.F32        S4, S26
7A714:  IT GE
7A716:  MOVGE           R1, #1
7A718:  ANDS            R0, R1
7A71A:  IT NE
7A71C:  VMOVNE.F32      S4, S2
7A720:  VMOV.F32        S2, S24
7A724:  IT NE
7A726:  VMOVNE.F32      S2, S0
7A72A:  VLDR            S0, [SP,#0xC0+var_6C]
7A72E:  VLDR            S6, [SP,#0xC0+var_68]
7A732:  ADD             R1, SP, #0xC0+var_60
7A734:  VLDR            S8, [SP,#0xC0+var_64]
7A738:  VADD.F32        S0, S28, S0
7A73C:  VADD.F32        S6, S30, S6
7A740:  LDR             R0, [R5]
7A742:  VADD.F32        S8, S17, S8
7A746:  MOVS            R3, #0
7A748:  ADD.W           R4, R0, R8
7A74C:  ADD             R0, SP, #0xC0+var_B8
7A74E:  VSTR            S4, [SP,#0xC0+var_8C]
7A752:  VSTR            S2, [SP,#0xC0+var_90]
7A756:  STRD.W          R6, R6, [SP,#0xC0+var_C0]
7A75A:  VSTR            S0, [SP,#0xC0+var_B8]
7A75E:  VSTR            S6, [SP,#0xC0+var_B4]
7A762:  VSTR            S8, [SP,#0xC0+var_B0]
7A766:  BLX             R4
7A768:  VLDR            S4, [SP,#0xC0+var_58]
7A76C:  MOVS            R1, #0
7A76E:  VLDR            S2, [SP,#0xC0+var_5C]
7A772:  MOVS            R2, #0
7A774:  VCMP.F32        S4, S22
7A778:  VLDR            S0, [SP,#0xC0+var_60]
7A77C:  VMRS            APSR_nzcv, FPSCR
7A780:  VMOV.F32        S4, S26
7A784:  IT GE
7A786:  MOVGE           R1, #1
7A788:  ANDS            R0, R1
7A78A:  IT NE
7A78C:  VMOVNE.F32      S4, S2
7A790:  VMOV.F32        S2, S24
7A794:  IT NE
7A796:  VMOVNE.F32      S2, S0
7A79A:  VLDR            S0, [SP,#0xC0+var_6C]
7A79E:  VLDR            S6, [SP,#0xC0+var_68]
7A7A2:  ADD             R1, SP, #0xC0+var_60
7A7A4:  VLDR            S8, [SP,#0xC0+var_64]
7A7A8:  VSUB.F32        S0, S0, S16
7A7AC:  VSUB.F32        S6, S6, S18
7A7B0:  LDR             R0, [R5]
7A7B2:  VSUB.F32        S8, S8, S20
7A7B6:  MOVS            R3, #0
7A7B8:  ADD.W           R4, R0, R8
7A7BC:  ADD             R0, SP, #0xC0+var_B8
7A7BE:  VSTR            S4, [SP,#0xC0+var_94]
7A7C2:  VSTR            S2, [SP,#0xC0+var_98]
7A7C6:  STRD.W          R6, R6, [SP,#0xC0+var_C0]
7A7CA:  VSTR            S0, [SP,#0xC0+var_B8]
7A7CE:  VSTR            S6, [SP,#0xC0+var_B4]
7A7D2:  VSTR            S8, [SP,#0xC0+var_B0]
7A7D6:  BLX             R4
7A7D8:  VLDR            S4, [SP,#0xC0+var_58]
7A7DC:  MOVS            R1, #0
7A7DE:  VLDR            S2, [SP,#0xC0+var_5C]
7A7E2:  ADD             R4, SP, #0xC0+var_B8
7A7E4:  VCMP.F32        S4, S22
7A7E8:  VLDR            S0, [SP,#0xC0+var_60]
7A7EC:  VMRS            APSR_nzcv, FPSCR
7A7F0:  VMOV.F32        S4, S26
7A7F4:  IT GE
7A7F6:  MOVGE           R1, #1
7A7F8:  ANDS            R0, R1
7A7FA:  IT NE
7A7FC:  VMOVNE.F32      S4, S2
7A800:  VMOV.F32        S2, S24
7A804:  IT NE
7A806:  VMOVNE.F32      S2, S0
7A80A:  VLDR            S0, [SP,#0xC0+var_6C]
7A80E:  VLDR            S6, [SP,#0xC0+var_68]
7A812:  ADD             R1, SP, #0xC0+var_60
7A814:  VLDR            S8, [SP,#0xC0+var_64]
7A818:  VADD.F32        S0, S16, S0
7A81C:  VADD.F32        S6, S18, S6
7A820:  LDR             R0, [R5]
7A822:  VADD.F32        S8, S20, S8
7A826:  MOVS            R2, #0
7A828:  ADD.W           R5, R0, R8
7A82C:  MOV             R0, R4
7A82E:  MOVS            R3, #0
7A830:  VSTR            S4, [SP,#0xC0+var_9C]
7A834:  VSTR            S2, [SP,#0xC0+var_A0]
7A838:  STRD.W          R6, R6, [SP,#0xC0+var_C0]
7A83C:  VSTR            S0, [SP,#0xC0+var_B8]
7A840:  VSTR            S6, [SP,#0xC0+var_B4]
7A844:  VSTR            S8, [SP,#0xC0+var_B0]
7A848:  BLX             R5
7A84A:  VLDR            S4, [SP,#0xC0+var_58]
7A84E:  VLDR            S0, [SP,#0xC0+var_60]
7A852:  VLDR            S2, [SP,#0xC0+var_5C]
7A856:  VCMP.F32        S4, S22
7A85A:  LDR             R1, =(off_114B10 - 0x7A86A)
7A85C:  VMRS            APSR_nzcv, FPSCR
7A860:  IT GE
7A862:  MOVGE           R6, #1
7A864:  ANDS            R0, R6
7A866:  ADD             R1, PC; off_114B10
7A868:  ITT NE
7A86A:  VMOVNE.F32      S26, S2
7A86E:  VMOVNE.F32      S24, S0
7A872:  VSTR            S26, [SP,#0xC0+var_A4]
7A876:  LDR             R0, [R1]; dword_1A442C
7A878:  VSTR            S24, [SP,#0xC0+var_A8]
7A87C:  LDR             R0, [R0]
7A87E:  LDR             R5, [R0,#0x70]
7A880:  CBZ             R5, loc_7A8D0
7A882:  ADR             R0, dword_7A8F0
7A884:  MOVS            R6, #0
7A886:  VLD1.64         {D16-D17}, [R0@128]
7A88A:  ADD             R1, SP, #0xC0+var_80
7A88C:  ADD             R2, SP, #0xC0+var_88
7A88E:  MOVT            R6, #0x4040
7A892:  MOV             R0, R5
7A894:  MOV             R3, R4
7A896:  VST1.64         {D16-D17}, [R4]
7A89A:  STR             R6, [SP,#0xC0+var_C0]
7A89C:  BL              sub_71550
7A8A0:  ADR             R0, dword_7A900
7A8A2:  ADD             R1, SP, #0xC0+var_90
7A8A4:  VLD1.64         {D16-D17}, [R0@128]
7A8A8:  ADD             R2, SP, #0xC0+var_98
7A8AA:  MOV             R0, R5
7A8AC:  MOV             R3, R4
7A8AE:  VST1.64         {D16-D17}, [R4]
7A8B2:  STR             R6, [SP,#0xC0+var_C0]
7A8B4:  BL              sub_71550
7A8B8:  ADR             R0, dword_7A910
7A8BA:  ADD             R1, SP, #0xC0+var_A0
7A8BC:  VLD1.64         {D16-D17}, [R0@128]
7A8C0:  ADD             R2, SP, #0xC0+var_A8
7A8C2:  MOV             R0, R5
7A8C4:  MOV             R3, R4
7A8C6:  VST1.64         {D16-D17}, [R4]
7A8CA:  STR             R6, [SP,#0xC0+var_C0]
7A8CC:  BL              sub_71550
7A8D0:  LDR             R0, [SP,#0xC0+var_54]
7A8D2:  LDR             R1, =(__stack_chk_guard_ptr - 0x7A8D8)
7A8D4:  ADD             R1, PC; __stack_chk_guard_ptr
7A8D6:  LDR             R1, [R1]; __stack_chk_guard
7A8D8:  LDR             R1, [R1]
7A8DA:  CMP             R1, R0
7A8DC:  ITTTT EQ
7A8DE:  ADDEQ           SP, SP, #0x70 ; 'p'
7A8E0:  VPOPEQ          {D8-D15}
7A8E4:  POPEQ.W         {R8}
7A8E8:  POPEQ           {R4-R7,PC}
7A8EA:  BLX             __stack_chk_fail
