; =========================================================
; Game Engine Function: sub_78420
; Address            : 0x78420 - 0x78680
; =========================================================

78420:  PUSH            {R4-R7,LR}
78422:  ADD             R7, SP, #0xC
78424:  PUSH.W          {R8,R9,R11}
78428:  VPUSH           {D8}
7842C:  SUB             SP, SP, #0x38
7842E:  MOV             R4, R0
78430:  LDR             R0, =(__stack_chk_guard_ptr - 0x7843C)
78432:  MOVS            R1, #0
78434:  MOV.W           R9, #0
78438:  ADD             R0, PC; __stack_chk_guard_ptr
7843A:  LDR             R0, [R0]; __stack_chk_guard
7843C:  LDR             R0, [R0]
7843E:  STR             R0, [SP,#0x58+var_24]
78440:  MOV             R0, R4
78442:  BL              sub_7D794
78446:  LDR             R0, =(_ZTV14selectorLayout - 0x7844C); `vtable for'selectorLayout ...
78448:  ADD             R0, PC; `vtable for'selectorLayout
7844A:  ADDS            R0, #8
7844C:  STR             R0, [R4]
7844E:  MOVS            R0, #0x90; unsigned int
78450:  BLX             j__Znwj; operator new(uint)
78454:  MOV             R5, R0
78456:  LDR             R0, =(off_114C24 - 0x78464)
78458:  VMOV.F32        S16, #0.5
7845C:  MOVW            R6, #0x6974
78460:  ADD             R0, PC; off_114C24
78462:  MOVT            R6, #0x6E6F
78466:  STR.W           R6, [SP,#0x58+var_3B]
7846A:  LDR.W           R8, [R0]; dword_116D58
7846E:  MOV             R0, #0x69736F50
78476:  STRB.W          R9, [SP,#0x58+var_37]
7847A:  STR.W           R0, [SP,#0x58+var_40+1]
7847E:  MOVS            R0, #0x10
78480:  VLDR            S0, [R8]
78484:  STRB.W          R0, [SP,#0x58+var_40]
78488:  VMUL.F32        S0, S0, S16
7848C:  VMOV            R2, S0
78490:  ADD             R1, SP, #0x58+var_40
78492:  MOV             R0, R5
78494:  BL              sub_7C9B0
78498:  LDRB.W          R0, [SP,#0x58+var_40]
7849C:  STR             R5, [R4,#0x6C]
7849E:  LSLS            R0, R0, #0x1F
784A0:  ITT NE
784A2:  LDRNE           R0, [SP,#0x58+var_3B+3]; void *
784A4:  BLXNE           j__ZdlPv; operator delete(void *)
784A8:  MOVS            R0, #0x90; unsigned int
784AA:  BLX             j__Znwj; operator new(uint)
784AE:  VLDR            S0, [R8]
784B2:  MOV             R5, R0
784B4:  MOVW            R0, #0x6F52
784B8:  STR.W           R6, [SP,#0x58+var_3B]
784BC:  VMUL.F32        S0, S0, S16
784C0:  MOVT            R0, #0x6174
784C4:  STR.W           R0, [SP,#0x58+var_40+1]
784C8:  MOVS            R0, #0
784CA:  STRB.W          R0, [SP,#0x58+var_37]
784CE:  MOVS            R0, #0x10
784D0:  STRB.W          R0, [SP,#0x58+var_40]
784D4:  VMOV            R2, S0
784D8:  ADD             R1, SP, #0x58+var_40
784DA:  MOV             R0, R5
784DC:  BL              sub_7C9B0
784E0:  LDRB.W          R0, [SP,#0x58+var_40]
784E4:  STR             R5, [R4,#0x70]
784E6:  LSLS            R0, R0, #0x1F
784E8:  ITT NE
784EA:  LDRNE           R0, [SP,#0x58+var_3B+3]; void *
784EC:  BLXNE           j__ZdlPv; operator delete(void *)
784F0:  MOVS            R0, #0x90; unsigned int
784F2:  BLX             j__Znwj; operator new(uint)
784F6:  VLDR            S0, [R8]
784FA:  MOV             R6, R0
784FC:  MOVW            R0, #0x6353
78500:  VMUL.F32        S0, S0, S16
78504:  MOVT            R0, #0x6C61
78508:  STR.W           R0, [SP,#0x58+var_40+1]
7850C:  MOVS            R0, #0xA
7850E:  STRB.W          R0, [SP,#0x58+var_40]
78512:  MOVS            R0, #0x65 ; 'e'
78514:  STRH.W          R0, [SP,#0x58+var_3B]
78518:  VMOV            R2, S0
7851C:  ADD             R5, SP, #0x58+var_40
7851E:  MOV             R0, R6
78520:  MOV             R1, R5
78522:  BL              sub_7C9B0
78526:  LDRB.W          R0, [SP,#0x58+var_40]
7852A:  STR             R6, [R4,#0x74]
7852C:  LSLS            R0, R0, #0x1F
7852E:  ITT NE
78530:  LDRNE           R0, [SP,#0x58+var_3B+3]; void *
78532:  BLXNE           j__ZdlPv; operator delete(void *)
78536:  LDR             R1, [R4,#0x6C]
78538:  MOV             R0, R4
7853A:  BL              sub_7C73C
7853E:  LDR             R1, [R4,#0x70]
78540:  MOV             R0, R4
78542:  BL              sub_7C73C
78546:  LDR             R1, [R4,#0x74]
78548:  MOV             R0, R4
7854A:  BL              sub_7C73C
7854E:  LDR             R0, [R4,#0x6C]
78550:  VMOV.F32        Q8, #1.0
78554:  MOV             R6, SP
78556:  LDR             R1, [R0,#0x54]
78558:  ADDS            R1, #0x60 ; '`'
7855A:  VST1.32         {D16-D17}, [R1]
7855E:  LDR             R1, [R4,#0x70]
78560:  LDR             R1, [R1,#0x54]
78562:  ADDS            R1, #0x60 ; '`'
78564:  VST1.32         {D16-D17}, [R1]
78568:  LDR             R1, [R4,#0x74]
7856A:  LDR             R1, [R1,#0x54]
7856C:  ADDS            R1, #0x60 ; '`'
7856E:  VST1.32         {D16-D17}, [R1]
78572:  ADR             R1, dword_786C0
78574:  LDR             R0, [R0,#0x54]
78576:  VLD1.64         {D16-D17}, [R1@128]
7857A:  ADDS            R0, #0x60 ; '`'
7857C:  VST1.32         {D16-D17}, [R0]
78580:  LDR             R0, [R4,#0x6C]
78582:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14selectorLayoutC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x7858A); `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_2,std::allocator<selectorLayout::selectorLayout(void)::$_2>,void ()(void)> ...
78584:  STR             R6, [SP,#0x58+var_48]
78586:  ADD             R1, PC; `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_2,std::allocator<selectorLayout::selectorLayout(void)::$_2>,void ()(void)>
78588:  STR             R4, [SP,#0x58+var_54]
7858A:  ADDS            R1, #8
7858C:  STR             R1, [SP,#0x58+var_58]
7858E:  STRD.W          R1, R4, [SP,#0x58+var_40]
78592:  ADD.W           R1, R0, #0x58 ; 'X'
78596:  MOV             R0, R5
78598:  STR             R5, [SP,#0x58+var_30]
7859A:  BL              sub_737F4
7859E:  LDR             R0, [SP,#0x58+var_30]
785A0:  CMP             R5, R0
785A2:  BEQ             loc_785AA
785A4:  CBZ             R0, loc_785B4
785A6:  MOVS            R1, #5
785A8:  B               loc_785AC
785AA:  MOVS            R1, #4
785AC:  LDR             R2, [R0]
785AE:  LDR.W           R1, [R2,R1,LSL#2]
785B2:  BLX             R1
785B4:  LDR             R0, [SP,#0x58+var_48]
785B6:  CMP             R6, R0
785B8:  BEQ             loc_785C0
785BA:  CBZ             R0, loc_785CA
785BC:  MOVS            R1, #5
785BE:  B               loc_785C2
785C0:  MOVS            R1, #4
785C2:  LDR             R2, [R0]
785C4:  LDR.W           R1, [R2,R1,LSL#2]
785C8:  BLX             R1
785CA:  LDR             R0, [R4,#0x70]
785CC:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14selectorLayoutC1EvE3$_3NS_9allocatorIS3_EEFvvEEE - 0x785D4); `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_3,std::allocator<selectorLayout::selectorLayout(void)::$_3>,void ()(void)> ...
785CE:  STR             R6, [SP,#0x58+var_48]
785D0:  ADD             R1, PC; `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_3,std::allocator<selectorLayout::selectorLayout(void)::$_3>,void ()(void)>
785D2:  STR             R4, [SP,#0x58+var_54]
785D4:  ADDS            R1, #8
785D6:  STR             R1, [SP,#0x58+var_58]
785D8:  STRD.W          R1, R4, [SP,#0x58+var_40]
785DC:  ADD.W           R1, R0, #0x58 ; 'X'
785E0:  MOV             R0, R5
785E2:  STR             R5, [SP,#0x58+var_30]
785E4:  BL              sub_737F4
785E8:  LDR             R0, [SP,#0x58+var_30]
785EA:  CMP             R5, R0
785EC:  BEQ             loc_785F4
785EE:  CBZ             R0, loc_785FE
785F0:  MOVS            R1, #5
785F2:  B               loc_785F6
785F4:  MOVS            R1, #4
785F6:  LDR             R2, [R0]
785F8:  LDR.W           R1, [R2,R1,LSL#2]
785FC:  BLX             R1
785FE:  LDR             R0, [SP,#0x58+var_48]
78600:  CMP             R6, R0
78602:  BEQ             loc_7860A
78604:  CBZ             R0, loc_78614
78606:  MOVS            R1, #5
78608:  B               loc_7860C
7860A:  MOVS            R1, #4
7860C:  LDR             R2, [R0]
7860E:  LDR.W           R1, [R2,R1,LSL#2]
78612:  BLX             R1
78614:  LDR             R0, [R4,#0x74]
78616:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14selectorLayoutC1EvE3$_4NS_9allocatorIS3_EEFvvEEE - 0x7861E); `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_4,std::allocator<selectorLayout::selectorLayout(void)::$_4>,void ()(void)> ...
78618:  STR             R6, [SP,#0x58+var_48]
7861A:  ADD             R1, PC; `vtable for'std::__function::__func<selectorLayout::selectorLayout(void)::$_4,std::allocator<selectorLayout::selectorLayout(void)::$_4>,void ()(void)>
7861C:  STR             R4, [SP,#0x58+var_54]
7861E:  ADDS            R1, #8
78620:  STR             R1, [SP,#0x58+var_58]
78622:  STRD.W          R1, R4, [SP,#0x58+var_40]
78626:  ADD.W           R1, R0, #0x58 ; 'X'
7862A:  MOV             R0, R5
7862C:  STR             R5, [SP,#0x58+var_30]
7862E:  BL              sub_737F4
78632:  LDR             R0, [SP,#0x58+var_30]
78634:  CMP             R5, R0
78636:  BEQ             loc_7863E
78638:  CBZ             R0, loc_78648
7863A:  MOVS            R1, #5
7863C:  B               loc_78640
7863E:  MOVS            R1, #4
78640:  LDR             R2, [R0]
78642:  LDR.W           R1, [R2,R1,LSL#2]
78646:  BLX             R1
78648:  LDR             R0, [SP,#0x58+var_48]
7864A:  CMP             R6, R0
7864C:  BEQ             loc_78654
7864E:  CBZ             R0, loc_7865E
78650:  MOVS            R1, #5
78652:  B               loc_78656
78654:  MOVS            R1, #4
78656:  LDR             R2, [R0]
78658:  LDR.W           R1, [R2,R1,LSL#2]
7865C:  BLX             R1
7865E:  LDR             R0, [SP,#0x58+var_24]
78660:  LDR             R1, =(__stack_chk_guard_ptr - 0x78666)
78662:  ADD             R1, PC; __stack_chk_guard_ptr
78664:  LDR             R1, [R1]; __stack_chk_guard
78666:  LDR             R1, [R1]
78668:  CMP             R1, R0
7866A:  ITTTT EQ
7866C:  MOVEQ           R0, R4
7866E:  ADDEQ           SP, SP, #0x38 ; '8'
78670:  VPOPEQ          {D8}
78674:  POPEQ.W         {R8,R9,R11}
78678:  IT EQ
7867A:  POPEQ           {R4-R7,PC}
7867C:  BLX             __stack_chk_fail
