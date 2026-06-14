; =========================================================
; Game Engine Function: sub_135498
; Address            : 0x135498 - 0x135698
; =========================================================

135498:  PUSH            {R4-R7,LR}
13549A:  ADD             R7, SP, #0xC
13549C:  PUSH.W          {R8-R11}
1354A0:  SUB             SP, SP, #4
1354A2:  VPUSH           {D8}
1354A6:  SUB             SP, SP, #0x40; float
1354A8:  MOV             R9, R1
1354AA:  MOVS            R1, #0
1354AC:  MOV             R10, R2
1354AE:  MOV             R4, R0
1354B0:  MOVS            R5, #0
1354B2:  BL              sub_13D71C
1354B6:  LDR             R0, =(_ZTVN13ControlLayout11ValueEditorE - 0x1354C2); `vtable for'ControlLayout::ValueEditor ...
1354B8:  MOV             R8, R4
1354BA:  VMOV.I32        Q8, #0
1354BE:  ADD             R0, PC; `vtable for'ControlLayout::ValueEditor
1354C0:  ADDS            R0, #8
1354C2:  STR.W           R0, [R8],#0x78
1354C6:  MOV             R0, R8
1354C8:  VST1.32         {D16-D17}, [R0]!
1354CC:  STR             R5, [R0]
1354CE:  MOVS            R0, #0x70 ; 'p'; unsigned int
1354D0:  BLX             j__Znwj; operator new(uint)
1354D4:  LDR             R1, =(asc_8D18E - 0x1354DC); "<<" ...
1354D6:  MOV             R6, R0
1354D8:  ADD             R1, PC; "<<"
1354DA:  ADD             R0, SP, #0x68+var_40; int
1354DC:  BL              sub_DC6DC
1354E0:  LDR             R0, =(off_234980 - 0x1354EA)
1354E2:  VMOV.F32        S16, #0.5
1354E6:  ADD             R0, PC; off_234980
1354E8:  LDR             R5, [R0]; dword_238EC0
1354EA:  VLDR            S0, [R5]
1354EE:  VMUL.F32        S0, S0, S16
1354F2:  VMOV            R2, S0
1354F6:  ADD             R1, SP, #0x68+var_40
1354F8:  MOV             R0, R6
1354FA:  BL              sub_13CE34
1354FE:  LDRB.W          R0, [SP,#0x68+var_40]
135502:  STR             R6, [R4,#0x6C]
135504:  LSLS            R0, R0, #0x1F
135506:  BEQ             loc_135510
135508:  LDR             R0, [SP,#0x68+var_38]; void *
13550A:  BLX             j__ZdlPv; operator delete(void *)
13550E:  LDR             R6, [R4,#0x6C]
135510:  MOV             R0, R4
135512:  MOV             R1, R6
135514:  BL              sub_12BDF6
135518:  MOVS            R0, #0x70 ; 'p'; unsigned int
13551A:  BLX             j__Znwj; operator new(uint)
13551E:  LDR             R1, =(asc_84107 - 0x135526); ">>" ...
135520:  MOV             R6, R0
135522:  ADD             R1, PC; ">>"
135524:  ADD             R0, SP, #0x68+var_40; int
135526:  BL              sub_DC6DC
13552A:  VLDR            S0, [R5]
13552E:  VMUL.F32        S0, S0, S16
135532:  VMOV            R2, S0
135536:  ADD.W           R11, SP, #0x68+var_40
13553A:  MOV             R0, R6
13553C:  MOV             R1, R11
13553E:  BL              sub_13CE34
135542:  LDRB.W          R0, [SP,#0x68+var_40]
135546:  STR             R6, [R4,#0x70]
135548:  LSLS            R0, R0, #0x1F
13554A:  BEQ             loc_135554
13554C:  LDR             R0, [SP,#0x68+var_38]; void *
13554E:  BLX             j__ZdlPv; operator delete(void *)
135552:  LDR             R6, [R4,#0x70]
135554:  MOV             R0, R4
135556:  MOV             R1, R6
135558:  BL              sub_12BDF6
13555C:  MOVS            R0, #0x78 ; 'x'; unsigned int
13555E:  BLX             j__Znwj; operator new(uint)
135562:  VMOV.F32        Q8, #1.0
135566:  VLDR            S0, [R5]
13556A:  MOV             R6, R0
13556C:  VMUL.F32        S0, S0, S16
135570:  VST1.64         {D16-D17}, [R11]
135574:  MOV             R1, R9; int
135576:  MOV             R2, R11; int
135578:  MOVS            R3, #1; int
13557A:  VSTR            S0, [SP,#0x68+var_68]
13557E:  BL              sub_13D3DC
135582:  STR             R6, [R4,#0x74]
135584:  MOV             R0, R4
135586:  MOV             R1, R6
135588:  BL              sub_12BDF6
13558C:  MOV             R0, R8
13558E:  MOV             R1, R9
135590:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
135594:  LDR             R0, [R4,#0x70]
135596:  VLD1.32         {D16-D17}, [R10]
13559A:  LDR             R0, [R0,#0x54]
13559C:  STR             R4, [SP,#0x68+var_50]
13559E:  ADDS            R0, #0x60 ; '`'
1355A0:  VST1.32         {D16-D17}, [R0]
1355A4:  LDR             R0, [R4,#0x6C]
1355A6:  VLD1.32         {D16-D17}, [R10]
1355AA:  LDR             R0, [R0,#0x54]
1355AC:  ADDS            R0, #0x60 ; '`'
1355AE:  VST1.32         {D16-D17}, [R0]
1355B2:  LDR             R0, [R4,#0x74]
1355B4:  VLD1.32         {D16-D17}, [R10]
1355B8:  ADDS            R0, #0x60 ; '`'
1355BA:  VST1.32         {D16-D17}, [R0]
1355BE:  ADD             R0, SP, #0x68+var_50
1355C0:  ADDS            R5, R0, #4
1355C2:  LDR.W           R10, [R4,#0x6C]
1355C6:  MOV             R0, R5
1355C8:  MOV             R1, R9
1355CA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1355CE:  MOVS            R0, #0
1355D0:  STR             R0, [SP,#0x68+var_30]
1355D2:  MOVS            R0, #0x14; unsigned int
1355D4:  BLX             j__Znwj; operator new(uint)
1355D8:  MOV             R6, R0
1355DA:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN13ControlLayout11ValueEditorC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK7ImColorE3$_6NS7_ISF_EEFvvEEE - 0x1355E2); `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6>,void ()(void)> ...
1355DC:  LDR             R1, [SP,#0x68+var_50]
1355DE:  ADD             R0, PC; `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_6>,void ()(void)>
1355E0:  ADDS            R0, #8
1355E2:  STRD.W          R0, R1, [R6]
1355E6:  ADD.W           R0, R6, #8
1355EA:  MOV             R1, R5
1355EC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1355F0:  STR             R6, [SP,#0x68+var_30]
1355F2:  ADD             R5, SP, #0x68+var_40
1355F4:  ADD.W           R0, R10, #0x58 ; 'X'
1355F8:  MOV             R1, R5
1355FA:  BL              sub_12C504
1355FE:  LDR             R0, [SP,#0x68+var_30]
135600:  CMP             R5, R0
135602:  BEQ             loc_13560A
135604:  CBZ             R0, loc_135614
135606:  MOVS            R1, #5
135608:  B               loc_13560C
13560A:  MOVS            R1, #4
13560C:  LDR             R2, [R0]
13560E:  LDR.W           R1, [R2,R1,LSL#2]
135612:  BLX             R1
135614:  LDRB.W          R0, [SP,#0x68+var_4C]
135618:  LSLS            R0, R0, #0x1F
13561A:  ITT NE
13561C:  LDRNE           R0, [SP,#0x68+var_44]; void *
13561E:  BLXNE           j__ZdlPv; operator delete(void *)
135622:  ADD             R0, SP, #0x68+var_60
135624:  LDR.W           R10, [R4,#0x70]
135628:  ADDS            R5, R0, #4
13562A:  STR             R4, [SP,#0x68+var_60]
13562C:  MOV             R0, R5
13562E:  MOV             R1, R9
135630:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
135634:  MOVS            R0, #0
135636:  STR             R0, [SP,#0x68+var_30]
135638:  MOVS            R0, #0x14; unsigned int
13563A:  BLX             j__Znwj; operator new(uint)
13563E:  MOV             R6, R0
135640:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN13ControlLayout11ValueEditorC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK7ImColorE3$_7NS7_ISF_EEFvvEEE - 0x135648); `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)> ...
135642:  LDR             R1, [SP,#0x68+var_60]
135644:  ADD             R0, PC; `vtable for'std::__function::__func<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7,std::allocator<ControlLayout::ValueEditor::ValueEditor(std::string const&,ImColor const&)::$_7>,void ()(void)>
135646:  ADDS            R0, #8
135648:  STRD.W          R0, R1, [R6]
13564C:  ADD.W           R0, R6, #8
135650:  MOV             R1, R5
135652:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
135656:  STR             R6, [SP,#0x68+var_30]
135658:  ADD             R5, SP, #0x68+var_40
13565A:  ADD.W           R0, R10, #0x58 ; 'X'
13565E:  MOV             R1, R5
135660:  BL              sub_12C504
135664:  LDR             R0, [SP,#0x68+var_30]
135666:  CMP             R5, R0
135668:  BEQ             loc_135670
13566A:  CBZ             R0, loc_13567A
13566C:  MOVS            R1, #5
13566E:  B               loc_135672
135670:  MOVS            R1, #4
135672:  LDR             R2, [R0]
135674:  LDR.W           R1, [R2,R1,LSL#2]
135678:  BLX             R1
13567A:  LDRB.W          R0, [SP,#0x68+var_5C]
13567E:  LSLS            R0, R0, #0x1F
135680:  ITT NE
135682:  LDRNE           R0, [SP,#0x68+var_54]; void *
135684:  BLXNE           j__ZdlPv; operator delete(void *)
135688:  MOV             R0, R4
13568A:  ADD             SP, SP, #0x40 ; '@'
13568C:  VPOP            {D8}
135690:  ADD             SP, SP, #4
135692:  POP.W           {R8-R11}
135696:  POP             {R4-R7,PC}
