; =========================================================
; Game Engine Function: _ZN9ES2Shader6SelectEv
; Address            : 0x1CD368 - 0x1CD7FC
; =========================================================

1CD368:  PUSH            {R4,R6,R7,LR}
1CD36A:  ADD             R7, SP, #8
1CD36C:  MOV             R4, R0
1CD36E:  LDR.W           R0, =(renderQueue_ptr - 0x1CD376)
1CD372:  ADD             R0, PC; renderQueue_ptr
1CD374:  LDR             R0, [R0]; renderQueue
1CD376:  LDR             R0, [R0]; this
1CD378:  LDR.W           R2, [R0,#0x270]
1CD37C:  LDR.W           R1, [R0,#0x264]
1CD380:  ADDW            R2, R2, #0x403
1CD384:  CMP             R2, R1
1CD386:  BLS             loc_1CD396
1CD388:  BLX             j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1CD38C:  LDR.W           R0, =(renderQueue_ptr - 0x1CD394)
1CD390:  ADD             R0, PC; renderQueue_ptr
1CD392:  LDR             R0, [R0]; renderQueue
1CD394:  LDR             R0, [R0]
1CD396:  LDR.W           R1, =(renderQueue_ptr - 0x1CD3A4)
1CD39A:  MOVS            R3, #0x11
1CD39C:  LDR.W           R2, [R0,#0x274]
1CD3A0:  ADD             R1, PC; renderQueue_ptr
1CD3A2:  STR.W           R3, [R0,#0x278]
1CD3A6:  STR             R3, [R2]
1CD3A8:  LDR.W           R2, [R0,#0x274]
1CD3AC:  LDR             R1, [R1]; renderQueue
1CD3AE:  ADDS            R2, #4
1CD3B0:  STR.W           R2, [R0,#0x274]
1CD3B4:  LDR             R0, [R1]
1CD3B6:  LDR.W           R1, [R0,#0x274]
1CD3BA:  STR             R4, [R1]
1CD3BC:  LDR.W           R1, [R0,#0x274]
1CD3C0:  ADDS            R1, #4
1CD3C2:  STR.W           R1, [R0,#0x274]
1CD3C6:  ADDS            R0, R4, #4; this
1CD3C8:  MOVS            R1, #0; unsigned int
1CD3CA:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD3CE:  ADD.W           R0, R4, #0x20 ; ' '; this
1CD3D2:  MOVS            R1, #1; unsigned int
1CD3D4:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD3D8:  ADD.W           R0, R4, #0x3C ; '<'; this
1CD3DC:  MOVS            R1, #2; unsigned int
1CD3DE:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD3E2:  ADD.W           R0, R4, #0x58 ; 'X'; this
1CD3E6:  MOVS            R1, #3; unsigned int
1CD3E8:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD3EC:  ADD.W           R0, R4, #0x74 ; 't'; this
1CD3F0:  MOVS            R1, #4; unsigned int
1CD3F2:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD3F6:  ADD.W           R0, R4, #0x90; this
1CD3FA:  MOVS            R1, #5; unsigned int
1CD3FC:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD400:  ADD.W           R0, R4, #0xAC; this
1CD404:  MOVS            R1, #6; unsigned int
1CD406:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD40A:  ADD.W           R0, R4, #0xC8; this
1CD40E:  MOVS            R1, #7; unsigned int
1CD410:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD414:  ADD.W           R0, R4, #0xE4; this
1CD418:  MOVS            R1, #8; unsigned int
1CD41A:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD41E:  ADD.W           R0, R4, #0x100; this
1CD422:  MOVS            R1, #9; unsigned int
1CD424:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD428:  ADD.W           R0, R4, #0x11C; this
1CD42C:  MOVS            R1, #0xA; unsigned int
1CD42E:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD432:  ADD.W           R0, R4, #0x138; this
1CD436:  MOVS            R1, #0xB; unsigned int
1CD438:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD43C:  ADD.W           R0, R4, #0x154; this
1CD440:  MOVS            R1, #0xC; unsigned int
1CD442:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD446:  ADD.W           R0, R4, #0x170; this
1CD44A:  MOVS            R1, #0xD; unsigned int
1CD44C:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD450:  ADD.W           R0, R4, #0x18C; this
1CD454:  MOVS            R1, #0xE; unsigned int
1CD456:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD45A:  ADD.W           R0, R4, #0x1A8; this
1CD45E:  MOVS            R1, #0xF; unsigned int
1CD460:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD464:  ADD.W           R0, R4, #0x1C4; this
1CD468:  MOVS            R1, #0x10; unsigned int
1CD46A:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD46E:  ADD.W           R0, R4, #0x1E0; this
1CD472:  MOVS            R1, #0x11; unsigned int
1CD474:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD478:  ADD.W           R0, R4, #0x1FC; this
1CD47C:  MOVS            R1, #0x12; unsigned int
1CD47E:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD482:  ADD.W           R0, R4, #0x218; this
1CD486:  MOVS            R1, #0x13; unsigned int
1CD488:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD48C:  ADD.W           R0, R4, #0x234; this
1CD490:  MOVS            R1, #0x14; unsigned int
1CD492:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD496:  ADD.W           R0, R4, #0x250; this
1CD49A:  MOVS            R1, #0x15; unsigned int
1CD49C:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD4A0:  ADD.W           R0, R4, #0x26C; this
1CD4A4:  MOVS            R1, #0x16; unsigned int
1CD4A6:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD4AA:  ADD.W           R0, R4, #0x288; this
1CD4AE:  MOVS            R1, #0x17; unsigned int
1CD4B0:  BLX             j__ZN16ES2VectorBinding5ApplyEj; ES2VectorBinding::Apply(uint)
1CD4B4:  LDRB.W          R0, [R4,#0x2A8]
1CD4B8:  CMP             R0, #0
1CD4BA:  ITT NE
1CD4BC:  LDRNE.W         R0, [R4,#0x2A4]
1CD4C0:  ADDSNE.W        R0, R0, #1
1CD4C4:  BEQ             loc_1CD54A
1CD4C6:  LDR             R0, =(renderQueue_ptr - 0x1CD4CE)
1CD4C8:  MOVS            R3, #5
1CD4CA:  ADD             R0, PC; renderQueue_ptr
1CD4CC:  LDR             R0, [R0]; renderQueue
1CD4CE:  LDR             R1, [R0]
1CD4D0:  LDR.W           R2, [R1,#0x274]
1CD4D4:  STR             R3, [R2]
1CD4D6:  MOVS            R3, #0
1CD4D8:  LDR.W           R2, [R1,#0x274]
1CD4DC:  ADDS            R2, #4
1CD4DE:  STR.W           R2, [R1,#0x274]
1CD4E2:  LDR             R1, [R0]
1CD4E4:  LDR.W           R2, [R1,#0x274]
1CD4E8:  STR             R3, [R2]
1CD4EA:  LDR.W           R2, [R1,#0x274]
1CD4EE:  ADDS            R2, #4
1CD4F0:  STR.W           R2, [R1,#0x274]
1CD4F4:  LDR             R0, [R0]
1CD4F6:  ADD.W           R2, R4, #0x2CC
1CD4FA:  LDR.W           R1, [R0,#0x274]
1CD4FE:  ADDS            R1, #3
1CD500:  BIC.W           R1, R1, #3
1CD504:  STR.W           R1, [R0,#0x274]
1CD508:  VLD1.8          {D16-D17}, [R2]
1CD50C:  ADD.W           R2, R4, #0x2AC
1CD510:  VLD1.8          {D18-D19}, [R2]
1CD514:  ADD.W           R2, R4, #0x2BC
1CD518:  VLD1.8          {D20-D21}, [R2]
1CD51C:  ADD.W           R2, R4, #0x2DC
1CD520:  VLD1.8          {D22-D23}, [R2]
1CD524:  ADD.W           R2, R1, #0x30 ; '0'
1CD528:  VST1.8          {D22-D23}, [R2]
1CD52C:  ADD.W           R2, R1, #0x20 ; ' '
1CD530:  VST1.8          {D16-D17}, [R2]
1CD534:  VST1.8          {D18-D19}, [R1]!
1CD538:  VST1.8          {D20-D21}, [R1]
1CD53C:  LDR.W           R1, [R0,#0x274]
1CD540:  ADDS            R1, #0x40 ; '@'
1CD542:  STR.W           R1, [R0,#0x274]
1CD546:  STRB.W          R3, [R4,#0x2A8]
1CD54A:  LDRB.W          R0, [R4,#0x2F4]
1CD54E:  CMP             R0, #0
1CD550:  ITT NE
1CD552:  LDRNE.W         R0, [R4,#0x2F0]
1CD556:  ADDSNE.W        R0, R0, #1
1CD55A:  BEQ             loc_1CD5E2
1CD55C:  LDR             R0, =(renderQueue_ptr - 0x1CD564)
1CD55E:  MOVS            R3, #5
1CD560:  ADD             R0, PC; renderQueue_ptr
1CD562:  LDR             R0, [R0]; renderQueue
1CD564:  LDR             R1, [R0]
1CD566:  LDR.W           R2, [R1,#0x274]
1CD56A:  STR             R3, [R2]
1CD56C:  MOVS            R3, #1
1CD56E:  LDR.W           R2, [R1,#0x274]
1CD572:  ADDS            R2, #4
1CD574:  STR.W           R2, [R1,#0x274]
1CD578:  LDR             R1, [R0]
1CD57A:  LDR.W           R2, [R1,#0x274]
1CD57E:  STR             R3, [R2]
1CD580:  LDR.W           R2, [R1,#0x274]
1CD584:  ADDS            R2, #4
1CD586:  STR.W           R2, [R1,#0x274]
1CD58A:  LDR             R0, [R0]
1CD58C:  ADD.W           R2, R4, #0x318
1CD590:  LDR.W           R1, [R0,#0x274]
1CD594:  ADDS            R1, #3
1CD596:  BIC.W           R1, R1, #3
1CD59A:  STR.W           R1, [R0,#0x274]
1CD59E:  VLD1.8          {D16-D17}, [R2]
1CD5A2:  ADD.W           R2, R4, #0x2F8
1CD5A6:  VLD1.8          {D18-D19}, [R2]
1CD5AA:  ADD.W           R2, R4, #0x308
1CD5AE:  VLD1.8          {D20-D21}, [R2]
1CD5B2:  ADD.W           R2, R4, #0x328
1CD5B6:  VLD1.8          {D22-D23}, [R2]
1CD5BA:  ADD.W           R2, R1, #0x30 ; '0'
1CD5BE:  VST1.8          {D22-D23}, [R2]
1CD5C2:  ADD.W           R2, R1, #0x20 ; ' '
1CD5C6:  VST1.8          {D16-D17}, [R2]
1CD5CA:  VST1.8          {D18-D19}, [R1]!
1CD5CE:  VST1.8          {D20-D21}, [R1]
1CD5D2:  LDR.W           R1, [R0,#0x274]
1CD5D6:  ADDS            R1, #0x40 ; '@'
1CD5D8:  STR.W           R1, [R0,#0x274]
1CD5DC:  MOVS            R0, #0
1CD5DE:  STRB.W          R0, [R4,#0x2F4]
1CD5E2:  LDRB.W          R0, [R4,#0x340]
1CD5E6:  CMP             R0, #0
1CD5E8:  ITT NE
1CD5EA:  LDRNE.W         R0, [R4,#0x33C]
1CD5EE:  ADDSNE.W        R0, R0, #1
1CD5F2:  BEQ             loc_1CD67A
1CD5F4:  LDR             R0, =(renderQueue_ptr - 0x1CD5FC)
1CD5F6:  MOVS            R3, #5
1CD5F8:  ADD             R0, PC; renderQueue_ptr
1CD5FA:  LDR             R0, [R0]; renderQueue
1CD5FC:  LDR             R1, [R0]
1CD5FE:  LDR.W           R2, [R1,#0x274]
1CD602:  STR             R3, [R2]
1CD604:  MOVS            R3, #2
1CD606:  LDR.W           R2, [R1,#0x274]
1CD60A:  ADDS            R2, #4
1CD60C:  STR.W           R2, [R1,#0x274]
1CD610:  LDR             R1, [R0]
1CD612:  LDR.W           R2, [R1,#0x274]
1CD616:  STR             R3, [R2]
1CD618:  LDR.W           R2, [R1,#0x274]
1CD61C:  ADDS            R2, #4
1CD61E:  STR.W           R2, [R1,#0x274]
1CD622:  LDR             R0, [R0]
1CD624:  ADD.W           R2, R4, #0x364
1CD628:  LDR.W           R1, [R0,#0x274]
1CD62C:  ADDS            R1, #3
1CD62E:  BIC.W           R1, R1, #3
1CD632:  STR.W           R1, [R0,#0x274]
1CD636:  VLD1.8          {D16-D17}, [R2]
1CD63A:  ADD.W           R2, R4, #0x344
1CD63E:  VLD1.8          {D18-D19}, [R2]
1CD642:  ADD.W           R2, R4, #0x354
1CD646:  VLD1.8          {D20-D21}, [R2]
1CD64A:  ADD.W           R2, R4, #0x374
1CD64E:  VLD1.8          {D22-D23}, [R2]
1CD652:  ADD.W           R2, R1, #0x30 ; '0'
1CD656:  VST1.8          {D22-D23}, [R2]
1CD65A:  ADD.W           R2, R1, #0x20 ; ' '
1CD65E:  VST1.8          {D16-D17}, [R2]
1CD662:  VST1.8          {D18-D19}, [R1]!
1CD666:  VST1.8          {D20-D21}, [R1]
1CD66A:  LDR.W           R1, [R0,#0x274]
1CD66E:  ADDS            R1, #0x40 ; '@'
1CD670:  STR.W           R1, [R0,#0x274]
1CD674:  MOVS            R0, #0
1CD676:  STRB.W          R0, [R4,#0x340]
1CD67A:  LDRB.W          R0, [R4,#0x38C]
1CD67E:  CMP             R0, #0
1CD680:  ITT NE
1CD682:  LDRNE.W         R0, [R4,#0x388]
1CD686:  ADDSNE.W        R0, R0, #1
1CD68A:  BEQ             loc_1CD712
1CD68C:  LDR             R0, =(renderQueue_ptr - 0x1CD694)
1CD68E:  MOVS            R3, #4
1CD690:  ADD             R0, PC; renderQueue_ptr
1CD692:  LDR             R0, [R0]; renderQueue
1CD694:  LDR             R1, [R0]
1CD696:  LDR.W           R2, [R1,#0x274]
1CD69A:  STR             R3, [R2]
1CD69C:  MOVS            R3, #3
1CD69E:  LDR.W           R2, [R1,#0x274]
1CD6A2:  ADDS            R2, #4
1CD6A4:  STR.W           R2, [R1,#0x274]
1CD6A8:  LDR             R1, [R0]
1CD6AA:  LDR.W           R2, [R1,#0x274]
1CD6AE:  STR             R3, [R2]
1CD6B0:  LDR.W           R2, [R1,#0x274]
1CD6B4:  ADDS            R2, #4
1CD6B6:  STR.W           R2, [R1,#0x274]
1CD6BA:  LDR             R0, [R0]
1CD6BC:  ADD.W           R2, R4, #0x3B0
1CD6C0:  LDR.W           R1, [R0,#0x274]
1CD6C4:  ADDS            R1, #3
1CD6C6:  BIC.W           R1, R1, #3
1CD6CA:  STR.W           R1, [R0,#0x274]
1CD6CE:  VLD1.8          {D16-D17}, [R2]
1CD6D2:  ADD.W           R2, R4, #0x390
1CD6D6:  VLD1.8          {D18-D19}, [R2]
1CD6DA:  ADD.W           R2, R4, #0x3A0
1CD6DE:  VLD1.8          {D20-D21}, [R2]
1CD6E2:  ADD.W           R2, R4, #0x3C0
1CD6E6:  VLD1.8          {D22-D23}, [R2]
1CD6EA:  ADD.W           R2, R1, #0x30 ; '0'
1CD6EE:  VST1.8          {D22-D23}, [R2]
1CD6F2:  ADD.W           R2, R1, #0x20 ; ' '
1CD6F6:  VST1.8          {D16-D17}, [R2]
1CD6FA:  VST1.8          {D18-D19}, [R1]!
1CD6FE:  VST1.8          {D20-D21}, [R1]
1CD702:  LDR.W           R1, [R0,#0x274]
1CD706:  ADDS            R1, #0x40 ; '@'
1CD708:  STR.W           R1, [R0,#0x274]
1CD70C:  MOVS            R0, #0
1CD70E:  STRB.W          R0, [R4,#0x38C]
1CD712:  LDR             R0, =(_ZN9ES2Shader9aBindingsE_ptr - 0x1CD718)
1CD714:  ADD             R0, PC; _ZN9ES2Shader9aBindingsE_ptr
1CD716:  LDR             R0, [R0]; ES2Shader::aBindings ...
1CD718:  LDRB            R0, [R0]; ES2Shader::aBindings
1CD71A:  CBZ             R0, loc_1CD776
1CD71C:  LDR             R0, =(renderQueue_ptr - 0x1CD724)
1CD71E:  MOVS            R3, #7
1CD720:  ADD             R0, PC; renderQueue_ptr
1CD722:  LDR             R0, [R0]; renderQueue
1CD724:  LDR             R1, [R0]
1CD726:  LDR.W           R2, [R1,#0x274]
1CD72A:  STR             R3, [R2]
1CD72C:  MOVS            R3, #0
1CD72E:  LDR.W           R2, [R1,#0x274]
1CD732:  ADDS            R2, #4
1CD734:  STR.W           R2, [R1,#0x274]
1CD738:  LDR             R1, [R0]
1CD73A:  LDR.W           R2, [R1,#0x274]
1CD73E:  STR             R3, [R2]
1CD740:  LDR.W           R2, [R1,#0x274]
1CD744:  ADDS            R2, #4
1CD746:  STR.W           R2, [R1,#0x274]
1CD74A:  LDR             R1, =(_ZN9ES2Shader9aBindingsE_ptr - 0x1CD752)
1CD74C:  LDR             R0, [R0]
1CD74E:  ADD             R1, PC; _ZN9ES2Shader9aBindingsE_ptr
1CD750:  LDR.W           R2, [R0,#0x274]
1CD754:  LDR             R1, [R1]; ES2Shader::aBindings ...
1CD756:  ADDS            R2, #3
1CD758:  BIC.W           R2, R2, #3
1CD75C:  STR.W           R2, [R0,#0x274]
1CD760:  ADDS            R4, R1, #4
1CD762:  VLD1.32         {D16-D17}, [R4]
1CD766:  VST1.32         {D16-D17}, [R2]
1CD76A:  LDR.W           R2, [R0,#0x274]
1CD76E:  ADDS            R2, #0x10
1CD770:  STR.W           R2, [R0,#0x274]
1CD774:  STRB            R3, [R1]; ES2Shader::aBindings
1CD776:  LDR             R0, =(renderQueue_ptr - 0x1CD77E)
1CD778:  MOVS            R3, #8
1CD77A:  ADD             R0, PC; renderQueue_ptr
1CD77C:  LDR             R0, [R0]; renderQueue
1CD77E:  LDR             R1, [R0]
1CD780:  LDR.W           R2, [R1,#0x274]
1CD784:  STR             R3, [R2]
1CD786:  LDR.W           R2, [R1,#0x274]
1CD78A:  ADDS            R2, #4
1CD78C:  STR.W           R2, [R1,#0x274]
1CD790:  LDR             R4, [R0]
1CD792:  LDRB.W          R0, [R4,#0x259]
1CD796:  CMP             R0, #0
1CD798:  ITT NE
1CD79A:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CD79E:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1CD7A2:  LDRD.W          R1, R2, [R4,#0x270]
1CD7A6:  ADD.W           R0, R4, #0x270
1CD7AA:  DMB.W           ISH
1CD7AE:  SUBS            R1, R2, R1
1CD7B0:  LDREX.W         R2, [R0]
1CD7B4:  ADD             R2, R1
1CD7B6:  STREX.W         R3, R2, [R0]
1CD7BA:  CMP             R3, #0
1CD7BC:  BNE             loc_1CD7B0
1CD7BE:  DMB.W           ISH
1CD7C2:  LDRB.W          R0, [R4,#0x259]
1CD7C6:  CMP             R0, #0
1CD7C8:  ITT NE
1CD7CA:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CD7CE:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1CD7D2:  LDRB.W          R0, [R4,#0x258]
1CD7D6:  CMP             R0, #0
1CD7D8:  ITT EQ
1CD7DA:  MOVEQ           R0, R4; this
1CD7DC:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1CD7E0:  LDR.W           R1, [R4,#0x270]
1CD7E4:  LDR.W           R0, [R4,#0x264]
1CD7E8:  ADD.W           R1, R1, #0x400
1CD7EC:  CMP             R1, R0
1CD7EE:  IT LS
1CD7F0:  POPLS           {R4,R6,R7,PC}
1CD7F2:  MOV             R0, R4; this
1CD7F4:  POP.W           {R4,R6,R7,LR}
1CD7F8:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
