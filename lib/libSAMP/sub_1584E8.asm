; =========================================================
; Game Engine Function: sub_1584E8
; Address            : 0x1584E8 - 0x158608
; =========================================================

1584E8:  PUSH            {R4-R7,LR}
1584EA:  ADD             R7, SP, #0xC
1584EC:  PUSH.W          {R11}
1584F0:  SUBW            SP, SP, #0x818
1584F4:  MOV             R5, R0
1584F6:  STR             R0, [SP,#0x828+var_824]
1584F8:  BLX             j__ZNSt6__ndk119__thread_local_dataEv; std::__thread_local_data(void)
1584FC:  LDR             R1, [R5]; pointer
1584FE:  MOVS            R6, #0
158500:  LDR             R0, [R0]; key
158502:  STR             R6, [R5]
158504:  BLX             pthread_setspecific
158508:  VLDR            D16, [R5,#8]
15850C:  ADD             R1, SP, #0x828+var_820
15850E:  LDRD.W          R0, R2, [R5,#0x10]
158512:  VSTR            D16, [SP,#0x828+var_820]
158516:  LDR             R4, [R5,#4]
158518:  STRD.W          R6, R6, [R5,#4]
15851C:  STRD.W          R6, R6, [R5,#0xC]
158520:  ADDS            R5, R1, #1
158522:  LDRB.W          R1, [SP,#0x828+var_820]
158526:  STRD.W          R0, R4, [SP,#0x828+var_818]
15852A:  LSLS            R1, R1, #0x1F
15852C:  MOV.W           R3, #0
158530:  MOV.W           R1, #0
158534:  STR             R6, [SP,#0x828+var_828]
158536:  IT EQ
158538:  MOVEQ           R0, R5
15853A:  BL              sub_164AD0
15853E:  MOV             R6, R0
158540:  CBZ             R0, loc_158566
158542:  MOVS            R0, #4; unsigned int
158544:  BLX             j__Znwj; operator new(uint)
158548:  MOV             R5, R0
15854A:  STR             R6, [R0]
15854C:  STR             R0, [SP,#0x828+s]
15854E:  MOVS            R0, #0x10; unsigned int
158550:  BLX             j__Znwj; operator new(uint)
158554:  LDR             R1, =(_ZTVNSt6__ndk120__shared_ptr_pointerIPjZL17MakeSharedHStreamjE3$_2NS_9allocatorIjEEEE - 0x158560); `vtable for'std::__shared_ptr_pointer<uint *,MakeSharedHStream(uint)::$_2,std::allocator<uint>> ...
158556:  MOVS            R2, #0
158558:  STRD.W          R2, R5, [R0,#8]
15855C:  ADD             R1, PC; `vtable for'std::__shared_ptr_pointer<uint *,MakeSharedHStream(uint)::$_2,std::allocator<uint>>
15855E:  ADDS            R1, #8
158560:  STRD.W          R1, R2, [R0]
158564:  B               loc_1585A4
158566:  LDRB.W          R0, [SP,#0x828+var_820]
15856A:  LDR             R3, [SP,#0x828+var_818]
15856C:  LDR             R2, =(aBassStreamcrea_3 - 0x158578); "BASS_StreamCreateURL: url - %s" ...
15856E:  LSLS            R0, R0, #0x1F
158570:  IT EQ
158572:  MOVEQ           R3, R5
158574:  ADD             R2, PC; "BASS_StreamCreateURL: url - %s"
158576:  ADD             R0, SP, #0x828+s
158578:  BL              sub_1586B2
15857C:  ADD             R1, SP, #0x828+s; s
15857E:  MOVS            R0, #3; int
158580:  BL              sub_159B70
158584:  BL              sub_1649EC
158588:  BL              sub_159660
15858C:  LDR             R2, =(aBassStreamcrea_2 - 0x158594); "BASS_StreamCreateURL: error - %s" ...
15858E:  MOV             R3, R0
158590:  ADD             R2, PC; "BASS_StreamCreateURL: error - %s"
158592:  ADD             R0, SP, #0x828+s
158594:  BL              sub_1586B2
158598:  ADD             R1, SP, #0x828+s; s
15859A:  MOVS            R0, #3; int
15859C:  BL              sub_159B70
1585A0:  MOVS            R0, #0
1585A2:  STR             R0, [SP,#0x828+s]
1585A4:  STR             R0, [SP,#0x828+var_80C]
1585A6:  CBZ             R4, loc_158602
1585A8:  ADD             R1, SP, #0x828+s
1585AA:  MOV             R0, R4
1585AC:  BL              sub_1586DC
1585B0:  LDR             R4, [SP,#0x828+var_80C]
1585B2:  CBZ             R4, loc_1585DC
1585B4:  ADDS            R0, R4, #4
1585B6:  DMB.W           ISH
1585BA:  LDREX.W         R1, [R0]
1585BE:  SUBS            R2, R1, #1
1585C0:  STREX.W         R3, R2, [R0]
1585C4:  CMP             R3, #0
1585C6:  BNE             loc_1585BA
1585C8:  DMB.W           ISH
1585CC:  CBNZ            R1, loc_1585DC
1585CE:  LDR             R0, [R4]
1585D0:  LDR             R1, [R0,#8]
1585D2:  MOV             R0, R4
1585D4:  BLX             R1
1585D6:  MOV             R0, R4; this
1585D8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1585DC:  LDRB.W          R0, [SP,#0x828+var_820]
1585E0:  LSLS            R0, R0, #0x1F
1585E2:  ITT NE
1585E4:  LDRNE           R0, [SP,#0x828+var_818]; void *
1585E6:  BLXNE           j__ZdlPv; operator delete(void *)
1585EA:  ADD             R0, SP, #0x828+var_814
1585EC:  BL              sub_1580F4
1585F0:  ADD             R0, SP, #0x828+var_824
1585F2:  BL              sub_158680
1585F6:  MOVS            R0, #0
1585F8:  ADDW            SP, SP, #0x818
1585FC:  POP.W           {R11}
158600:  POP             {R4-R7,PC}
158602:  MOVS            R0, #3
158604:  BL              sub_158460
