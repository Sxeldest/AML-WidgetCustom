; =========================================================
; Game Engine Function: _ZN4CHID19CheckForInputChangeEv
; Address            : 0x28C424 - 0x28CAD0
; =========================================================

28C424:  PUSH            {R4-R7,LR}
28C426:  ADD             R7, SP, #0xC
28C428:  PUSH.W          {R8-R11}
28C42C:  SUB             SP, SP, #4
28C42E:  VPUSH           {D8}
28C432:  SUB             SP, SP, #0x40
28C434:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C440)
28C438:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C442)
28C43C:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C43E:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C440:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C442:  LDR             R1, [R1]; CHID::m_pInstance ...
28C444:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C446:  LDR.W           R0, [R1,R0,LSL#2]
28C44A:  CBZ             R0, loc_28C482
28C44C:  LDR             R1, [R0]
28C44E:  LDR             R1, [R1,#0x18]
28C450:  BLX             R1
28C452:  CBZ             R0, loc_28C482
28C454:  LDR.W           R0, =(_ZN4CHID22bAllowKeyboardInstanceE_ptr - 0x28C45C)
28C458:  ADD             R0, PC; _ZN4CHID22bAllowKeyboardInstanceE_ptr
28C45A:  LDR             R0, [R0]; CHID::bAllowKeyboardInstance ...
28C45C:  LDRB            R0, [R0]; CHID::bAllowKeyboardInstance
28C45E:  CBZ             R0, loc_28C482
28C460:  BLX             j__Z19OS_PointerGetNumberv; OS_PointerGetNumber(void)
28C464:  CMP             R0, #2
28C466:  BLT             loc_28C482
28C468:  MOVS            R4, #1
28C46A:  MOV             R0, R4; int
28C46C:  MOVS            R1, #0; int
28C46E:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
28C472:  CMP             R0, #2
28C474:  BEQ.W           loc_28CA92
28C478:  ADDS            R4, #1
28C47A:  BLX             j__Z19OS_PointerGetNumberv; OS_PointerGetNumber(void)
28C47E:  CMP             R4, R0
28C480:  BLT             loc_28C46A
28C482:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C490)
28C486:  MOVS            R4, #0
28C488:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C492)
28C48C:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C48E:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C490:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C492:  LDR             R1, [R1]; CHID::m_pInstance ...
28C494:  LDR             R0, [R0]; CHID::currentInstanceIndex
28C496:  LDR.W           R0, [R1,R0,LSL#2]
28C49A:  CBZ             R0, loc_28C4A8
28C49C:  LDR             R1, [R0]
28C49E:  LDR             R1, [R1,#0x18]
28C4A0:  BLX             R1
28C4A2:  CMP             R0, #2
28C4A4:  IT EQ
28C4A6:  MOVEQ           R4, #1
28C4A8:  CMP             R4, #0
28C4AA:  BNE             loc_28C57E
28C4AC:  LDR.W           R0, =(_ZN4CHID22bAllowKeyboardInstanceE_ptr - 0x28C4B4)
28C4B0:  ADD             R0, PC; _ZN4CHID22bAllowKeyboardInstanceE_ptr
28C4B2:  LDR             R0, [R0]; CHID::bAllowKeyboardInstance ...
28C4B4:  LDRB            R0, [R0]; CHID::bAllowKeyboardInstance
28C4B6:  CMP             R0, #0
28C4B8:  BEQ             loc_28C57E
28C4BA:  MOVS            R0, #0; int
28C4BC:  MOVS            R1, #0; int
28C4BE:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
28C4C2:  CMP             R0, #2
28C4C4:  BNE             loc_28C4D0
28C4C6:  MOVS            R0, #0; int
28C4C8:  BLX             j__Z17OS_PointerGetTypei; OS_PointerGetType(int)
28C4CC:  CMP             R0, #1
28C4CE:  BEQ             loc_28C512
28C4D0:  MOVS            R0, #1; int
28C4D2:  MOVS            R1, #0; int
28C4D4:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
28C4D8:  CMP             R0, #2
28C4DA:  BNE             loc_28C4E6
28C4DC:  MOVS            R0, #1; int
28C4DE:  BLX             j__Z17OS_PointerGetTypei; OS_PointerGetType(int)
28C4E2:  CMP             R0, #1
28C4E4:  BEQ             loc_28C512
28C4E6:  MOVS            R0, #2; int
28C4E8:  MOVS            R1, #0; int
28C4EA:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
28C4EE:  CMP             R0, #2
28C4F0:  BNE             loc_28C4FC
28C4F2:  MOVS            R0, #2; int
28C4F4:  BLX             j__Z17OS_PointerGetTypei; OS_PointerGetType(int)
28C4F8:  CMP             R0, #1
28C4FA:  BEQ             loc_28C512
28C4FC:  MOVS            R0, #3; int
28C4FE:  MOVS            R1, #0; int
28C500:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
28C504:  CMP             R0, #2
28C506:  BNE             loc_28C57E
28C508:  MOVS            R0, #3; int
28C50A:  BLX             j__Z17OS_PointerGetTypei; OS_PointerGetType(int)
28C50E:  CMP             R0, #1
28C510:  BNE             loc_28C57E
28C512:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C51E)
28C516:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C520)
28C51A:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C51C:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C51E:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C520:  LDR             R2, [R1]; CHID::m_pInstance ...
28C522:  LDR             R1, [R0]; CHID::currentInstanceIndex
28C524:  LDR.W           R0, [R2,R1,LSL#2]
28C528:  CBZ             R0, loc_28C548
28C52A:  LDR             R1, [R0]
28C52C:  LDR             R1, [R1,#0x50]
28C52E:  BLX             R1
28C530:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C53C)
28C534:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C53E)
28C538:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C53A:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C53C:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C53E:  LDR             R2, [R1]; CHID::m_pInstance ...
28C540:  LDR             R1, [R0]; CHID::currentInstanceIndex
28C542:  MOVS            R0, #0
28C544:  STR.W           R0, [R2,R1,LSL#2]
28C548:  LDR.W           R0, =(_ZN4CHID13m_GamepadTypeE_ptr - 0x28C554)
28C54C:  MOV.W           R2, #0xFFFFFFFF
28C550:  ADD             R0, PC; _ZN4CHID13m_GamepadTypeE_ptr
28C552:  LDR             R0, [R0]; CHID::m_GamepadType ...
28C554:  STR.W           R2, [R0,R1,LSL#2]
28C558:  MOVW            R0, #0x978; unsigned int
28C55C:  BLX             _Znwj; operator new(uint)
28C560:  ADR.W           R1, aButtonskeyboar; "ButtonsKeyboard"
28C564:  BLX             j__ZN14CHIDKeyboardPCC2EPKc; CHIDKeyboardPC::CHIDKeyboardPC(char const*)
28C568:  LDR.W           R1, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C574)
28C56C:  LDR.W           R2, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C576)
28C570:  ADD             R1, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C572:  ADD             R2, PC; _ZN4CHID11m_pInstanceE_ptr
28C574:  LDR             R1, [R1]; CHID::currentInstanceIndex ...
28C576:  LDR             R2, [R2]; CHID::m_pInstance ...
28C578:  LDR             R1, [R1]; CHID::currentInstanceIndex
28C57A:  STR.W           R0, [R2,R1,LSL#2]
28C57E:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C58C)
28C582:  MOVS            R5, #0
28C584:  LDR.W           R1, =(_ZN4CHID13m_GamepadTypeE_ptr - 0x28C58E)
28C588:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C58A:  ADD             R1, PC; _ZN4CHID13m_GamepadTypeE_ptr
28C58C:  LDR.W           R10, [R0]; CHID::currentInstanceIndex ...
28C590:  LDR.W           R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C59A)
28C594:  LDR             R6, [R1]; CHID::m_GamepadType ...
28C596:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
28C598:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C5A2)
28C59C:  LDR             R4, [R0]; CHID::m_pInstance ...
28C59E:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C5A0:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C5AC)
28C5A4:  LDR.W           R11, [R1]; CHID::m_pInstance ...
28C5A8:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C5AA:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C5B6)
28C5AE:  LDR.W           R8, [R0]; CHID::currentInstanceIndex ...
28C5B2:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C5B4:  LDR.W           R0, =(_ZN4CHID22bAllowKeyboardInstanceE_ptr - 0x28C5BC)
28C5B8:  ADD             R0, PC; _ZN4CHID22bAllowKeyboardInstanceE_ptr
28C5BA:  LDR.W           R9, [R0]; CHID::bAllowKeyboardInstance ...
28C5BE:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C5C6)
28C5C2:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C5C4:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C5C6:  STR             R0, [SP,#0x68+var_30]
28C5C8:  LDR             R0, [R1]; CHID::m_pInstance ...
28C5CA:  STR             R0, [SP,#0x68+var_34]
28C5CC:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C5D8)
28C5D0:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C5DA)
28C5D4:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C5D6:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C5D8:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C5DA:  STR             R0, [SP,#0x68+var_40]
28C5DC:  LDR             R0, [R1]; CHID::m_pInstance ...
28C5DE:  STR             R0, [SP,#0x68+var_44]
28C5E0:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C5EC)
28C5E4:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C5EE)
28C5E8:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C5EA:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C5EC:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C5EE:  STR             R0, [SP,#0x68+var_38]
28C5F0:  LDR             R0, [R1]; CHID::m_pInstance ...
28C5F2:  STR             R0, [SP,#0x68+var_3C]
28C5F4:  LDR.W           R0, =(_ZN4CHID22bAllowKeyboardInstanceE_ptr - 0x28C600)
28C5F8:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C602)
28C5FC:  ADD             R0, PC; _ZN4CHID22bAllowKeyboardInstanceE_ptr
28C5FE:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C600:  LDR             R0, [R0]; CHID::bAllowKeyboardInstance ...
28C602:  STR             R0, [SP,#0x68+var_48]
28C604:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C60C)
28C608:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C60A:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C60C:  STR             R0, [SP,#0x68+var_4C]
28C60E:  LDR             R0, [R1]; CHID::m_pInstance ...
28C610:  STR             R0, [SP,#0x68+var_50]
28C612:  LDR.W           R0, =(_ZN4CHID13m_GamepadTypeE_ptr - 0x28C61E)
28C616:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C620)
28C61A:  ADD             R0, PC; _ZN4CHID13m_GamepadTypeE_ptr
28C61C:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C61E:  LDR             R0, [R0]; CHID::m_GamepadType ...
28C620:  STR             R0, [SP,#0x68+var_54]
28C622:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C62A)
28C626:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C628:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C62A:  STR             R0, [SP,#0x68+var_58]
28C62C:  LDR             R0, [R1]; CHID::m_pInstance ...
28C62E:  STR             R0, [SP,#0x68+var_5C]
28C630:  LDR.W           R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28C63C)
28C634:  LDR.W           R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C63E)
28C638:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28C63A:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28C63C:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28C63E:  STR             R0, [SP,#0x68+var_60]
28C640:  LDR             R0, [R1]; CHID::m_pInstance ...
28C642:  STR             R0, [SP,#0x68+var_64]
28C644:  B               loc_28C698
28C646:  MOVS            R0, #0
28C648:  CMP             R0, #2
28C64A:  ITTT NE
28C64C:  LDRNE           R0, [SP,#0x68+var_48]
28C64E:  LDRBNE          R0, [R0]
28C650:  CMPNE           R0, #0
28C652:  BEQ             loc_28C738
28C654:  LDR             R0, [SP,#0x68+var_4C]
28C656:  LDR             R1, [R0]
28C658:  LDR             R0, [SP,#0x68+var_50]
28C65A:  LDR.W           R0, [R0,R1,LSL#2]
28C65E:  CBZ             R0, loc_28C672
28C660:  LDR             R1, [R0]
28C662:  LDR             R1, [R1,#0x50]
28C664:  BLX             R1
28C666:  LDR             R0, [SP,#0x68+var_60]
28C668:  LDR             R2, [SP,#0x68+var_64]
28C66A:  LDR             R1, [R0]
28C66C:  MOVS            R0, #0
28C66E:  STR.W           R0, [R2,R1,LSL#2]
28C672:  LDR             R2, [SP,#0x68+var_54]
28C674:  MOV.W           R0, #0xFFFFFFFF
28C678:  STR.W           R0, [R2,R1,LSL#2]
28C67C:  MOVW            R0, #0x978; unsigned int
28C680:  BLX             _Znwj; operator new(uint)
28C684:  ADR.W           R1, aButtonskeyboar; "ButtonsKeyboard"
28C688:  BLX             j__ZN14CHIDKeyboardPCC2EPKc; CHIDKeyboardPC::CHIDKeyboardPC(char const*)
28C68C:  LDR             R1, [SP,#0x68+var_58]
28C68E:  LDR             R2, [SP,#0x68+var_5C]
28C690:  LDR             R1, [R1]
28C692:  STR.W           R0, [R2,R1,LSL#2]
28C696:  B               loc_28C738
28C698:  MOV             R0, R5
28C69A:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
28C69E:  CMP             R0, #0
28C6A0:  BEQ             loc_28C738
28C6A2:  SUB.W           R0, R5, #0xB
28C6A6:  CMP             R0, #1
28C6A8:  BHI             loc_28C6DE
28C6AA:  LDR.W           R0, [R10]; CHID::currentInstanceIndex
28C6AE:  MOV.W           R1, #0xFFFFFFFF
28C6B2:  STR.W           R1, [R6,R0,LSL#2]
28C6B6:  LDR.W           R0, [R4,R0,LSL#2]
28C6BA:  CBZ             R0, loc_28C71A
28C6BC:  LDR             R1, [R0]
28C6BE:  LDR             R1, [R1,#0x18]
28C6C0:  BLX             R1
28C6C2:  MOV             R1, R0
28C6C4:  LDR             R0, [SP,#0x68+var_30]
28C6C6:  LDR             R2, [SP,#0x68+var_34]
28C6C8:  CMP             R1, #2
28C6CA:  LDR             R0, [R0]
28C6CC:  LDR.W           R0, [R2,R0,LSL#2]
28C6D0:  BNE             loc_28C706
28C6D2:  CBZ             R0, loc_28C732
28C6D4:  LDR             R1, [R0]
28C6D6:  LDR             R1, [R1,#0x50]
28C6D8:  BLX             R1
28C6DA:  MOVS            R0, #0
28C6DC:  B               loc_28C72A
28C6DE:  CMP             R5, #0x1A
28C6E0:  BHI             loc_28C6F0
28C6E2:  MOVS            R0, #1
28C6E4:  MOVS            R1, #3
28C6E6:  LSLS            R0, R5
28C6E8:  MOVT            R1, #0x400
28C6EC:  TST             R0, R1
28C6EE:  BNE             loc_28C738
28C6F0:  LDR             R0, [SP,#0x68+var_38]
28C6F2:  LDR             R1, [SP,#0x68+var_3C]
28C6F4:  LDR             R0, [R0]
28C6F6:  LDR.W           R0, [R1,R0,LSL#2]
28C6FA:  CMP             R0, #0
28C6FC:  BEQ             loc_28C646
28C6FE:  LDR             R1, [R0]
28C700:  LDR             R1, [R1,#0x18]
28C702:  BLX             R1
28C704:  B               loc_28C648
28C706:  CBZ             R0, loc_28C71A
28C708:  LDR             R1, [R0]
28C70A:  LDR             R1, [R1,#0x50]
28C70C:  BLX             R1
28C70E:  LDR             R0, [SP,#0x68+var_40]
28C710:  MOVS            R1, #0
28C712:  LDR             R2, [SP,#0x68+var_44]
28C714:  LDR             R0, [R0]
28C716:  STR.W           R1, [R2,R0,LSL#2]
28C71A:  MOVW            R0, #0x978; unsigned int
28C71E:  BLX             _Znwj; operator new(uint)
28C722:  ADR.W           R1, aButtonskeyboar; "ButtonsKeyboard"
28C726:  BLX             j__ZN14CHIDKeyboardPCC2EPKc; CHIDKeyboardPC::CHIDKeyboardPC(char const*)
28C72A:  LDR.W           R1, [R8]; CHID::currentInstanceIndex
28C72E:  STR.W           R0, [R11,R1,LSL#2]
28C732:  MOVS            R0, #0
28C734:  STRB.W          R0, [R9]; CHID::bAllowKeyboardInstance
28C738:  ADDS            R5, #1
28C73A:  CMP             R5, #0x64 ; 'd'
28C73C:  BNE             loc_28C698
28C73E:  LDR.W           R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C750)
28C742:  VMOV.F32        S16, #0.75
28C746:  ADD             R4, SP, #0x68+var_2C
28C748:  MOV.W           R10, #0xFFFFFFFF
28C74C:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
28C74E:  MOV.W           R8, #0
28C752:  LDR.W           R11, [R0]; CHID::m_pInstance ...
28C756:  LDR.W           R0, =(_ZN4CHID13m_GamepadTypeE_ptr - 0x28C75E)
28C75A:  ADD             R0, PC; _ZN4CHID13m_GamepadTypeE_ptr
28C75C:  LDR             R0, [R0]; CHID::m_GamepadType ...
28C75E:  STR             R0, [SP,#0x68+var_38]
28C760:  LDR.W           R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C768)
28C764:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
28C766:  LDR             R0, [R0]; CHID::m_pInstance ...
28C768:  STR             R0, [SP,#0x68+var_30]
28C76A:  LDR.W           R0, =(_ZN4CHID13m_GamepadTypeE_ptr - 0x28C772)
28C76E:  ADD             R0, PC; _ZN4CHID13m_GamepadTypeE_ptr
28C770:  LDR.W           R9, [R0]; CHID::m_GamepadType ...
28C774:  LDR.W           R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C77C)
28C778:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
28C77A:  LDR             R0, [R0]; CHID::m_pInstance ...
28C77C:  STR             R0, [SP,#0x68+var_34]
28C77E:  LDR.W           R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C786)
28C782:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
28C784:  LDR             R0, [R0]; CHID::m_pInstance ...
28C786:  STR             R0, [SP,#0x68+var_3C]
28C788:  LDR.W           R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C790)
28C78C:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
28C78E:  LDR             R6, [R0]; CHID::m_pInstance ...
28C790:  LDR.W           R0, =(_ZN4CHID13m_GamepadTypeE_ptr - 0x28C798)
28C794:  ADD             R0, PC; _ZN4CHID13m_GamepadTypeE_ptr
28C796:  LDR             R0, [R0]; CHID::m_GamepadType ...
28C798:  STR             R0, [SP,#0x68+var_40]
28C79A:  LDR.W           R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C7A2)
28C79E:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
28C7A0:  LDR             R0, [R0]; CHID::m_pInstance ...
28C7A2:  STR             R0, [SP,#0x68+var_44]
28C7A4:  LDR.W           R0, =(_ZN4CHID13m_GamepadTypeE_ptr - 0x28C7AC)
28C7A8:  ADD             R0, PC; _ZN4CHID13m_GamepadTypeE_ptr
28C7AA:  LDR             R0, [R0]; CHID::m_GamepadType ...
28C7AC:  STR             R0, [SP,#0x68+var_48]
28C7AE:  LDR.W           R0, =(_ZN4CHID11m_pInstanceE_ptr - 0x28C7B6)
28C7B2:  ADD             R0, PC; _ZN4CHID11m_pInstanceE_ptr
28C7B4:  LDR             R0, [R0]; CHID::m_pInstance ...
28C7B6:  STR             R0, [SP,#0x68+var_4C]
28C7B8:  B               loc_28C7BE
28C7BA:  MOVS            R5, #0
28C7BC:  B               loc_28C882
28C7BE:  MOV             R0, R8
28C7C0:  MOV             R1, R4
28C7C2:  STR.W           R10, [SP,#0x68+var_2C]
28C7C6:  BLX             j__Z21OS_GamepadIsConnectedjP13OSGamepadType; OS_GamepadIsConnected(uint,OSGamepadType *)
28C7CA:  LDR.W           R1, [R11,R8,LSL#2]
28C7CE:  CMP             R0, #1
28C7D0:  BNE.W           loc_28C9C6
28C7D4:  CBZ             R1, loc_28C7E4
28C7D6:  LDR             R1, [SP,#0x68+var_38]
28C7D8:  LDR             R0, [SP,#0x68+var_2C]
28C7DA:  LDR.W           R1, [R1,R8,LSL#2]
28C7DE:  CMP             R0, R1
28C7E0:  BEQ.W           loc_28CA6A
28C7E4:  MOV             R0, R8; unsigned int
28C7E6:  MOVS            R1, #0x40 ; '@'; unsigned int
28C7E8:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28C7EC:  BIC.W           R0, R0, #0x80000000
28C7F0:  VMOV            S0, R0
28C7F4:  VCMPE.F32       S0, S16
28C7F8:  VMRS            APSR_nzcv, FPSCR
28C7FC:  BGT             loc_28C880
28C7FE:  MOV             R0, R8; unsigned int
28C800:  MOVS            R1, #0x41 ; 'A'; unsigned int
28C802:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28C806:  BIC.W           R0, R0, #0x80000000
28C80A:  VMOV            S0, R0
28C80E:  VCMPE.F32       S0, S16
28C812:  VMRS            APSR_nzcv, FPSCR
28C816:  BGT             loc_28C880
28C818:  MOV             R0, R8; unsigned int
28C81A:  MOVS            R1, #0x42 ; 'B'; unsigned int
28C81C:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28C820:  BIC.W           R0, R0, #0x80000000
28C824:  VMOV            S0, R0
28C828:  VCMPE.F32       S0, S16
28C82C:  VMRS            APSR_nzcv, FPSCR
28C830:  BGT             loc_28C880
28C832:  MOV             R0, R8; unsigned int
28C834:  MOVS            R1, #0x43 ; 'C'; unsigned int
28C836:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28C83A:  BIC.W           R0, R0, #0x80000000
28C83E:  VMOV            S0, R0
28C842:  VCMPE.F32       S0, S16
28C846:  VMRS            APSR_nzcv, FPSCR
28C84A:  BGT             loc_28C880
28C84C:  MOV             R0, R8; unsigned int
28C84E:  MOVS            R1, #0x44 ; 'D'; unsigned int
28C850:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28C854:  BIC.W           R0, R0, #0x80000000
28C858:  VMOV            S0, R0
28C85C:  VCMPE.F32       S0, S16
28C860:  VMRS            APSR_nzcv, FPSCR
28C864:  BGT             loc_28C880
28C866:  MOV             R0, R8; unsigned int
28C868:  MOVS            R1, #0x45 ; 'E'; unsigned int
28C86A:  BLX             j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
28C86E:  BIC.W           R0, R0, #0x80000000
28C872:  VMOV            S0, R0
28C876:  VCMPE.F32       S0, S16
28C87A:  VMRS            APSR_nzcv, FPSCR
28C87E:  BLE             loc_28C7BA
28C880:  MOVS            R5, #1
28C882:  MOV             R0, R8; int
28C884:  MOVS            R1, #0; int
28C886:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C88A:  CMP             R5, #0
28C88C:  BNE             loc_28C988
28C88E:  ORR.W           R0, R0, #1
28C892:  CMP             R0, #3
28C894:  BEQ             loc_28C988
28C896:  MOV             R0, R8; int
28C898:  MOVS            R1, #1; int
28C89A:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C89E:  ORR.W           R0, R0, #1
28C8A2:  CMP             R0, #3
28C8A4:  BEQ             loc_28C988
28C8A6:  MOV             R0, R8; int
28C8A8:  MOVS            R1, #2; int
28C8AA:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C8AE:  ORR.W           R0, R0, #1
28C8B2:  CMP             R0, #3
28C8B4:  BEQ             loc_28C988
28C8B6:  MOV             R0, R8; int
28C8B8:  MOVS            R1, #3; int
28C8BA:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C8BE:  ORR.W           R0, R0, #1
28C8C2:  CMP             R0, #3
28C8C4:  BEQ             loc_28C988
28C8C6:  MOV             R0, R8; int
28C8C8:  MOVS            R1, #4; int
28C8CA:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C8CE:  ORR.W           R0, R0, #1
28C8D2:  CMP             R0, #3
28C8D4:  BEQ             loc_28C988
28C8D6:  MOV             R0, R8; int
28C8D8:  MOVS            R1, #5; int
28C8DA:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C8DE:  ORR.W           R0, R0, #1
28C8E2:  CMP             R0, #3
28C8E4:  BEQ             loc_28C988
28C8E6:  MOV             R0, R8; int
28C8E8:  MOVS            R1, #6; int
28C8EA:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C8EE:  ORR.W           R0, R0, #1
28C8F2:  CMP             R0, #3
28C8F4:  BEQ             loc_28C988
28C8F6:  MOV             R0, R8; int
28C8F8:  MOVS            R1, #7; int
28C8FA:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C8FE:  ORR.W           R0, R0, #1
28C902:  CMP             R0, #3
28C904:  BEQ             loc_28C988
28C906:  MOV             R0, R8; int
28C908:  MOVS            R1, #8; int
28C90A:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C90E:  ORR.W           R0, R0, #1
28C912:  CMP             R0, #3
28C914:  BEQ             loc_28C988
28C916:  MOV             R0, R8; int
28C918:  MOVS            R1, #9; int
28C91A:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C91E:  ORR.W           R0, R0, #1
28C922:  CMP             R0, #3
28C924:  BEQ             loc_28C988
28C926:  MOV             R0, R8; int
28C928:  MOVS            R1, #0xA; int
28C92A:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C92E:  ORR.W           R0, R0, #1
28C932:  CMP             R0, #3
28C934:  BEQ             loc_28C988
28C936:  MOV             R0, R8; int
28C938:  MOVS            R1, #0xB; int
28C93A:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C93E:  ORR.W           R0, R0, #1
28C942:  CMP             R0, #3
28C944:  BEQ             loc_28C988
28C946:  MOV             R0, R8; int
28C948:  MOVS            R1, #0xC; int
28C94A:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C94E:  ORR.W           R0, R0, #1
28C952:  CMP             R0, #3
28C954:  BEQ             loc_28C988
28C956:  MOV             R0, R8; int
28C958:  MOVS            R1, #0xD; int
28C95A:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C95E:  ORR.W           R0, R0, #1
28C962:  CMP             R0, #3
28C964:  BEQ             loc_28C988
28C966:  MOV             R0, R8; int
28C968:  MOVS            R1, #0xE; int
28C96A:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C96E:  ORR.W           R0, R0, #1
28C972:  CMP             R0, #3
28C974:  BEQ             loc_28C988
28C976:  MOV             R0, R8; int
28C978:  MOVS            R1, #0xF; int
28C97A:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28C97E:  ORR.W           R0, R0, #1
28C982:  CMP             R0, #3
28C984:  BNE.W           loc_28CA6A
28C988:  LDR             R0, [SP,#0x68+var_30]
28C98A:  LDR.W           R0, [R0,R8,LSL#2]
28C98E:  CBZ             R0, loc_28C99E
28C990:  LDR             R1, [R0]
28C992:  LDR             R1, [R1,#0x50]
28C994:  BLX             R1
28C996:  LDR             R1, [SP,#0x68+var_3C]
28C998:  MOVS            R0, #0
28C99A:  STR.W           R0, [R1,R8,LSL#2]
28C99E:  LDR             R0, [SP,#0x68+var_2C]
28C9A0:  CMP             R0, #0xE; switch 15 cases
28C9A2:  BHI             def_28C9A4; jumptable 0028C9A4 default case, cases 1-3,11
28C9A4:  TBB.W           [PC,R0]; switch jump
28C9A8:  DCB 8; jump table for switch statement
28C9A9:  DCB 0x5F
28C9AA:  DCB 0x5F
28C9AB:  DCB 0x5F
28C9AC:  DCB 0x32
28C9AD:  DCB 8
28C9AE:  DCB 8
28C9AF:  DCB 0x39
28C9B0:  DCB 0x40
28C9B1:  DCB 0x47
28C9B2:  DCB 0x4E
28C9B3:  DCB 0x5F
28C9B4:  DCB 0x2B
28C9B5:  DCB 0x2B
28C9B6:  DCB 0x55
28C9B7:  ALIGN 2
28C9B8:  MOVS            R0, #0x18; jumptable 0028C9A4 cases 0,5,6
28C9BA:  BLX             _Znwj; operator new(uint)
28C9BE:  ADR             R1, aButtonsxbox360; "ButtonsXbox360"
28C9C0:  BLX             j__ZN19CHIDJoystickXbox360C2EPKc; CHIDJoystickXbox360::CHIDJoystickXbox360(char const*)
28C9C4:  B               loc_28CA5E
28C9C6:  CMP             R1, #0
28C9C8:  BEQ             loc_28CA78
28C9CA:  MOV             R0, R8
28C9CC:  MOV             R1, R4
28C9CE:  BLX             j__Z21OS_GamepadIsConnectedjP13OSGamepadType; OS_GamepadIsConnected(uint,OSGamepadType *)
28C9D2:  CMP             R0, #0
28C9D4:  BNE             loc_28CA6A
28C9D6:  LDR             R0, [SP,#0x68+var_40]
28C9D8:  LDR.W           R0, [R0,R8,LSL#2]
28C9DC:  ADDS            R0, #1
28C9DE:  BEQ             loc_28CA6A
28C9E0:  LDR             R0, [SP,#0x68+var_44]
28C9E2:  LDR.W           R0, [R0,R8,LSL#2]
28C9E6:  CBZ             R0, loc_28C9F6
28C9E8:  LDR             R1, [R0]
28C9EA:  LDR             R1, [R1,#0x50]
28C9EC:  BLX             R1
28C9EE:  LDR             R1, [SP,#0x68+var_4C]
28C9F0:  MOVS            R0, #0
28C9F2:  STR.W           R0, [R1,R8,LSL#2]
28C9F6:  LDR             R0, [SP,#0x68+var_48]
28C9F8:  STR.W           R10, [R0,R8,LSL#2]
28C9FC:  B               loc_28CA6A
28C9FE:  MOVS            R0, #0x18; jumptable 0028C9A4 cases 12,13
28CA00:  BLX             _Znwj; operator new(uint)
28CA04:  ADR             R1, aButtonsxbox360; "ButtonsXbox360"
28CA06:  BLX             j__ZN18CHIDJoystickAmazonC2EPKc; CHIDJoystickAmazon::CHIDJoystickAmazon(char const*)
28CA0A:  B               loc_28CA5E
28CA0C:  MOVS            R0, #0x18; jumptable 0028C9A4 case 4
28CA0E:  BLX             _Znwj; operator new(uint)
28CA12:  ADR             R1, aButtonsmogapoc; "ButtonsMogaPocket"
28CA14:  BLX             j__ZN22CHIDJoystickMogaPocketC2EPKc; CHIDJoystickMogaPocket::CHIDJoystickMogaPocket(char const*)
28CA18:  B               loc_28CA5E
28CA1A:  MOVS            R0, #0x18; jumptable 0028C9A4 case 7
28CA1C:  BLX             _Znwj; operator new(uint)
28CA20:  ADR             R1, aButtonsmogapro; "ButtonsMogaPro"
28CA22:  BLX             j__ZN19CHIDJoystickMogaProC2EPKc; CHIDJoystickMogaPro::CHIDJoystickMogaPro(char const*)
28CA26:  B               loc_28CA5E
28CA28:  MOVS            R0, #0x18; jumptable 0028C9A4 case 8
28CA2A:  BLX             _Znwj; operator new(uint)
28CA2E:  ADR             R1, aButtonsps3; "ButtonsPS3"
28CA30:  BLX             j__ZN15CHIDJoystickPS3C2EPKc; CHIDJoystickPS3::CHIDJoystickPS3(char const*)
28CA34:  B               loc_28CA5E
28CA36:  MOVS            R0, #0x18; jumptable 0028C9A4 case 9
28CA38:  BLX             _Znwj; operator new(uint)
28CA3C:  ADR             R1, aButtonsmoga; "ButtonsMoga"
28CA3E:  BLX             j__ZN23CHIDJoystickIOSExtendedC2EPKc; CHIDJoystickIOSExtended::CHIDJoystickIOSExtended(char const*)
28CA42:  B               loc_28CA5E
28CA44:  MOVS            R0, #0x18; jumptable 0028C9A4 case 10
28CA46:  BLX             _Znwj; operator new(uint)
28CA4A:  ADR             R1, aButtonsiossimp; "ButtonsIOSSimple"
28CA4C:  BLX             j__ZN21CHIDJoystickIOSSimpleC2EPKc; CHIDJoystickIOSSimple::CHIDJoystickIOSSimple(char const*)
28CA50:  B               loc_28CA5E
28CA52:  MOVS            R0, #0x18; jumptable 0028C9A4 case 14
28CA54:  BLX             _Znwj; operator new(uint)
28CA58:  ADR             R1, aButtonsxbox360; "ButtonsXbox360"
28CA5A:  BLX             j__ZN21CHIDJoystickAndroidTVC2EPKc; CHIDJoystickAndroidTV::CHIDJoystickAndroidTV(char const*)
28CA5E:  LDR             R1, [SP,#0x68+var_34]
28CA60:  STR.W           R0, [R1,R8,LSL#2]
28CA64:  LDR             R0, [SP,#0x68+var_2C]
28CA66:  STR.W           R0, [R9,R8,LSL#2]; jumptable 0028C9A4 default case, cases 1-3,11
28CA6A:  LDR.W           R0, [R6,R8,LSL#2]
28CA6E:  CBZ             R0, loc_28CA78
28CA70:  LDR             R1, [R0]
28CA72:  LDR             R2, [R1,#0x1C]
28CA74:  MOV             R1, R8
28CA76:  BLX             R2
28CA78:  ADD.W           R8, R8, #1
28CA7C:  CMP.W           R8, #4
28CA80:  BNE.W           loc_28C7BE
28CA84:  ADD             SP, SP, #0x40 ; '@'
28CA86:  VPOP            {D8}
28CA8A:  ADD             SP, SP, #4
28CA8C:  POP.W           {R8-R11}
28CA90:  POP             {R4-R7,PC}
28CA92:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28CA9A)
28CA94:  LDR             R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28CA9C)
28CA96:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28CA98:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28CA9A:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28CA9C:  LDR             R2, [R1]; CHID::m_pInstance ...
28CA9E:  LDR             R1, [R0]; CHID::currentInstanceIndex
28CAA0:  LDR.W           R0, [R2,R1,LSL#2]
28CAA4:  CBZ             R0, loc_28CAC0
28CAA6:  LDR             R1, [R0]
28CAA8:  LDR             R1, [R1,#0x50]
28CAAA:  BLX             R1
28CAAC:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28CAB4)
28CAAE:  LDR             R1, =(_ZN4CHID11m_pInstanceE_ptr - 0x28CAB6)
28CAB0:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
28CAB2:  ADD             R1, PC; _ZN4CHID11m_pInstanceE_ptr
28CAB4:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
28CAB6:  LDR             R2, [R1]; CHID::m_pInstance ...
28CAB8:  LDR             R1, [R0]; CHID::currentInstanceIndex
28CABA:  MOVS            R0, #0
28CABC:  STR.W           R0, [R2,R1,LSL#2]
28CAC0:  LDR             R0, =(_ZN4CHID13m_GamepadTypeE_ptr - 0x28CACA)
28CAC2:  MOV.W           R2, #0xFFFFFFFF
28CAC6:  ADD             R0, PC; _ZN4CHID13m_GamepadTypeE_ptr
28CAC8:  LDR             R0, [R0]; CHID::m_GamepadType ...
28CACA:  STR.W           R2, [R0,R1,LSL#2]
28CACE:  B               loc_28CA84
