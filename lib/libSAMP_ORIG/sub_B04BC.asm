; =========================================================
; Game Engine Function: sub_B04BC
; Address            : 0xB04BC - 0xB075E
; =========================================================

B04BC:  PUSH            {R4-R7,LR}
B04BE:  ADD             R7, SP, #0xC
B04C0:  PUSH.W          {R8-R11}
B04C4:  SUB             SP, SP, #4
B04C6:  VPUSH           {D8-D9}
B04CA:  SUB             SP, SP, #0x40
B04CC:  MOV             R8, R0
B04CE:  LDR             R0, =(__stack_chk_guard_ptr - 0xB04DA)
B04D0:  VMOV.I32        Q8, #0
B04D4:  MOV             R2, R8
B04D6:  ADD             R0, PC; __stack_chk_guard_ptr
B04D8:  MOVS            R3, #0
B04DA:  MOV             R4, R1
B04DC:  LDR             R0, [R0]; __stack_chk_guard
B04DE:  LDR             R0, [R0]
B04E0:  STR             R0, [SP,#0x70+var_34]
B04E2:  VST1.64         {D16-D17}, [R2]!
B04E6:  VST1.64         {D16-D17}, [R2]!
B04EA:  VST1.64         {D16-D17}, [R2]!
B04EE:  LDRB            R0, [R1]
B04F0:  VST1.64         {D16-D17}, [R2]!
B04F4:  STR             R3, [R2]
B04F6:  LSLS            R2, R0, #0x1F
B04F8:  LDR             R1, [R1,#4]
B04FA:  IT EQ
B04FC:  LSREQ           R1, R0, #1
B04FE:  CMP             R1, #0
B0500:  BEQ.W           loc_B073C
B0504:  ADD             R0, SP, #0x70+var_40
B0506:  MOV             R1, R4
B0508:  BL              sub_B0130
B050C:  LDRD.W          R6, R9, [SP,#0x70+var_40]
B0510:  STR             R4, [SP,#0x70+var_64]
B0512:  CMP             R6, R9
B0514:  BEQ             loc_B051C
B0516:  MOV             R5, R6
B0518:  MOV             R11, R9
B051A:  B               loc_B0568
B051C:  MOVS            R0, #0
B051E:  STRB.W          R0, [SP,#0x70+var_47]
B0522:  MOV             R0, #0x6B70612E
B052A:  STR.W           R0, [SP,#0x70+var_4B]
B052E:  MOVS            R0, #8
B0530:  STRB.W          R0, [SP,#0x70+var_4C]
B0534:  ADD             R0, SP, #0x70+haystack
B0536:  ADD             R1, SP, #0x70+var_4C
B0538:  BL              sub_B0130
B053C:  CMP             R6, #0
B053E:  ITT NE
B0540:  MOVNE           R0, R6; void *
B0542:  BLXNE           j__ZdlPv; operator delete(void *)
B0546:  LDRB.W          R1, [SP,#0x70+var_4C]
B054A:  LDR             R0, [SP,#0x70+var_58]
B054C:  LDRD.W          R5, R11, [SP,#0x70+haystack]
B0550:  STR             R0, [SP,#0x70+var_38]
B0552:  LSLS            R0, R1, #0x1F
B0554:  STRD.W          R5, R11, [SP,#0x70+var_40]
B0558:  ITT NE
B055A:  LDRNE           R0, [SP,#0x70+var_44]; void *
B055C:  BLXNE           j__ZdlPv; operator delete(void *)
B0560:  CMP             R5, R11
B0562:  MOV             R4, R5
B0564:  BEQ.W           loc_B070C
B0568:  CMP             R5, R11
B056A:  BEQ.W           loc_B070A
B056E:  VMOV.I32        Q4, #0
B0572:  MOVW            R4, #0x457F
B0576:  STRD.W          R8, R9, [SP,#0x70+var_6C]
B057A:  MOV.W           R8, #0
B057E:  MOVT            R4, #0x464C
B0582:  B               loc_B0592
B0584:  ADD.W           R8, R8, #0x48 ; 'H'
B0588:  ADD.W           R0, R5, R8
B058C:  CMP             R0, R11
B058E:  BEQ.W           loc_B070A
B0592:  ADD.W           R9, R5, R8
B0596:  LDRB.W          R0, [R9,#0x38]
B059A:  LDR.W           R1, [R9,#0x3C]
B059E:  ANDS.W          R2, R0, #1
B05A2:  IT EQ
B05A4:  LSREQ           R1, R0, #1
B05A6:  CMP             R1, #0
B05A8:  BEQ             loc_B0584
B05AA:  LDRB.W          R0, [R9,#0x19]
B05AE:  CMP             R0, #0
B05B0:  BNE             loc_B0584
B05B2:  LDRB.W          R0, [R9,#0x1B]
B05B6:  CMP             R0, #0
B05B8:  ITTT NE
B05BA:  LDRNE.W         R0, [R5,R8]
B05BE:  LDRNE.W         R1, [R9,#4]
B05C2:  ORRSNE.W        R1, R1, R0
B05C6:  BEQ             loc_B0584
B05C8:  LDRD.W          R1, R3, [R9,#8]
B05CC:  ORRS            R1, R3
B05CE:  ITT NE
B05D0:  LDRBNE.W        R1, [R9,#0x18]
B05D4:  CMPNE           R1, #0
B05D6:  BEQ             loc_B0584
B05D8:  LDR.W           R1, [R9,#0x10]
B05DC:  CMP             R1, #5
B05DE:  BCC             loc_B0584
B05E0:  LDR             R0, [R0]
B05E2:  CMP             R0, R4
B05E4:  BNE             loc_B0584
B05E6:  LDR.W           R0, [R9,#0x40]
B05EA:  MOV             R10, R4
B05EC:  LDR             R1, =(aSystemBinLinke - 0xB05FA); "/system/bin/linker" ...
B05EE:  CMP             R2, #0
B05F0:  IT EQ
B05F2:  ADDEQ.W         R0, R9, #0x39 ; '9'; haystack
B05F6:  ADD             R1, PC; "/system/bin/linker"
B05F8:  BLX             strstr
B05FC:  CMP             R0, #0
B05FE:  BNE             loc_B068E
B0600:  ADD             R1, SP, #0x70+haystack
B0602:  VST1.64         {D8-D9}, [R1]
B0606:  LDR.W           R0, [R9]
B060A:  BLX             dladdr
B060E:  CMP             R0, #0
B0610:  MOV             R4, R10
B0612:  BEQ             loc_B0584
B0614:  LDR             R0, [SP,#0x70+haystack]; haystack
B0616:  CMP             R0, #0
B0618:  ITT NE
B061A:  LDRNE           R1, [SP,#0x70+var_5C]
B061C:  CMPNE           R1, #0
B061E:  BEQ             loc_B0584
B0620:  LDRD.W          R2, R3, [R9]
B0624:  EORS            R1, R2
B0626:  ORRS            R1, R3
B0628:  BNE             loc_B0584
B062A:  LDR             R1, [SP,#0x70+var_68]
B062C:  CMP             R6, R1
B062E:  BNE             loc_B06CE
B0630:  LDR             R3, [SP,#0x70+var_64]
B0632:  LDRB            R2, [R3]
B0634:  LDR             R1, [R3,#8]
B0636:  LSLS            R2, R2, #0x1F
B0638:  IT EQ
B063A:  ADDEQ           R1, R3, #1; needle
B063C:  BLX             strstr
B0640:  MOV             R4, R10
B0642:  CMP             R0, #0
B0644:  BEQ             loc_B0584
B0646:  MOV             R0, R9
B0648:  LDR             R4, [SP,#0x70+var_6C]
B064A:  VLD1.64         {D16-D17}, [R0]!
B064E:  ADD.W           R1, R9, #0x28 ; '('
B0652:  VLD1.64         {D18-D19}, [R0]!
B0656:  VLDR            D20, [R0]
B065A:  MOV             R0, R4
B065C:  VST1.64         {D16-D17}, [R0]!
B0660:  VST1.64         {D18-D19}, [R0]!
B0664:  VSTR            D20, [R0]
B0668:  ADD.W           R0, R4, #0x28 ; '('
B066C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
B0670:  LDR.W           R0, [R9,#0x34]
B0674:  ADD.W           R1, R9, #0x38 ; '8'
B0678:  ADD.W           R6, R4, #0x38 ; '8'
B067C:  STR             R0, [R4,#0x34]
B067E:  MOV             R0, R6
B0680:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
B0684:  LDR             R1, [SP,#0x70+haystack]; s
B0686:  MOV             R0, R6; int
B0688:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
B068C:  B               loc_B070A
B068E:  MOV             R0, R9
B0690:  LDR             R4, [SP,#0x70+var_6C]
B0692:  VLD1.64         {D16-D17}, [R0]!
B0696:  ADD.W           R1, R9, #0x28 ; '('
B069A:  VLD1.64         {D18-D19}, [R0]!
B069E:  VLDR            D20, [R0]
B06A2:  MOV             R0, R4
B06A4:  VST1.64         {D16-D17}, [R0]!
B06A8:  VST1.64         {D18-D19}, [R0]!
B06AC:  VSTR            D20, [R0]
B06B0:  ADD.W           R0, R4, #0x28 ; '('
B06B4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
B06B8:  LDR.W           R0, [R9,#0x34]
B06BC:  ADD.W           R1, R9, #0x38 ; '8'
B06C0:  STR             R0, [R4,#0x34]
B06C2:  ADD.W           R0, R4, #0x38 ; '8'
B06C6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
B06CA:  MOV             R4, R11
B06CC:  B               loc_B070C
B06CE:  MOV             R0, R9
B06D0:  LDR             R4, [SP,#0x70+var_6C]
B06D2:  VLD1.64         {D16-D17}, [R0]!
B06D6:  ADD.W           R1, R9, #0x28 ; '('
B06DA:  VLD1.64         {D18-D19}, [R0]!
B06DE:  VLDR            D20, [R0]
B06E2:  MOV             R0, R4
B06E4:  VST1.64         {D16-D17}, [R0]!
B06E8:  VST1.64         {D18-D19}, [R0]!
B06EC:  VSTR            D20, [R0]
B06F0:  ADD.W           R0, R4, #0x28 ; '('
B06F4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
B06F8:  LDR.W           R0, [R9,#0x34]
B06FC:  ADD.W           R1, R9, #0x38 ; '8'
B0700:  STR             R0, [R4,#0x34]
B0702:  ADD.W           R0, R4, #0x38 ; '8'
B0706:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
B070A:  MOV             R4, R11
B070C:  CBNZ            R5, loc_B0732
B070E:  B               loc_B073C
B0710:  LDRB.W          R0, [R4,#-0x10]
B0714:  LSLS            R0, R0, #0x1F
B0716:  ITT NE
B0718:  LDRNE.W         R0, [R4,#-8]; void *
B071C:  BLXNE           j__ZdlPv; operator delete(void *)
B0720:  LDRB.W          R0, [R4,#-0x20]
B0724:  LSLS            R0, R0, #0x1F
B0726:  ITT NE
B0728:  LDRNE.W         R0, [R4,#-0x18]; void *
B072C:  BLXNE           j__ZdlPv; operator delete(void *)
B0730:  SUBS            R4, #0x48 ; 'H'
B0732:  CMP             R4, R5
B0734:  BNE             loc_B0710
B0736:  MOV             R0, R5; void *
B0738:  BLX             j__ZdlPv; operator delete(void *)
B073C:  LDR             R0, [SP,#0x70+var_34]
B073E:  LDR             R1, =(__stack_chk_guard_ptr - 0xB0744)
B0740:  ADD             R1, PC; __stack_chk_guard_ptr
B0742:  LDR             R1, [R1]; __stack_chk_guard
B0744:  LDR             R1, [R1]
B0746:  CMP             R1, R0
B0748:  ITTTT EQ
B074A:  ADDEQ           SP, SP, #0x40 ; '@'
B074C:  VPOPEQ          {D8-D9}
B0750:  ADDEQ           SP, SP, #4
B0752:  POPEQ.W         {R8-R11}
B0756:  IT EQ
B0758:  POPEQ           {R4-R7,PC}
B075A:  BLX             __stack_chk_fail
