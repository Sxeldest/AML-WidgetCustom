; =========================================================
; Game Engine Function: _Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType
; Address            : 0x1DD608 - 0x1DD78C
; =========================================================

1DD608:  PUSH            {R4,R6,R7,LR}
1DD60A:  ADD             R7, SP, #8
1DD60C:  SUB             SP, SP, #8
1DD60E:  MOV             R4, R0
1DD610:  SUBS            R0, R1, #1; switch 6 cases
1DD612:  CBZ             R4, loc_1DD638
1DD614:  CMP             R0, #5
1DD616:  BHI             def_1DD618; jumptable 001DD618 default case
1DD618:  TBB.W           [PC,R0]; switch jump
1DD61C:  DCB 3; jump table for switch statement
1DD61D:  DCB 0x2F
1DD61E:  DCB 0x3A
1DD61F:  DCB 0x45
1DD620:  DCB 0x50
1DD621:  DCB 0x5B
1DD622:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD62A); jumptable 001DD618 case 1
1DD624:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD62C)
1DD626:  ADD             R0, PC; _rwIm3DModule_ptr
1DD628:  ADD             R1, PC; RwEngineInstance_ptr
1DD62A:  LDR             R0, [R0]; _rwIm3DModule
1DD62C:  LDR             R1, [R1]; RwEngineInstance
1DD62E:  LDR             R0, [R0]
1DD630:  LDR             R1, [R1]
1DD632:  ADD             R0, R1
1DD634:  STR             R4, [R0,#0x10]
1DD636:  B               loc_1DD786
1DD638:  CMP             R0, #5
1DD63A:  BHI             def_1DD618; jumptable 001DD618 default case
1DD63C:  TBB.W           [PC,R0]; switch jump
1DD640:  DCB 3; jump table for switch statement
1DD641:  DCB 0x54
1DD642:  DCB 0x64
1DD643:  DCB 0x74
1DD644:  DCB 0x84
1DD645:  DCB 0x94
1DD646:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD64E); jumptable 001DD63C case 1
1DD648:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD650)
1DD64A:  ADD             R0, PC; _rwIm3DModule_ptr
1DD64C:  ADD             R1, PC; RwEngineInstance_ptr
1DD64E:  LDR             R0, [R0]; _rwIm3DModule
1DD650:  LDR             R1, [R1]; RwEngineInstance
1DD652:  LDR             R2, [R0]
1DD654:  LDR             R3, [R1]
1DD656:  ADD             R2, R3
1DD658:  LDR             R3, [R2,#0x2C]
1DD65A:  STR             R3, [R2,#0x10]
1DD65C:  LDR             R0, [R0]
1DD65E:  LDR             R1, [R1]
1DD660:  ADD             R0, R1
1DD662:  LDR             R4, [R0,#0x2C]
1DD664:  B               loc_1DD786
1DD666:  MOVS            R4, #0; jumptable 001DD618 default case
1DD668:  MOVS            R0, #0x25 ; '%'; int
1DD66A:  STR             R4, [SP,#0x10+var_10]
1DD66C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DD670:  STR             R0, [SP,#0x10+var_C]
1DD672:  MOV             R0, SP
1DD674:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DD678:  B               loc_1DD786
1DD67A:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD682); jumptable 001DD618 case 2
1DD67C:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD684)
1DD67E:  ADD             R0, PC; _rwIm3DModule_ptr
1DD680:  ADD             R1, PC; RwEngineInstance_ptr
1DD682:  LDR             R0, [R0]; _rwIm3DModule
1DD684:  LDR             R1, [R1]; RwEngineInstance
1DD686:  LDR             R0, [R0]
1DD688:  LDR             R1, [R1]
1DD68A:  ADD             R0, R1
1DD68C:  STR             R4, [R0,#0x14]
1DD68E:  B               loc_1DD786
1DD690:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD698); jumptable 001DD618 case 3
1DD692:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD69A)
1DD694:  ADD             R0, PC; _rwIm3DModule_ptr
1DD696:  ADD             R1, PC; RwEngineInstance_ptr
1DD698:  LDR             R0, [R0]; _rwIm3DModule
1DD69A:  LDR             R1, [R1]; RwEngineInstance
1DD69C:  LDR             R0, [R0]
1DD69E:  LDR             R1, [R1]
1DD6A0:  ADD             R0, R1
1DD6A2:  STR             R4, [R0,#4]
1DD6A4:  B               loc_1DD786
1DD6A6:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD6AE); jumptable 001DD618 case 4
1DD6A8:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD6B0)
1DD6AA:  ADD             R0, PC; _rwIm3DModule_ptr
1DD6AC:  ADD             R1, PC; RwEngineInstance_ptr
1DD6AE:  LDR             R0, [R0]; _rwIm3DModule
1DD6B0:  LDR             R1, [R1]; RwEngineInstance
1DD6B2:  LDR             R0, [R0]
1DD6B4:  LDR             R1, [R1]
1DD6B6:  ADD             R0, R1
1DD6B8:  STR             R4, [R0,#0xC]
1DD6BA:  B               loc_1DD786
1DD6BC:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD6C4); jumptable 001DD618 case 5
1DD6BE:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD6C6)
1DD6C0:  ADD             R0, PC; _rwIm3DModule_ptr
1DD6C2:  ADD             R1, PC; RwEngineInstance_ptr
1DD6C4:  LDR             R0, [R0]; _rwIm3DModule
1DD6C6:  LDR             R1, [R1]; RwEngineInstance
1DD6C8:  LDR             R0, [R0]
1DD6CA:  LDR             R1, [R1]
1DD6CC:  ADD             R0, R1
1DD6CE:  STR             R4, [R0,#8]
1DD6D0:  B               loc_1DD786
1DD6D2:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD6DA); jumptable 001DD618 case 6
1DD6D4:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD6DC)
1DD6D6:  ADD             R0, PC; _rwIm3DModule_ptr
1DD6D8:  ADD             R1, PC; RwEngineInstance_ptr
1DD6DA:  LDR             R0, [R0]; _rwIm3DModule
1DD6DC:  LDR             R1, [R1]; RwEngineInstance
1DD6DE:  LDR             R0, [R0]
1DD6E0:  LDR             R1, [R1]
1DD6E2:  ADD             R0, R1
1DD6E4:  STR             R4, [R0,#0x18]
1DD6E6:  B               loc_1DD786
1DD6E8:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD6F0); jumptable 001DD63C case 2
1DD6EA:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD6F2)
1DD6EC:  ADD             R0, PC; _rwIm3DModule_ptr
1DD6EE:  ADD             R1, PC; RwEngineInstance_ptr
1DD6F0:  LDR             R0, [R0]; _rwIm3DModule
1DD6F2:  LDR             R1, [R1]; RwEngineInstance
1DD6F4:  LDR             R2, [R0]
1DD6F6:  LDR             R3, [R1]
1DD6F8:  ADD             R2, R3
1DD6FA:  LDR             R3, [R2,#0x30]
1DD6FC:  STR             R3, [R2,#0x14]
1DD6FE:  LDR             R0, [R0]
1DD700:  LDR             R1, [R1]
1DD702:  ADD             R0, R1
1DD704:  LDR             R4, [R0,#0x30]
1DD706:  B               loc_1DD786
1DD708:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD710); jumptable 001DD63C case 3
1DD70A:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD712)
1DD70C:  ADD             R0, PC; _rwIm3DModule_ptr
1DD70E:  ADD             R1, PC; RwEngineInstance_ptr
1DD710:  LDR             R0, [R0]; _rwIm3DModule
1DD712:  LDR             R1, [R1]; RwEngineInstance
1DD714:  LDR             R2, [R0]
1DD716:  LDR             R3, [R1]
1DD718:  ADD             R2, R3
1DD71A:  LDR             R3, [R2,#0x20]
1DD71C:  STR             R3, [R2,#4]
1DD71E:  LDR             R0, [R0]
1DD720:  LDR             R1, [R1]
1DD722:  ADD             R0, R1
1DD724:  LDR             R4, [R0,#4]
1DD726:  B               loc_1DD786
1DD728:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD730); jumptable 001DD63C case 4
1DD72A:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD732)
1DD72C:  ADD             R0, PC; _rwIm3DModule_ptr
1DD72E:  ADD             R1, PC; RwEngineInstance_ptr
1DD730:  LDR             R0, [R0]; _rwIm3DModule
1DD732:  LDR             R1, [R1]; RwEngineInstance
1DD734:  LDR             R2, [R0]
1DD736:  LDR             R3, [R1]
1DD738:  ADD             R2, R3
1DD73A:  LDR             R3, [R2,#0x28]
1DD73C:  STR             R3, [R2,#0xC]
1DD73E:  LDR             R0, [R0]
1DD740:  LDR             R1, [R1]
1DD742:  ADD             R0, R1
1DD744:  LDR             R4, [R0,#0x28]
1DD746:  B               loc_1DD786
1DD748:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD750); jumptable 001DD63C case 5
1DD74A:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD752)
1DD74C:  ADD             R0, PC; _rwIm3DModule_ptr
1DD74E:  ADD             R1, PC; RwEngineInstance_ptr
1DD750:  LDR             R0, [R0]; _rwIm3DModule
1DD752:  LDR             R1, [R1]; RwEngineInstance
1DD754:  LDR             R2, [R0]
1DD756:  LDR             R3, [R1]
1DD758:  ADD             R2, R3
1DD75A:  LDR             R3, [R2,#0x24]
1DD75C:  STR             R3, [R2,#8]
1DD75E:  LDR             R0, [R0]
1DD760:  LDR             R1, [R1]
1DD762:  ADD             R0, R1
1DD764:  LDR             R4, [R0,#8]
1DD766:  B               loc_1DD786
1DD768:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD770); jumptable 001DD63C case 6
1DD76A:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD772)
1DD76C:  ADD             R0, PC; _rwIm3DModule_ptr
1DD76E:  ADD             R1, PC; RwEngineInstance_ptr
1DD770:  LDR             R0, [R0]; _rwIm3DModule
1DD772:  LDR             R1, [R1]; RwEngineInstance
1DD774:  LDR             R2, [R0]
1DD776:  LDR             R3, [R1]
1DD778:  ADD             R2, R3
1DD77A:  LDR             R3, [R2,#0x34]
1DD77C:  STR             R3, [R2,#0x18]
1DD77E:  LDR             R0, [R0]
1DD780:  LDR             R1, [R1]
1DD782:  ADD             R0, R1
1DD784:  LDR             R4, [R0,#0x34]
1DD786:  MOV             R0, R4
1DD788:  ADD             SP, SP, #8
1DD78A:  POP             {R4,R6,R7,PC}
