; =========================================================
; Game Engine Function: _ZN12SelectScreen16SettingSelection11HandleInputEPS_f
; Address            : 0x2A444C - 0x2A480E
; =========================================================

2A444C:  PUSH            {R4-R7,LR}
2A444E:  ADD             R7, SP, #0xC
2A4450:  PUSH.W          {R11}
2A4454:  VPUSH           {D8-D10}
2A4458:  MOV             R4, R0
2A445A:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A4466)
2A445E:  LDR             R1, [R4,#8]
2A4460:  MOV             R5, R2
2A4462:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A4464:  LDR             R0, [R0]; MobileSettings::settings ...
2A4466:  ADD.W           R0, R0, R1,LSL#5
2A446A:  LDR             R0, [R0,#0x1C]
2A446C:  CMP             R0, #1
2A446E:  BNE             loc_2A449C
2A4470:  MOVS            R0, #0x3E ; '>'
2A4472:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A4476:  CBNZ            R0, loc_2A4482
2A4478:  MOVS            R0, #0x1E
2A447A:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A447E:  CMP             R0, #1
2A4480:  BNE             loc_2A450E
2A4482:  MOVS            R0, #0x3E ; '>'
2A4484:  MOVS            R1, #0
2A4486:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2A448A:  CBNZ            R0, loc_2A4496
2A448C:  MOVS            R0, #0x1E
2A448E:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
2A4492:  CMP             R0, #1
2A4494:  BNE             loc_2A450E
2A4496:  VMOV.F32        S18, #-1.0
2A449A:  B               loc_2A4512
2A449C:  MOVS            R0, #0x40 ; '@'
2A449E:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A44A2:  CMP             R0, #1
2A44A4:  BNE             loc_2A44AE
2A44A6:  MOVS            R0, #0x40 ; '@'
2A44A8:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2A44AC:  CBNZ            R0, loc_2A44D4
2A44AE:  BLX             j__Z12RightPressedv; RightPressed(void)
2A44B2:  CBNZ            R0, loc_2A44D4
2A44B4:  LDR.W           R0, =(lastDevice_ptr - 0x2A44C0)
2A44B8:  LDR.W           R1, =(gMobileMenu_ptr - 0x2A44C2)
2A44BC:  ADD             R0, PC; lastDevice_ptr
2A44BE:  ADD             R1, PC; gMobileMenu_ptr
2A44C0:  LDR             R0, [R0]; lastDevice
2A44C2:  LDR             R1, [R1]; gMobileMenu
2A44C4:  LDR             R0, [R0]
2A44C6:  ADD.W           R0, R1, R0,LSL#2
2A44CA:  LDR.W           R0, [R0,#0x90]
2A44CE:  CBZ             R0, loc_2A44D4
2A44D0:  MOVS            R5, #0
2A44D2:  B               loc_2A4718
2A44D4:  LDR.W           R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2A44DE)
2A44D8:  LDR             R0, [R4,#8]
2A44DA:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2A44DC:  LDR             R1, [R1]; MobileSettings::settings ...
2A44DE:  ADD.W           R1, R1, R0,LSL#5
2A44E2:  LDR.W           R2, [R1,#8]!
2A44E6:  LDR             R3, [R1,#0xC]
2A44E8:  ADDS            R6, R2, #1
2A44EA:  STR             R6, [R1]
2A44EC:  CMP             R2, R3
2A44EE:  BLT             loc_2A4500
2A44F0:  LDR.W           R2, =(_ZN14MobileSettings8settingsE_ptr - 0x2A44F8)
2A44F4:  ADD             R2, PC; _ZN14MobileSettings8settingsE_ptr
2A44F6:  LDR             R2, [R2]; MobileSettings::settings ...
2A44F8:  ADD.W           R0, R2, R0,LSL#5
2A44FC:  LDR             R0, [R0,#0x10]
2A44FE:  STR             R0, [R1]
2A4500:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2A4504:  CMP             R0, #0
2A4506:  BEQ.W           loc_2A4704
2A450A:  MOVS            R5, #1
2A450C:  B               loc_2A4718
2A450E:  VLDR            S18, =0.0
2A4512:  MOVS            R0, #0x3F ; '?'
2A4514:  VMOV            S16, R5
2A4518:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A451C:  CBNZ            R0, loc_2A4528
2A451E:  MOVS            R0, #0x1E
2A4520:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A4524:  CMP             R0, #1
2A4526:  BNE             loc_2A453E
2A4528:  MOVS            R0, #0x3F ; '?'
2A452A:  MOVS            R1, #0
2A452C:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2A4530:  VMOV.F32        S20, #1.0
2A4534:  CBNZ            R0, loc_2A454E
2A4536:  MOVS            R0, #0x1E
2A4538:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
2A453C:  CBNZ            R0, loc_2A454E
2A453E:  VCMP.F32        S18, #0.0
2A4542:  VMRS            APSR_nzcv, FPSCR
2A4546:  BEQ.W           loc_2A47D4
2A454A:  VMOV.F32        S20, S18
2A454E:  VLDR            S0, [R4,#0xC]
2A4552:  ADD.W           R6, R4, #0xC
2A4556:  VCMP.F32        S0, #0.0
2A455A:  VMRS            APSR_nzcv, FPSCR
2A455E:  BNE             loc_2A4578
2A4560:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2A4564:  CBNZ            R0, loc_2A4578
2A4566:  LDR             R0, =(AudioEngine_ptr - 0x2A4574)
2A4568:  MOVS            R1, #1; int
2A456A:  MOVS            R2, #0; float
2A456C:  MOV.W           R3, #0x3F800000; float
2A4570:  ADD             R0, PC; AudioEngine_ptr
2A4572:  LDR             R0, [R0]; AudioEngine ; this
2A4574:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
2A4578:  VMOV.F32        S18, S20
2A457C:  VMUL.F32        S2, S18, S16
2A4580:  VMOV.F32        S0, #20.0
2A4584:  VMOV.F32        S16, #1.0
2A4588:  VMUL.F32        S0, S2, S0
2A458C:  VLDR            S2, [R6]
2A4590:  VADD.F32        S0, S0, S2
2A4594:  VCMPE.F32       S0, S16
2A4598:  VSTR            S0, [R6]
2A459C:  VMRS            APSR_nzcv, FPSCR
2A45A0:  BLE             loc_2A45DA
2A45A2:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A45AC)
2A45A4:  VMOV.F32        S2, #-1.0
2A45A8:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A45AA:  LDR             R0, [R0]; MobileSettings::settings ...
2A45AC:  LDR             R1, [R4,#8]
2A45AE:  ADD.W           R1, R0, R1,LSL#5
2A45B2:  LDR.W           R2, [R1,#8]!
2A45B6:  LDR             R3, [R1,#0xC]
2A45B8:  CMP             R2, R3
2A45BA:  ITTT NE
2A45BC:  ADDNE           R2, #1
2A45BE:  STRNE           R2, [R1]
2A45C0:  VLDRNE          S0, [R6]
2A45C4:  VADD.F32        S0, S0, S2
2A45C8:  VCMPE.F32       S0, S16
2A45CC:  VSTR            S0, [R6]
2A45D0:  VMRS            APSR_nzcv, FPSCR
2A45D4:  BGT             loc_2A45AC
2A45D6:  MOVS            R5, #1
2A45D8:  B               loc_2A45DC
2A45DA:  MOVS            R5, #0
2A45DC:  VMOV.F32        S2, #-1.0
2A45E0:  VCMPE.F32       S0, S2
2A45E4:  VMRS            APSR_nzcv, FPSCR
2A45E8:  BGE             loc_2A461C
2A45EA:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A45F0)
2A45EC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A45EE:  LDR             R0, [R0]; MobileSettings::settings ...
2A45F0:  LDR             R1, [R4,#8]
2A45F2:  ADD.W           R1, R0, R1,LSL#5
2A45F6:  LDR.W           R2, [R1,#8]!
2A45FA:  LDR             R3, [R1,#8]
2A45FC:  CMP             R2, R3
2A45FE:  ITTT NE
2A4600:  SUBNE           R2, #1
2A4602:  STRNE           R2, [R1]
2A4604:  VLDRNE          S0, [R6]
2A4608:  VADD.F32        S0, S0, S16
2A460C:  VCMPE.F32       S0, S2
2A4610:  VSTR            S0, [R6]
2A4614:  VMRS            APSR_nzcv, FPSCR
2A4618:  BLT             loc_2A45F0
2A461A:  MOVS            R5, #1
2A461C:  LDR             R0, =(gMobileMenu_ptr - 0x2A4622)
2A461E:  ADD             R0, PC; gMobileMenu_ptr
2A4620:  LDR             R0, [R0]; gMobileMenu
2A4622:  LDRB.W          R0, [R0,#(byte_6E00DA - 0x6E006C)]
2A4626:  CMP             R0, #0
2A4628:  BEQ.W           loc_2A4740
2A462C:  LDR             R0, =(lastDevice_ptr - 0x2A4634)
2A462E:  LDR             R1, =(gMobileMenu_ptr - 0x2A463A)
2A4630:  ADD             R0, PC; lastDevice_ptr
2A4632:  VLDR            S0, [R4,#0x10]
2A4636:  ADD             R1, PC; gMobileMenu_ptr
2A4638:  VLDR            S2, [R4,#0x14]
2A463C:  LDR             R0, [R0]; lastDevice
2A463E:  LDR             R1, [R1]; gMobileMenu
2A4640:  VSUB.F32        S2, S2, S0
2A4644:  LDR             R0, [R0]
2A4646:  ADD.W           R2, R1, R0,LSL#3
2A464A:  VLDR            S4, [R2,#0x70]
2A464E:  VSUB.F32        S0, S4, S0
2A4652:  VDIV.F32        S18, S0, S2
2A4656:  VCMPE.F32       S18, S16
2A465A:  VMRS            APSR_nzcv, FPSCR
2A465E:  BGE             loc_2A4692
2A4660:  ADD.W           R0, R1, R0,LSL#2
2A4664:  LDR.W           R0, [R0,#0x90]
2A4668:  CMP             R0, #2
2A466A:  BNE             loc_2A4692
2A466C:  VCMPE.F32       S18, #0.0
2A4670:  VMRS            APSR_nzcv, FPSCR
2A4674:  BLE             loc_2A4692
2A4676:  MOVS            R0, #1
2A4678:  STRB            R0, [R4,#0x18]
2A467A:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2A467E:  CBNZ            R0, loc_2A4692
2A4680:  LDR             R0, =(AudioEngine_ptr - 0x2A468E)
2A4682:  MOVS            R1, #1; int
2A4684:  MOVS            R2, #0; float
2A4686:  MOV.W           R3, #0x3F800000; float
2A468A:  ADD             R0, PC; AudioEngine_ptr
2A468C:  LDR             R0, [R0]; AudioEngine ; this
2A468E:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
2A4692:  LDRB            R0, [R4,#0x18]
2A4694:  CMP             R0, #0
2A4696:  BEQ             loc_2A474A
2A4698:  LDR             R0, =(lastDevice_ptr - 0x2A46A0)
2A469A:  LDR             R1, =(gMobileMenu_ptr - 0x2A46A2)
2A469C:  ADD             R0, PC; lastDevice_ptr
2A469E:  ADD             R1, PC; gMobileMenu_ptr
2A46A0:  LDR             R0, [R0]; lastDevice
2A46A2:  LDR             R1, [R1]; gMobileMenu
2A46A4:  LDR             R0, [R0]
2A46A6:  ADD.W           R0, R1, R0,LSL#2
2A46AA:  LDR.W           R0, [R0,#0x90]
2A46AE:  CMP             R0, #0
2A46B0:  BEQ.W           loc_2A47DA
2A46B4:  CMP             R0, #3
2A46B6:  BNE             loc_2A474A
2A46B8:  VCMPE.F32       S18, #0.0
2A46BC:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A46C8)
2A46BE:  VMRS            APSR_nzcv, FPSCR
2A46C2:  LDR             R1, [R4,#8]
2A46C4:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A46C6:  VLDR            S2, =0.0
2A46CA:  VMIN.F32        D0, D9, D8
2A46CE:  LDR             R0, [R0]; MobileSettings::settings ...
2A46D0:  ADD.W           R0, R0, R1,LSL#5
2A46D4:  LDR.W           R2, [R0,#8]!
2A46D8:  LDRD.W          R1, R3, [R0,#8]
2A46DC:  SUB.W           R3, R3, R1
2A46E0:  IT LT
2A46E2:  VMOVLT.F32      S0, S2
2A46E6:  VMOV            S2, R3
2A46EA:  VCVT.F32.S32    S2, S2
2A46EE:  VMUL.F32        S0, S0, S2
2A46F2:  VCVT.S32.F32    S0, S0
2A46F6:  VMOV            R3, S0
2A46FA:  ADD             R1, R3
2A46FC:  CMP             R1, R2
2A46FE:  BEQ             loc_2A474A
2A4700:  STR             R1, [R0]
2A4702:  B               loc_2A4776
2A4704:  LDR             R0, =(AudioEngine_ptr - 0x2A4712)
2A4706:  MOVS            R1, #1; int
2A4708:  MOVS            R2, #0; float
2A470A:  MOV.W           R3, #0x3F800000; float
2A470E:  ADD             R0, PC; AudioEngine_ptr
2A4710:  MOVS            R5, #1
2A4712:  LDR             R0, [R0]; AudioEngine ; this
2A4714:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
2A4718:  BLX             j__Z11LeftPressedv; LeftPressed(void)
2A471C:  CMP             R0, #1
2A471E:  BNE             loc_2A473A
2A4720:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A4728)
2A4722:  LDR             R1, [R4,#8]
2A4724:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A4726:  LDR             R0, [R0]; MobileSettings::settings ...
2A4728:  ADD.W           R0, R0, R1,LSL#5
2A472C:  LDR.W           R2, [R0,#8]!
2A4730:  LDR             R3, [R0,#8]
2A4732:  CMP             R2, R3
2A4734:  BLE             loc_2A4750
2A4736:  SUBS            R1, R2, #1
2A4738:  B               loc_2A475C
2A473A:  CMP             R5, #1
2A473C:  BEQ             loc_2A4776
2A473E:  B               def_2A477E; jumptable 002A477E default case, cases 10,13,15-32
2A4740:  LDRB            R0, [R4,#0x18]
2A4742:  CMP             R0, #0
2A4744:  ITT NE
2A4746:  MOVNE           R0, #0
2A4748:  STRBNE          R0, [R4,#0x18]
2A474A:  CMP             R5, #0
2A474C:  BEQ             def_2A477E; jumptable 002A477E default case, cases 10,13,15-32
2A474E:  B               loc_2A4776
2A4750:  LDR             R2, =(_ZN14MobileSettings8settingsE_ptr - 0x2A4756)
2A4752:  ADD             R2, PC; _ZN14MobileSettings8settingsE_ptr
2A4754:  LDR             R2, [R2]; MobileSettings::settings ...
2A4756:  ADD.W           R1, R2, R1,LSL#5
2A475A:  LDR             R1, [R1,#0x14]
2A475C:  STR             R1, [R0]
2A475E:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2A4762:  CBNZ            R0, loc_2A4776
2A4764:  LDR             R0, =(AudioEngine_ptr - 0x2A4772)
2A4766:  MOVS            R1, #1; int
2A4768:  MOVS            R2, #0; float
2A476A:  MOV.W           R3, #0x3F800000; float
2A476E:  ADD             R0, PC; AudioEngine_ptr
2A4770:  LDR             R0, [R0]; AudioEngine ; this
2A4772:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
2A4776:  LDR             R0, [R4,#8]
2A4778:  SUBS            R0, #9; switch 25 cases
2A477A:  CMP             R0, #0x18
2A477C:  BHI             def_2A477E; jumptable 002A477E default case, cases 10,13,15-32
2A477E:  TBB.W           [PC,R0]; switch jump
2A4782:  DCB 0x10; jump table for switch statement
2A4783:  DCB 0x32
2A4784:  DCB 0xD
2A4785:  DCB 0xD
2A4786:  DCB 0x32
2A4787:  DCB 0x13
2A4788:  DCB 0x32
2A4789:  DCB 0x32
2A478A:  DCB 0x32
2A478B:  DCB 0x32
2A478C:  DCB 0x32
2A478D:  DCB 0x32
2A478E:  DCB 0x32
2A478F:  DCB 0x32
2A4790:  DCB 0x32
2A4791:  DCB 0x32
2A4792:  DCB 0x32
2A4793:  DCB 0x32
2A4794:  DCB 0x32
2A4795:  DCB 0x32
2A4796:  DCB 0x32
2A4797:  DCB 0x32
2A4798:  DCB 0x32
2A4799:  DCB 0x32
2A479A:  DCB 0x1E
2A479B:  ALIGN 2
2A479C:  BLX             j__Z23Menu_ApplyAudioSettingsv; jumptable 002A477E cases 11,12
2A47A0:  B               def_2A477E; jumptable 002A477E default case, cases 10,13,15-32
2A47A2:  BLX             j__ZN15CTouchInterface18SetupLayoutObjectsEv; jumptable 002A477E case 9
2A47A6:  B               def_2A477E; jumptable 002A477E default case, cases 10,13,15-32
2A47A8:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A47B0); jumptable 002A477E case 14
2A47AA:  LDR             R2, =(AudioEngine_ptr - 0x2A47B2)
2A47AC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A47AE:  ADD             R2, PC; AudioEngine_ptr
2A47B0:  LDR             R0, [R0]; MobileSettings::settings ...
2A47B2:  LDRSB.W         R1, [R0,#(dword_6E05BC - 0x6E03F4)]; signed __int8
2A47B6:  LDR             R0, [R2]; AudioEngine ; this
2A47B8:  BLX             j__ZN12CAudioEngine11RetuneRadioEa; CAudioEngine::RetuneRadio(signed char)
2A47BC:  B               def_2A477E; jumptable 002A477E default case, cases 10,13,15-32
2A47BE:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2A47C6); jumptable 002A477E case 33
2A47C0:  LDR             R2, =(AEAudioHardware_ptr - 0x2A47C8)
2A47C2:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2A47C4:  ADD             R2, PC; AEAudioHardware_ptr
2A47C6:  LDR             R0, [R0]; MobileSettings::settings ...
2A47C8:  LDR.W           R1, [R0,#(dword_6E081C - 0x6E03F4)]; int
2A47CC:  LDR             R0, [R2]; AEAudioHardware ; this
2A47CE:  BLX             j__ZN16CAEAudioHardware7SetHRTFEi; CAEAudioHardware::SetHRTF(int)
2A47D2:  B               def_2A477E; jumptable 002A477E default case, cases 10,13,15-32
2A47D4:  ADD.W           R6, R4, #0xC
2A47D8:  B               loc_2A457C
2A47DA:  LDR             R0, [R4]
2A47DC:  LDR             R1, [R0,#0x20]
2A47DE:  MOV             R0, R4
2A47E0:  BLX             R1
2A47E2:  CMP             R5, #0
2A47E4:  BNE             loc_2A4776
2A47E6:  LDR             R0, =(_ZZN12SelectScreen16SettingSelection11HandleInputEPS_fE33WaitingForScreenRecordingResponse_ptr - 0x2A47EC); jumptable 002A477E default case, cases 10,13,15-32
2A47E8:  ADD             R0, PC; _ZZN12SelectScreen16SettingSelection11HandleInputEPS_fE33WaitingForScreenRecordingResponse_ptr
2A47EA:  LDR             R0, [R0]; SelectScreen::SettingSelection::HandleInput(SelectScreen*,float)::WaitingForScreenRecordingResponse ...
2A47EC:  LDRB            R0, [R0]; SelectScreen::SettingSelection::HandleInput(SelectScreen*,float)::WaitingForScreenRecordingResponse
2A47EE:  CBZ             R0, loc_2A4804
2A47F0:  LDR             R0, =(_ZZN12SelectScreen16SettingSelection11HandleInputEPS_fE33WaitingForScreenRecordingResponse_ptr - 0x2A47FA)
2A47F2:  MOVS            R2, #0
2A47F4:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2A47FC)
2A47F6:  ADD             R0, PC; _ZZN12SelectScreen16SettingSelection11HandleInputEPS_fE33WaitingForScreenRecordingResponse_ptr
2A47F8:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2A47FA:  LDR             R0, [R0]; SelectScreen::SettingSelection::HandleInput(SelectScreen*,float)::WaitingForScreenRecordingResponse ...
2A47FC:  LDR             R1, [R1]; MobileSettings::settings ...
2A47FE:  STRB            R2, [R0]; SelectScreen::SettingSelection::HandleInput(SelectScreen*,float)::WaitingForScreenRecordingResponse
2A4800:  STR.W           R2, [R1,#(dword_6E087C - 0x6E03F4)]
2A4804:  VPOP            {D8-D10}
2A4808:  POP.W           {R11}
2A480C:  POP             {R4-R7,PC}
