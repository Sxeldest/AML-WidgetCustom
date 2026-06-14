; =========================================================
; Game Engine Function: _ZN15CTouchInterface9CreateAllEv
; Address            : 0x2AE500 - 0x2AFA86
; =========================================================

2AE500:  PUSH            {R4-R7,LR}
2AE502:  ADD             R7, SP, #0xC
2AE504:  PUSH.W          {R8-R11}
2AE508:  SUB             SP, SP, #4
2AE50A:  VPUSH           {D8-D9}
2AE50E:  SUB             SP, SP, #0x58
2AE510:  MOV             R4, SP
2AE512:  BFC.W           R4, #0, #4
2AE516:  MOV             SP, R4
2AE518:  BLX             j__Z13OS_SystemFormv; OS_SystemForm(void)
2AE51C:  STR             R0, [SP,#0x88+var_68]
2AE51E:  LDR             R0, =(aMobile_1 - 0x2AE524); "mobile"
2AE520:  ADD             R0, PC; "mobile"
2AE522:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
2AE526:  STR             R0, [SP,#0x88+var_64]
2AE528:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
2AE52C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AE538)
2AE52E:  MOV.W           R8, #0
2AE532:  MOVS            R4, #0
2AE534:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AE536:  LDR             R5, [R0]; CTouchInterface::m_pWidgets ...
2AE538:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AE53E)
2AE53A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AE53C:  LDR             R6, [R0]; CTouchInterface::m_pWidgets ...
2AE53E:  B               loc_2AE57C
2AE540:  DCD aMobile_1 - 0x2AE524
2AE544:  DCD _ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AE538
2AE548:  DCD _ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AE53E
2AE54C:  DCD _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AE5A8
2AE550:  DCD _ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AE5AC
2AE554:  DCD _ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AE5CE
2AE558:  ALIGN 0x10
2AE561:  DCB 0, 0xA0, 0x43
2AE564:  DCD 0x43600000, 0x41F00000
2AE56C:  DCB 0, 0
2AE56E:  RORS            R0, R6
2AE570:  DCD aArcadegreenpre_0 - 0x2AE952
2AE574:  DCD aArcadebuttonEx_0 - 0x2AE980
2AE578:  DCD aArcadebuttonRe_0 - 0x2AE9AA
2AE57C:  LDR.W           R0, [R5,R4,LSL#2]
2AE580:  CBZ             R0, loc_2AE58C
2AE582:  LDR             R1, [R0]
2AE584:  LDR             R1, [R1,#4]
2AE586:  BLX             R1
2AE588:  STR.W           R8, [R6,R4,LSL#2]
2AE58C:  ADDS            R4, #1
2AE58E:  CMP             R4, #0xBE
2AE590:  BNE             loc_2AE57C
2AE592:  MOVS            R0, #0xA8; unsigned int
2AE594:  BLX             _Znwj; operator new(uint)
2AE598:  LDR.W           R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AE5A8)
2AE59C:  MOVS            R3, #6
2AE59E:  LDR.W           R2, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AE5AC)
2AE5A2:  MOVS            R4, #0x40 ; '@'
2AE5A4:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AE5A6:  STR             R3, [SP,#0x88+var_84]
2AE5A8:  ADD             R2, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AE5AA:  MOVS            R3, #1
2AE5AC:  LDR             R5, [R1]; CTouchInterface::m_pszWidgetTextures ...
2AE5AE:  MOVS            R1, #0x40 ; '@'
2AE5B0:  LDR.W           R9, [R2]; CTouchInterface::m_WidgetPosition ...
2AE5B4:  MOV.W           R10, #1
2AE5B8:  STR             R1, [SP,#0x88+var_88]
2AE5BA:  ADD.W           R1, R5, #0x180
2AE5BE:  ADD.W           R2, R9, #0x40 ; '@'
2AE5C2:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE5C6:  LDR.W           R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AE5CE)
2AE5CA:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AE5CC:  LDR.W           R11, [R1]; CTouchInterface::m_pWidgets ...
2AE5D0:  STR.W           R0, [R11,#(dword_6F37A0 - 0x6F3794)]
2AE5D4:  MOVS            R0, #0xA8; unsigned int
2AE5D6:  BLX             _Znwj; operator new(uint)
2AE5DA:  MOVS            R1, #7
2AE5DC:  ADD.W           R2, R9, #0xC0
2AE5E0:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AE5E4:  ADD.W           R1, R5, #0x200
2AE5E8:  MOVS            R3, #1
2AE5EA:  STR             R2, [SP,#0x88+var_60]
2AE5EC:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE5F0:  STR.W           R0, [R11,#(dword_6F37A4 - 0x6F3794)]
2AE5F4:  MOVS            R0, #0xC0; unsigned int
2AE5F6:  BLX             _Znwj; operator new(uint)
2AE5FA:  MOV             R1, R5
2AE5FC:  MOV             R2, R9
2AE5FE:  BLX             j__ZN21CWidgetButtonEnterCarC2EPKcRK14WidgetPosition; CWidgetButtonEnterCar::CWidgetButtonEnterCar(char const*,WidgetPosition const&)
2AE602:  STR.W           R0, [R11]; CTouchInterface::m_pWidgets
2AE606:  MOVS            R0, #0xA8; unsigned int
2AE608:  BLX             _Znwj; operator new(uint)
2AE60C:  ADD.W           R8, R9, #0xE0
2AE610:  ADD.W           R1, R5, #0x80
2AE614:  MOV             R2, R8
2AE616:  BLX             j__ZN19CWidgetButtonAttackC2EPKcRK14WidgetPosition; CWidgetButtonAttack::CWidgetButtonAttack(char const*,WidgetPosition const&)
2AE61A:  STR.W           R0, [R11,#(dword_6F3798 - 0x6F3794)]
2AE61E:  MOVS            R0, #0xA8; unsigned int
2AE620:  BLX             _Znwj; operator new(uint)
2AE624:  MOVS            R2, #0
2AE626:  MOVS            R1, #0xB
2AE628:  STR             R2, [SP,#0x88+var_88]
2AE62A:  ADD.W           R2, R9, #0x70 ; 'p'
2AE62E:  STR             R1, [SP,#0x88+var_84]
2AE630:  ADD.W           R1, R5, #0x380
2AE634:  MOVS            R3, #1
2AE636:  MOVS            R4, #0
2AE638:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE63C:  STR.W           R0, [R11,#(dword_6F37B0 - 0x6F3794)]
2AE640:  MOVS            R0, #0xA8; unsigned int
2AE642:  BLX             _Znwj; operator new(uint)
2AE646:  STR             R4, [SP,#0x88+var_88]
2AE648:  MOVS            R1, #0x34 ; '4'
2AE64A:  ADD.W           R4, R9, #0x90
2AE64E:  STR             R1, [SP,#0x88+var_84]
2AE650:  ADD.W           R1, R5, #0x400
2AE654:  MOVS            R3, #1
2AE656:  MOV             R2, R4
2AE658:  MOVS            R6, #0
2AE65A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE65E:  STR.W           R0, [R11,#(dword_6F37B4 - 0x6F3794)]
2AE662:  MOVS            R0, #0xA8; unsigned int
2AE664:  BLX             _Znwj; operator new(uint)
2AE668:  MOVS            R1, #0xE
2AE66A:  MOV.W           R2, #0x800
2AE66E:  STRD.W          R2, R1, [SP,#0x88+var_88]
2AE672:  ADD.W           R1, R5, #0x480
2AE676:  MOV             R2, R4
2AE678:  MOVS            R3, #1
2AE67A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE67E:  STR.W           R0, [R11,#(dword_6F37B8 - 0x6F3794)]
2AE682:  MOVS            R0, #0xA8; unsigned int
2AE684:  BLX             _Znwj; operator new(uint)
2AE688:  MOVS            R1, #0x67 ; 'g'
2AE68A:  MOV             R2, R4
2AE68C:  STRD.W          R6, R1, [SP,#0x88+var_88]
2AE690:  ADD.W           R1, R5, #0x500
2AE694:  MOVS            R3, #1
2AE696:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE69A:  STR.W           R0, [R11,#(dword_6F37BC - 0x6F3794)]
2AE69E:  MOVS            R0, #0xA8; unsigned int
2AE6A0:  BLX             _Znwj; operator new(uint)
2AE6A4:  ADD.W           R4, R9, #0x10
2AE6A8:  ADD.W           R1, R5, #0x580
2AE6AC:  MOVS            R3, #1
2AE6AE:  STRD.W          R6, R10, [SP,#0x88+var_88]
2AE6B2:  MOV             R2, R4
2AE6B4:  STR             R4, [SP,#0x88+var_70]
2AE6B6:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE6BA:  STR.W           R0, [R11,#(dword_6F37C0 - 0x6F3794)]
2AE6BE:  MOVS            R0, #0xA8; unsigned int
2AE6C0:  BLX             _Znwj; operator new(uint)
2AE6C4:  MOVS            R1, #9
2AE6C6:  STR             R6, [SP,#0x88+var_88]
2AE6C8:  STR             R1, [SP,#0x88+var_84]
2AE6CA:  ADD.W           R1, R5, #0x900
2AE6CE:  ADD.W           R2, R9, #0xD0
2AE6D2:  MOVS            R3, #1
2AE6D4:  MOVS            R6, #0
2AE6D6:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE6DA:  STR.W           R0, [R11,#(dword_6F37DC - 0x6F3794)]
2AE6DE:  MOVS            R0, #0xA8; unsigned int
2AE6E0:  BLX             _Znwj; operator new(uint)
2AE6E4:  ADD.W           R10, R9, #0xA0
2AE6E8:  ADD.W           R1, R5, #0x800
2AE6EC:  MOVS            R3, #0x13
2AE6EE:  MOV             R2, R10
2AE6F0:  BLX             j__ZN25CWidgetButtonVehicleShootC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonVehicleShoot::CWidgetButtonVehicleShoot(char const*,WidgetPosition const&,HIDMapping)
2AE6F4:  STR.W           R0, [R11,#(dword_6F37D4 - 0x6F3794)]
2AE6F8:  MOVS            R0, #0xA8; unsigned int
2AE6FA:  BLX             _Znwj; operator new(uint)
2AE6FE:  ADD.W           R2, R9, #0xB0
2AE702:  ADD.W           R1, R5, #0x880
2AE706:  MOVS            R3, #0x14
2AE708:  STR             R2, [SP,#0x88+var_6C]
2AE70A:  BLX             j__ZN25CWidgetButtonVehicleShootC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonVehicleShoot::CWidgetButtonVehicleShoot(char const*,WidgetPosition const&,HIDMapping)
2AE70E:  STR.W           R0, [R11,#(dword_6F37D8 - 0x6F3794)]
2AE712:  MOVS            R0, #0xCC; unsigned int
2AE714:  BLX             _Znwj; operator new(uint)
2AE718:  ADD.W           R1, R5, #0x600
2AE71C:  ADD.W           R2, R9, #0x6E0
2AE720:  BLX             j__ZN23CWidgetButtonHydraulicsC2EPKcRK14WidgetPosition; CWidgetButtonHydraulics::CWidgetButtonHydraulics(char const*,WidgetPosition const&)
2AE724:  STR.W           R0, [R11,#(dword_6F37C4 - 0x6F3794)]
2AE728:  MOVS            R0, #0xAC; unsigned int
2AE72A:  BLX             _Znwj; operator new(uint)
2AE72E:  ADD.W           R1, R5, #0x680
2AE732:  MOV             R2, R4
2AE734:  BLX             j__ZN27CWidgetButtonAutoHydraulicsC2EPKcRK14WidgetPosition; CWidgetButtonAutoHydraulics::CWidgetButtonAutoHydraulics(char const*,WidgetPosition const&)
2AE738:  STR.W           R0, [R11,#(dword_6F37C8 - 0x6F3794)]
2AE73C:  MOVS            R0, #0xA8; unsigned int
2AE73E:  BLX             _Znwj; operator new(uint)
2AE742:  ADD.W           R1, R5, #0x700
2AE746:  MOV             R2, R9
2AE748:  MOVS            R3, #0x32 ; '2'
2AE74A:  BLX             j__ZN17CWidgetButtonDropC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonDrop::CWidgetButtonDrop(char const*,WidgetPosition const&,HIDMapping)
2AE74E:  STR.W           R0, [R11,#(dword_6F37CC - 0x6F3794)]
2AE752:  MOVS            R0, #0xA8; unsigned int
2AE754:  BLX             _Znwj; operator new(uint)
2AE758:  ADD.W           R1, R5, #0x780
2AE75C:  MOV             R2, R8
2AE75E:  MOVS            R3, #0x33 ; '3'
2AE760:  BLX             j__ZN17CWidgetButtonDropC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonDrop::CWidgetButtonDrop(char const*,WidgetPosition const&,HIDMapping)
2AE764:  STR.W           R0, [R11,#(dword_6F37D0 - 0x6F3794)]
2AE768:  MOVS            R0, #0xA8; unsigned int
2AE76A:  BLX             _Znwj; operator new(uint)
2AE76E:  ADD.W           R4, R5, #0xA80
2AE772:  ADD.W           R2, R9, #0xF0
2AE776:  MOV             R1, R4
2AE778:  BLX             j__ZN20CWidgetButtonVCShootC2EPKcRK14WidgetPosition; CWidgetButtonVCShoot::CWidgetButtonVCShoot(char const*,WidgetPosition const&)
2AE77C:  STR.W           R0, [R11,#(dword_6F37E8 - 0x6F3794)]
2AE780:  MOVS            R0, #0xA8; unsigned int
2AE782:  BLX             _Znwj; operator new(uint)
2AE786:  ADD.W           R2, R9, #0x100
2AE78A:  MOV             R1, R4
2AE78C:  BLX             j__ZN20CWidgetButtonVCShootC2EPKcRK14WidgetPosition; CWidgetButtonVCShoot::CWidgetButtonVCShoot(char const*,WidgetPosition const&)
2AE790:  STR.W           R0, [R11,#(dword_6F37EC - 0x6F3794)]
2AE794:  MOVS            R0, #0xA8; unsigned int
2AE796:  BLX             _Znwj; operator new(uint)
2AE79A:  ADD.W           R1, R5, #0x980
2AE79E:  MOV             R2, R8
2AE7A0:  BLX             j__ZN22CWidgetButtonTargetingC2EPKcRK14WidgetPosition; CWidgetButtonTargeting::CWidgetButtonTargeting(char const*,WidgetPosition const&)
2AE7A4:  STR.W           R0, [R11,#(dword_6F37E0 - 0x6F3794)]
2AE7A8:  MOVS            R0, #0xA8; unsigned int
2AE7AA:  BLX             _Znwj; operator new(uint)
2AE7AE:  ADD.W           R1, R5, #0xA00
2AE7B2:  MOV             R2, R8
2AE7B4:  BLX             j__ZN22CWidgetButtonTargetingC2EPKcRK14WidgetPosition; CWidgetButtonTargeting::CWidgetButtonTargeting(char const*,WidgetPosition const&)
2AE7B8:  STR.W           R0, [R11,#(dword_6F37E4 - 0x6F3794)]
2AE7BC:  MOVS            R0, #0xA8; unsigned int
2AE7BE:  BLX             _Znwj; operator new(uint)
2AE7C2:  MOVS            R1, #0x58 ; 'X'
2AE7C4:  MOVS            R3, #1
2AE7C6:  STRD.W          R6, R1, [SP,#0x88+var_88]
2AE7CA:  ADD.W           R1, R5, #0xB80
2AE7CE:  LDR             R2, [SP,#0x88+var_60]
2AE7D0:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE7D4:  STR.W           R0, [R11,#(dword_6F37F0 - 0x6F3794)]
2AE7D8:  MOVS            R0, #0xA8; unsigned int
2AE7DA:  BLX             _Znwj; operator new(uint)
2AE7DE:  MOVS            R1, #0x25 ; '%'
2AE7E0:  MOV.W           R2, #0xC00
2AE7E4:  ADD.W           R4, R9, #0x260
2AE7E8:  STRD.W          R2, R1, [SP,#0x88+var_88]
2AE7EC:  ADD.W           R1, R5, #0xC80
2AE7F0:  MOVS            R3, #1
2AE7F2:  MOV             R2, R4
2AE7F4:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE7F8:  STR.W           R0, [R11,#(dword_6F37F8 - 0x6F3794)]
2AE7FC:  MOVS            R0, #0xA8; unsigned int
2AE7FE:  BLX             _Znwj; operator new(uint)
2AE802:  LDR.W           R8, [SP,#0x88+var_70]
2AE806:  ADD.W           R1, R5, #0xC00
2AE80A:  MOV             R2, R8
2AE80C:  BLX             j__ZN19CWidgetButtonRocketC2EPKcRK14WidgetPosition; CWidgetButtonRocket::CWidgetButtonRocket(char const*,WidgetPosition const&)
2AE810:  STR.W           R0, [R11,#(dword_6F37F4 - 0x6F3794)]
2AE814:  MOVS            R0, #0xA8; unsigned int
2AE816:  BLX             _Znwj; operator new(uint)
2AE81A:  MOVS            R1, #0x26 ; '&'
2AE81C:  MOVS            R6, #0
2AE81E:  STRD.W          R6, R1, [SP,#0x88+var_88]
2AE822:  ADD.W           R1, R5, #0xD00
2AE826:  MOV             R2, R10
2AE828:  MOVS            R3, #1
2AE82A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE82E:  STR.W           R0, [R11,#(dword_6F37FC - 0x6F3794)]
2AE832:  MOVS            R0, #0xA8; unsigned int
2AE834:  BLX             _Znwj; operator new(uint)
2AE838:  MOVS            R1, #0x27 ; '''
2AE83A:  LDR             R2, [SP,#0x88+var_6C]
2AE83C:  STR             R6, [SP,#0x88+var_88]
2AE83E:  MOVS            R3, #1
2AE840:  STR             R1, [SP,#0x88+var_84]; int
2AE842:  ADD.W           R1, R5, #0xD80
2AE846:  MOVS            R6, #0
2AE848:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE84C:  STR.W           R0, [R11,#(dword_6F3800 - 0x6F3794)]
2AE850:  MOVS            R0, #0xA8; unsigned int
2AE852:  BLX             _Znwj; operator new(uint)
2AE856:  MOVS            R1, #0x21 ; '!'
2AE858:  MOV.W           R2, #0xC00
2AE85C:  STRD.W          R2, R1, [SP,#0x88+var_88]
2AE860:  ADD.W           R1, R5, #0xE00
2AE864:  MOV             R10, R4
2AE866:  MOV             R2, R4
2AE868:  MOVS            R3, #1
2AE86A:  STR.W           R10, [SP,#0x88+var_74]
2AE86E:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE872:  STR.W           R0, [R11,#(dword_6F3804 - 0x6F3794)]
2AE876:  MOVS            R0, #0xA8; unsigned int
2AE878:  BLX             _Znwj; operator new(uint)
2AE87C:  MOVS            R1, #0x35 ; '5'
2AE87E:  MOV             R2, R8
2AE880:  STRD.W          R6, R1, [SP,#0x88+var_88]
2AE884:  ADD.W           R1, R5, #0xF00
2AE888:  MOVS            R3, #1
2AE88A:  MOV             R6, R8
2AE88C:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE890:  STR.W           R0, [R11,#(dword_6F380C - 0x6F3794)]
2AE894:  MOVS            R0, #0xA8; unsigned int
2AE896:  BLX             _Znwj; operator new(uint)
2AE89A:  ADD.W           R1, R5, #0xE80
2AE89E:  ADD.W           R2, R9, #0x110
2AE8A2:  BLX             j__ZN24CWidgetButtonSwapWeaponsC2EPKcRK14WidgetPosition; CWidgetButtonSwapWeapons::CWidgetButtonSwapWeapons(char const*,WidgetPosition const&)
2AE8A6:  STR.W           R0, [R11,#(dword_6F3808 - 0x6F3794)]
2AE8AA:  MOVS            R0, #0xA8; unsigned int
2AE8AC:  BLX             _Znwj; operator new(uint)
2AE8B0:  MOVS            R2, #0x2B ; '+'
2AE8B2:  MOVW            R1, #0xC04
2AE8B6:  STRD.W          R1, R2, [SP,#0x88+var_88]
2AE8BA:  ADD.W           R1, R5, #0x3780
2AE8BE:  ADD.W           R2, R9, #0x140
2AE8C2:  MOVS            R3, #1
2AE8C4:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE8C8:  STR.W           R0, [R11,#(dword_6F3950 - 0x6F3794)]
2AE8CC:  MOVS            R0, #0xA8; unsigned int
2AE8CE:  BLX             _Znwj; operator new(uint)
2AE8D2:  MOVS            R1, #0x2A ; '*'
2AE8D4:  MOVW            R2, #0x2C04
2AE8D8:  STRD.W          R2, R1, [SP,#0x88+var_88]
2AE8DC:  ADD.W           R1, R5, #0x3700
2AE8E0:  ADD.W           R2, R9, #0x150
2AE8E4:  MOVS            R3, #1
2AE8E6:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AE8EA:  STR.W           R0, [R11,#(dword_6F394C - 0x6F3794)]
2AE8EE:  MOVS            R0, #0x90; unsigned int
2AE8F0:  BLX             _Znwj; operator new(uint)
2AE8F4:  ADD.W           R1, R5, #0x1180
2AE8F8:  ADD.W           R2, R9, #0x160
2AE8FC:  BLX             j__ZN24CWidgetRegionPoolEnglishC2EPKcRK14WidgetPosition; CWidgetRegionPoolEnglish::CWidgetRegionPoolEnglish(char const*,WidgetPosition const&)
2AE900:  STR.W           R0, [R11,#(dword_6F3820 - 0x6F3794)]
2AE904:  ADR.W           R0, unk_2AE560
2AE908:  VLD1.64         {D16-D17}, [R0@128]
2AE90C:  ADD             R4, SP, #0x88+var_48
2AE90E:  MOVS            R0, #0x90; unsigned int
2AE910:  VST1.64         {D16-D17}, [R4@128]
2AE914:  BLX             _Znwj; operator new(uint)
2AE918:  ADD.W           R1, R5, #0x1200
2AE91C:  MOV             R2, R4
2AE91E:  BLX             j__ZN27CWidgetRegionPoolBallInHandC2EPKcRK14WidgetPosition; CWidgetRegionPoolBallInHand::CWidgetRegionPoolBallInHand(char const*,WidgetPosition const&)
2AE922:  STR.W           R0, [R11,#(dword_6F3824 - 0x6F3794)]
2AE926:  MOV.W           R0, #0x1C0; unsigned int
2AE92A:  BLX             _Znwj; operator new(uint)
2AE92E:  MOVW            R3, #0x1C14
2AE932:  MOVS            R2, #0
2AE934:  STRD.W          R2, R3, [SP,#0x88+var_88]
2AE938:  MOVS            R1, #0x43 ; 'C'
2AE93A:  STR             R2, [SP,#0x88+var_80]
2AE93C:  ADD.W           R3, R9, #0x170
2AE940:  LDR.W           R2, =(aArcadegreenpre_0 - 0x2AE952); "ArcadeGreenPressed"
2AE944:  MOVW            R8, #0x1C14
2AE948:  STR             R1, [SP,#0x88+var_7C]; int
2AE94A:  ADD.W           R1, R5, #0x1280
2AE94E:  ADD             R2, PC; "ArcadeGreenPressed"
2AE950:  MOVS            R4, #0
2AE952:  BLX             j__ZN27CWidgetButtonAnimatedArcadeC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimatedArcade::CWidgetButtonAnimatedArcade(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AE956:  STR.W           R0, [R11,#(dword_6F3828 - 0x6F3794)]
2AE95A:  MOV.W           R0, #0x1C0; unsigned int
2AE95E:  BLX             _Znwj; operator new(uint)
2AE962:  MOVW            R2, #0x3C14
2AE966:  MOVS            R1, #0x44 ; 'D'
2AE968:  STRD.W          R4, R2, [SP,#0x88+var_88]; int
2AE96C:  ADD.W           R3, R9, #0x180; int
2AE970:  LDR.W           R2, =(aArcadebuttonEx_0 - 0x2AE980); "ArcadeButton_ExitDown"
2AE974:  STRD.W          R4, R1, [SP,#0x88+var_80]; char *
2AE978:  ADD.W           R1, R5, #0x1300; int
2AE97C:  ADD             R2, PC; "ArcadeButton_ExitDown"
2AE97E:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AE982:  STR.W           R0, [R11,#(dword_6F382C - 0x6F3794)]
2AE986:  MOV.W           R0, #0x1C0; unsigned int
2AE98A:  BLX             _Znwj; operator new(uint)
2AE98E:  MOVS            R2, #0
2AE990:  MOVS            R1, #0x45 ; 'E'
2AE992:  STRD.W          R2, R8, [SP,#0x88+var_88]; int
2AE996:  ADD.W           R3, R9, #0x190; int
2AE99A:  STRD.W          R2, R1, [SP,#0x88+var_80]; char *
2AE99E:  ADD.W           R1, R5, #0x1380; int
2AE9A2:  LDR.W           R2, =(aArcadebuttonRe_0 - 0x2AE9AA); "ArcadeButton_ResetDown"
2AE9A6:  ADD             R2, PC; "ArcadeButton_ResetDown"
2AE9A8:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AE9AC:  STR.W           R0, [R11,#(dword_6F3830 - 0x6F3794)]
2AE9B0:  MOVS            R0, #0x98; unsigned int
2AE9B2:  BLX             _Znwj; operator new(uint)
2AE9B6:  MOVS            R1, #0x46 ; 'F'
2AE9B8:  ADD.W           R2, R9, #0x1A0
2AE9BC:  STR             R1, [SP,#0x88+var_88]
2AE9BE:  ADD.W           R1, R5, #0x1400
2AE9C2:  MOVW            R3, #0x1C14
2AE9C6:  BLX             j__ZN24CWidgetRegionArcadeStickC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegionArcadeStick::CWidgetRegionArcadeStick(char const*,WidgetPosition const&,int,HIDMapping)
2AE9CA:  STR.W           R0, [R11,#(dword_6F3834 - 0x6F3794)]
2AE9CE:  MOVS            R0, #0xA8; unsigned int
2AE9D0:  BLX             _Znwj; operator new(uint)
2AE9D4:  ADD.W           R1, R5, #0x1480
2AE9D8:  ADD.W           R2, R9, #0x1B0
2AE9DC:  BLX             j__ZN25CWidgetButtonSkipCutsceneC2EPKcRK14WidgetPosition; CWidgetButtonSkipCutscene::CWidgetButtonSkipCutscene(char const*,WidgetPosition const&)
2AE9E0:  STR.W           R0, [R11,#(dword_6F3838 - 0x6F3794)]
2AE9E4:  MOVS            R0, #0xA8; unsigned int
2AE9E6:  BLX             _Znwj; operator new(uint)
2AE9EA:  MOVS            R1, #0x38 ; '8'
2AE9EC:  MOVW            R4, #0xC04
2AE9F0:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AE9F4:  ADD.W           R1, R5, #0x1500
2AE9F8:  MOV             R2, R10
2AE9FA:  MOVS            R3, #1
2AE9FC:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEA00:  STR.W           R0, [R11,#(dword_6F383C - 0x6F3794)]
2AEA04:  MOVS            R0, #0xA8; unsigned int
2AEA06:  BLX             _Znwj; operator new(uint)
2AEA0A:  MOVS            R1, #0x47 ; 'G'
2AEA0C:  ADD.W           R2, R9, #0x250
2AEA10:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AEA14:  ADD.W           R1, R5, #0x1580
2AEA18:  MOVS            R3, #1
2AEA1A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEA1E:  STR.W           R0, [R11,#(dword_6F3840 - 0x6F3794)]
2AEA22:  MOVS            R0, #0xA8; unsigned int
2AEA24:  BLX             _Znwj; operator new(uint)
2AEA28:  MOVS            R2, #4
2AEA2A:  MOVS            R1, #0x36 ; '6'
2AEA2C:  STR             R2, [SP,#0x88+var_88]
2AEA2E:  MOV             R2, R6
2AEA30:  STR             R1, [SP,#0x88+var_84]
2AEA32:  ADD.W           R1, R5, #0x1600
2AEA36:  MOVS            R3, #1
2AEA38:  MOVS            R4, #4
2AEA3A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEA3E:  STR.W           R0, [R11,#(dword_6F3844 - 0x6F3794)]
2AEA42:  MOVS            R0, #0xA8; unsigned int
2AEA44:  BLX             _Znwj; operator new(uint)
2AEA48:  MOVS            R1, #0x37 ; '7'
2AEA4A:  MOVS            R3, #1
2AEA4C:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AEA50:  ADD.W           R1, R5, #0x1680
2AEA54:  LDR             R4, [SP,#0x88+var_60]
2AEA56:  MOV             R2, R4
2AEA58:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEA5C:  STR.W           R0, [R11,#(dword_6F3848 - 0x6F3794)]
2AEA60:  MOVS            R0, #0xA8; unsigned int
2AEA62:  BLX             _Znwj; operator new(uint)
2AEA66:  MOVS            R1, #0x53 ; 'S'
2AEA68:  MOVW            R8, #0xC04
2AEA6C:  STRD.W          R8, R1, [SP,#0x88+var_88]
2AEA70:  ADD.W           R1, R5, #0x1700
2AEA74:  MOV             R2, R6
2AEA76:  MOVS            R3, #1
2AEA78:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEA7C:  STR.W           R0, [R11,#(dword_6F384C - 0x6F3794)]
2AEA80:  MOVS            R0, #0xA8; unsigned int
2AEA82:  BLX             _Znwj; operator new(uint)
2AEA86:  MOVS            R1, #0x54 ; 'T'
2AEA88:  MOV             R2, R4
2AEA8A:  STRD.W          R8, R1, [SP,#0x88+var_88]
2AEA8E:  ADD.W           R1, R5, #0x1780
2AEA92:  MOVS            R3, #1
2AEA94:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEA98:  STR.W           R0, [R11,#(dword_6F3850 - 0x6F3794)]
2AEA9C:  MOVS            R0, #0xA8; unsigned int
2AEA9E:  BLX             _Znwj; operator new(uint)
2AEAA2:  MOVS            R1, #0x48 ; 'H'
2AEAA4:  MOVW            R4, #0xC04
2AEAA8:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AEAAC:  ADD.W           R2, R9, #0x390
2AEAB0:  ADD.W           R1, R5, #0x1800
2AEAB4:  MOVS            R3, #1
2AEAB6:  STR             R2, [SP,#0x88+var_6C]
2AEAB8:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEABC:  STR.W           R0, [R11,#(dword_6F3854 - 0x6F3794)]
2AEAC0:  MOVS            R0, #0xA8; unsigned int
2AEAC2:  BLX             _Znwj; operator new(uint)
2AEAC6:  MOVS            R1, #0x49 ; 'I'
2AEAC8:  STR             R4, [SP,#0x88+var_88]
2AEACA:  STR             R1, [SP,#0x88+var_84]
2AEACC:  ADD.W           R2, R9, #0x3A0
2AEAD0:  ADD.W           R1, R5, #0x1880
2AEAD4:  MOVS            R3, #1
2AEAD6:  MOVW            R4, #0xC04
2AEADA:  STR             R2, [SP,#0x88+var_70]
2AEADC:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEAE0:  STR.W           R0, [R11,#(dword_6F3858 - 0x6F3794)]
2AEAE4:  MOVS            R0, #0xA8; unsigned int
2AEAE6:  BLX             _Znwj; operator new(uint)
2AEAEA:  ADD.W           R1, R5, #0x1900
2AEAEE:  ADD.W           R2, R9, #0x50 ; 'P'
2AEAF2:  MOVS            R3, #0x22 ; '"'
2AEAF4:  BLX             j__ZN17CWidgetButtonZoomC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonZoom::CWidgetButtonZoom(char const*,WidgetPosition const&,HIDMapping)
2AEAF8:  STR.W           R0, [R11,#(dword_6F385C - 0x6F3794)]
2AEAFC:  MOVS            R0, #0xA8; unsigned int
2AEAFE:  BLX             _Znwj; operator new(uint)
2AEB02:  ADD.W           R1, R5, #0x1980
2AEB06:  ADD.W           R2, R9, #0x60 ; '`'
2AEB0A:  MOVS            R3, #0x23 ; '#'
2AEB0C:  BLX             j__ZN17CWidgetButtonZoomC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonZoom::CWidgetButtonZoom(char const*,WidgetPosition const&,HIDMapping)
2AEB10:  STR.W           R0, [R11,#(dword_6F3860 - 0x6F3794)]
2AEB14:  MOVS            R0, #0xA8; unsigned int
2AEB16:  BLX             _Znwj; operator new(uint)
2AEB1A:  MOVS            R1, #0x3E ; '>'
2AEB1C:  ADD.W           R2, R9, #0x1C0
2AEB20:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AEB24:  ADD.W           R1, R5, #0x1A00
2AEB28:  MOVS            R3, #1
2AEB2A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEB2E:  STR.W           R0, [R11,#(dword_6F3864 - 0x6F3794)]
2AEB32:  MOVS            R0, #0xA8; unsigned int
2AEB34:  BLX             _Znwj; operator new(uint)
2AEB38:  MOVS            R1, #0x3F ; '?'
2AEB3A:  ADD.W           R2, R9, #0x1D0
2AEB3E:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AEB42:  ADD.W           R1, R5, #0x1A80
2AEB46:  MOVS            R3, #1
2AEB48:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEB4C:  STR.W           R0, [R11,#(dword_6F3868 - 0x6F3794)]
2AEB50:  MOVS            R0, #0xA8; unsigned int
2AEB52:  BLX             _Znwj; operator new(uint)
2AEB56:  ADD.W           R1, R5, #0x1B00
2AEB5A:  ADD.W           R2, R9, #0x1E0
2AEB5E:  MOVS            R3, #1
2AEB60:  MOV.W           R8, #0x38 ; '8'
2AEB64:  STR             R4, [SP,#0x88+var_88]
2AEB66:  STR.W           R8, [SP,#0x88+var_84]
2AEB6A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEB6E:  STR.W           R0, [R11,#(dword_6F386C - 0x6F3794)]
2AEB72:  MOVS            R0, #0xA8; unsigned int
2AEB74:  BLX             _Znwj; operator new(uint)
2AEB78:  ADD.W           R4, R9, #0x1F0
2AEB7C:  MOVS            R1, #0x39 ; '9'
2AEB7E:  MOVW            R10, #0x2C04
2AEB82:  MOVS            R3, #1
2AEB84:  STRD.W          R10, R1, [SP,#0x88+var_88]
2AEB88:  ADD.W           R1, R5, #0x1B80
2AEB8C:  MOV             R2, R4
2AEB8E:  MOVS            R6, #0x39 ; '9'
2AEB90:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEB94:  STR.W           R0, [R11,#(dword_6F3870 - 0x6F3794)]
2AEB98:  MOVS            R0, #0xA8; unsigned int
2AEB9A:  BLX             _Znwj; operator new(uint)
2AEB9E:  ADD.W           R1, R5, #0x1C00
2AEBA2:  MOV             R2, R4
2AEBA4:  MOVS            R3, #1
2AEBA6:  STRD.W          R10, R6, [SP,#0x88+var_88]
2AEBAA:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEBAE:  STR.W           R0, [R11,#(dword_6F3874 - 0x6F3794)]
2AEBB2:  MOVS            R0, #0xA8; unsigned int
2AEBB4:  BLX             _Znwj; operator new(uint)
2AEBB8:  MOVW            R1, #0xC04
2AEBBC:  ADD.W           R2, R9, #0x200
2AEBC0:  STRD.W          R1, R8, [SP,#0x88+var_88]
2AEBC4:  ADD.W           R1, R5, #0x1C80
2AEBC8:  MOVS            R3, #1
2AEBCA:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEBCE:  STR.W           R0, [R11,#(dword_6F3878 - 0x6F3794)]
2AEBD2:  MOVS            R0, #0xA8; unsigned int
2AEBD4:  BLX             _Znwj; operator new(uint)
2AEBD8:  ADR.W           R1, dword_2AFA90
2AEBDC:  ADD.W           R10, SP, #0x88+var_58
2AEBE0:  VLD1.64         {D8-D9}, [R1@128]
2AEBE4:  MOVS            R1, #0x3D ; '='
2AEBE6:  MOVW            R4, #0x414
2AEBEA:  MOV             R2, R10
2AEBEC:  VST1.64         {D8-D9}, [R10@128]
2AEBF0:  MOVS            R3, #1
2AEBF2:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AEBF6:  ADD.W           R1, R5, #0x1D00
2AEBFA:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEBFE:  STR.W           R0, [R11,#(dword_6F387C - 0x6F3794)]
2AEC02:  MOVS            R0, #0xA8; unsigned int
2AEC04:  BLX             _Znwj; operator new(uint)
2AEC08:  MOVS            R1, #0x3C ; '<'
2AEC0A:  VST1.64         {D8-D9}, [R10@128]
2AEC0E:  MOV             R2, R10
2AEC10:  MOVS            R3, #1
2AEC12:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AEC16:  ADD.W           R1, R5, #0x1D80
2AEC1A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEC1E:  STR.W           R0, [R11,#(dword_6F3880 - 0x6F3794)]
2AEC22:  MOVS            R0, #0xA8; unsigned int
2AEC24:  BLX             _Znwj; operator new(uint)
2AEC28:  MOVS            R1, #0x3E ; '>'
2AEC2A:  STR             R4, [SP,#0x88+var_88]
2AEC2C:  STR             R1, [SP,#0x88+var_84]
2AEC2E:  ADD.W           R1, R5, #0x1E00
2AEC32:  MOV             R2, R10
2AEC34:  MOVS            R3, #1
2AEC36:  VST1.64         {D8-D9}, [R10@128]
2AEC3A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEC3E:  STR.W           R0, [R11,#(dword_6F3884 - 0x6F3794)]
2AEC42:  MOVS            R0, #0xA8; unsigned int
2AEC44:  BLX             _Znwj; operator new(uint)
2AEC48:  MOVS            R1, #0x3F ; '?'
2AEC4A:  STR             R4, [SP,#0x88+var_88]
2AEC4C:  STR             R1, [SP,#0x88+var_84]
2AEC4E:  ADD.W           R1, R5, #0x1E80
2AEC52:  MOV             R2, R10
2AEC54:  MOVS            R3, #1
2AEC56:  VST1.64         {D8-D9}, [R10@128]
2AEC5A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEC5E:  STR.W           R0, [R11,#(dword_6F3888 - 0x6F3794)]
2AEC62:  MOVS            R0, #0xA8; unsigned int
2AEC64:  BLX             _Znwj; operator new(uint)
2AEC68:  MOVS            R1, #0x4E ; 'N'
2AEC6A:  MOVW            R4, #0xC04
2AEC6E:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AEC72:  ADD.W           R1, R5, #0x1F00
2AEC76:  ADD.W           R2, R9, #0x120
2AEC7A:  MOVS            R3, #1
2AEC7C:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEC80:  STR.W           R0, [R11,#(dword_6F388C - 0x6F3794)]
2AEC84:  MOVS            R0, #0xA8; unsigned int
2AEC86:  BLX             _Znwj; operator new(uint)
2AEC8A:  MOVS            R1, #0x4F ; 'O'
2AEC8C:  ADD.W           R2, R9, #0x130
2AEC90:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AEC94:  ADD.W           R1, R5, #0x1F80
2AEC98:  MOVS            R3, #1
2AEC9A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEC9E:  STR.W           R0, [R11,#(dword_6F3890 - 0x6F3794)]
2AECA2:  MOV.W           R0, #0x100; unsigned int
2AECA6:  BLX             _Znwj; operator new(uint)
2AECAA:  ADD.W           R1, R5, #0x2000
2AECAE:  ADD.W           R2, R9, #0x210
2AECB2:  BLX             j__ZN30CWidgetRegionSteeringSelectionC2EPKcRK14WidgetPosition; CWidgetRegionSteeringSelection::CWidgetRegionSteeringSelection(char const*,WidgetPosition const&)
2AECB6:  STR.W           R0, [R11,#(dword_6F3894 - 0x6F3794)]
2AECBA:  MOVS            R0, #0xE4; unsigned int
2AECBC:  BLX             _Znwj; operator new(uint)
2AECC0:  ADD.W           R1, R5, #0x2080
2AECC4:  ADD.W           R2, R9, #0x220
2AECC8:  BLX             j__ZN33CWidgetRegionTouchLayoutSelectionC2EPKcRK14WidgetPosition; CWidgetRegionTouchLayoutSelection::CWidgetRegionTouchLayoutSelection(char const*,WidgetPosition const&)
2AECCC:  STR.W           R0, [R11,#(dword_6F3898 - 0x6F3794)]
2AECD0:  MOVS            R0, #0xA8; unsigned int
2AECD2:  BLX             _Znwj; operator new(uint)
2AECD6:  MOVS            R1, #0x3A ; ':'
2AECD8:  MOV.W           R8, #0xC00
2AECDC:  STRD.W          R8, R1, [SP,#0x88+var_88]
2AECE0:  ADD.W           R1, R5, #0x2100
2AECE4:  LDR             R4, [SP,#0x88+var_74]
2AECE6:  MOVS            R3, #1
2AECE8:  MOV             R2, R4
2AECEA:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AECEE:  STR.W           R0, [R11,#(dword_6F389C - 0x6F3794)]
2AECF2:  MOVS            R0, #0xA8; unsigned int
2AECF4:  BLX             _Znwj; operator new(uint)
2AECF8:  MOVS            R1, #0x28 ; '('
2AECFA:  LDR             R2, [SP,#0x88+var_60]
2AECFC:  STR.W           R8, [SP,#0x88+var_88]
2AED00:  MOVS            R3, #1
2AED02:  STR             R1, [SP,#0x88+var_84]
2AED04:  ADD.W           R1, R5, #0x2180
2AED08:  MOV.W           R8, #0xC00
2AED0C:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AED10:  STR.W           R0, [R11,#(dword_6F38A0 - 0x6F3794)]
2AED14:  MOVS            R0, #0xA8; unsigned int
2AED16:  BLX             _Znwj; operator new(uint)
2AED1A:  MOVS            R1, #0x3B ; ';'
2AED1C:  MOV             R2, R4
2AED1E:  STRD.W          R8, R1, [SP,#0x88+var_88]
2AED22:  ADD.W           R1, R5, #0x2200
2AED26:  MOVS            R3, #1
2AED28:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AED2C:  STR.W           R0, [R11,#(dword_6F38A4 - 0x6F3794)]
2AED30:  MOVS            R0, #0xA8; unsigned int
2AED32:  BLX             _Znwj; operator new(uint)
2AED36:  ADD.W           R1, R5, #0x2280
2AED3A:  MOV             R2, R4
2AED3C:  MOVS            R3, #0x16
2AED3E:  BLX             j__ZN25CWidgetButtonMissionStartC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonMissionStart::CWidgetButtonMissionStart(char const*,WidgetPosition const&,HIDMapping)
2AED42:  STR.W           R0, [R11,#(dword_6F38A8 - 0x6F3794)]
2AED46:  MOVS            R0, #0xA8; unsigned int
2AED48:  BLX             _Znwj; operator new(uint)
2AED4C:  ADD.W           R1, R5, #0x2380
2AED50:  MOV             R2, R4
2AED52:  MOVS            R3, #0x16
2AED54:  BLX             j__ZN26CWidgetButtonMissionCancelC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonMissionCancel::CWidgetButtonMissionCancel(char const*,WidgetPosition const&,HIDMapping)
2AED58:  STR.W           R0, [R11,#(dword_6F38B0 - 0x6F3794)]
2AED5C:  MOVS            R0, #0xA8; unsigned int
2AED5E:  BLX             _Znwj; operator new(uint)
2AED62:  ADD.W           R1, R5, #0x2300
2AED66:  MOV             R2, R4
2AED68:  MOVS            R3, #0x17
2AED6A:  BLX             j__ZN25CWidgetButtonMissionStartC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonMissionStart::CWidgetButtonMissionStart(char const*,WidgetPosition const&,HIDMapping)
2AED6E:  STR.W           R0, [R11,#(dword_6F38AC - 0x6F3794)]
2AED72:  MOVS            R0, #0xA8; unsigned int
2AED74:  BLX             _Znwj; operator new(uint)
2AED78:  ADD.W           R1, R5, #0x2400
2AED7C:  MOV             R2, R4
2AED7E:  MOVS            R3, #0x17
2AED80:  BLX             j__ZN26CWidgetButtonMissionCancelC2EPKcRK14WidgetPosition10HIDMapping; CWidgetButtonMissionCancel::CWidgetButtonMissionCancel(char const*,WidgetPosition const&,HIDMapping)
2AED84:  STR.W           R0, [R11,#(dword_6F38B4 - 0x6F3794)]
2AED88:  MOVS            R0, #0xA8; unsigned int
2AED8A:  BLX             _Znwj; operator new(uint)
2AED8E:  MOV.W           R1, #0xC80
2AED92:  MOVS            R4, #0x16
2AED94:  STR             R1, [SP,#0x88+var_88]
2AED96:  ADD.W           R1, R5, #0x2480
2AED9A:  MOV             R2, R9
2AED9C:  MOVS            R3, #1
2AED9E:  STR             R4, [SP,#0x88+var_84]
2AEDA0:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEDA4:  STR.W           R0, [R11,#(dword_6F38B8 - 0x6F3794)]
2AEDA8:  MOVS            R0, #0xA8; unsigned int
2AEDAA:  BLX             _Znwj; operator new(uint)
2AEDAE:  MOVW            R1, #0x2C14
2AEDB2:  ADD.W           R2, R9, #0x840
2AEDB6:  STRD.W          R1, R4, [SP,#0x88+var_88]
2AEDBA:  ADD.W           R1, R5, #0x2500
2AEDBE:  MOVS            R3, #1
2AEDC0:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEDC4:  STR.W           R0, [R11,#(dword_6F38BC - 0x6F3794)]
2AEDC8:  MOVS            R0, #0xB0; unsigned int
2AEDCA:  BLX             _Znwj; operator new(uint)
2AEDCE:  ADD.W           R1, R5, #0x2800
2AEDD2:  ADD.W           R2, R9, #0x2D0
2AEDD6:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AEDDA:  LDR.W           R1, [R0,#0x80]
2AEDDE:  MOV             R8, #0x461C3C00
2AEDE6:  STR.W           R0, [R11,#(dword_6F38D4 - 0x6F3794)]
2AEDEA:  BIC.W           R1, R1, #0x10
2AEDEE:  STR.W           R8, [R0,#0x1C]
2AEDF2:  STR.W           R1, [R0,#0x80]
2AEDF6:  MOVS            R0, #0xB0; unsigned int
2AEDF8:  BLX             _Znwj; operator new(uint)
2AEDFC:  ADD.W           R1, R5, #0x2880
2AEE00:  ADD.W           R2, R9, #0x2E0
2AEE04:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AEE08:  LDR.W           R1, [R0,#0x80]
2AEE0C:  STR.W           R0, [R11,#(dword_6F38D8 - 0x6F3794)]
2AEE10:  BIC.W           R1, R1, #0x10
2AEE14:  STR.W           R1, [R0,#0x80]
2AEE18:  MOVS            R0, #0xB0; unsigned int
2AEE1A:  BLX             _Znwj; operator new(uint)
2AEE1E:  ADD.W           R1, R5, #0x2900
2AEE22:  ADD.W           R2, R9, #0x2F0
2AEE26:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AEE2A:  LDR.W           R1, [R0,#0x80]
2AEE2E:  STR.W           R0, [R11,#(dword_6F38DC - 0x6F3794)]
2AEE32:  BIC.W           R1, R1, #0x10
2AEE36:  STR.W           R1, [R0,#0x80]
2AEE3A:  MOVS            R0, #0xB0; unsigned int
2AEE3C:  BLX             _Znwj; operator new(uint)
2AEE40:  ADD.W           R1, R5, #0x2980
2AEE44:  ADD.W           R2, R9, #0x300
2AEE48:  STR             R1, [SP,#0x88+var_60]
2AEE4A:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AEE4E:  LDR.W           R1, [R0,#0x80]
2AEE52:  STR.W           R0, [R11,#(dword_6F38E0 - 0x6F3794)]
2AEE56:  BIC.W           R1, R1, #0x10
2AEE5A:  STR.W           R1, [R0,#0x80]
2AEE5E:  MOVS            R0, #0xB0; unsigned int
2AEE60:  BLX             _Znwj; operator new(uint)
2AEE64:  ADD.W           R1, R5, #0x2A00
2AEE68:  ADD.W           R2, R9, #0x310
2AEE6C:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AEE70:  LDR.W           R1, [R0,#0x80]
2AEE74:  STR.W           R0, [R11,#(dword_6F38E4 - 0x6F3794)]
2AEE78:  BIC.W           R1, R1, #0x10
2AEE7C:  STR.W           R1, [R0,#0x80]
2AEE80:  MOVS            R0, #0xB0; unsigned int
2AEE82:  BLX             _Znwj; operator new(uint)
2AEE86:  ADD.W           R1, R5, #0x2A80
2AEE8A:  ADD.W           R2, R9, #0x320
2AEE8E:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AEE92:  LDR.W           R1, [R0,#0x80]
2AEE96:  STR.W           R0, [R11,#(dword_6F38E8 - 0x6F3794)]
2AEE9A:  BIC.W           R1, R1, #0x10
2AEE9E:  STR.W           R1, [R0,#0x80]
2AEEA2:  MOVS            R0, #0xB0; unsigned int
2AEEA4:  BLX             _Znwj; operator new(uint)
2AEEA8:  ADD.W           R1, R5, #0x2B00
2AEEAC:  ADD.W           R2, R9, #0x330
2AEEB0:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AEEB4:  LDR.W           R1, [R0,#0x80]
2AEEB8:  STR.W           R0, [R11,#(dword_6F38EC - 0x6F3794)]
2AEEBC:  BIC.W           R1, R1, #0x10
2AEEC0:  STR.W           R1, [R0,#0x80]
2AEEC4:  MOVS            R0, #0xA8; unsigned int
2AEEC6:  BLX             _Znwj; operator new(uint)
2AEECA:  MOVW            R1, #0xC14
2AEECE:  ADD.W           R2, R9, #0x2C0
2AEED2:  STR             R1, [SP,#0x88+var_88]
2AEED4:  ADD.W           R1, R5, #0x2780
2AEED8:  MOVS            R4, #0x38 ; '8'
2AEEDA:  MOVS            R3, #1
2AEEDC:  STR             R4, [SP,#0x88+var_84]
2AEEDE:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEEE2:  STR.W           R0, [R11,#(dword_6F38D0 - 0x6F3794)]
2AEEE6:  MOV.W           R0, #0x1A8; unsigned int
2AEEEA:  BLX             _Znwj; operator new(uint)
2AEEEE:  MOVW            R6, #0x1414
2AEEF2:  MOVS            R1, #0x3E ; '>'
2AEEF4:  STR             R6, [SP,#0x88+var_88]
2AEEF6:  ADD.W           R2, R9, #0x290
2AEEFA:  STR             R1, [SP,#0x88+var_84]
2AEEFC:  ADD.W           R1, R5, #0x2600
2AEF00:  MOVS            R3, #0
2AEF02:  BLX             j__ZN19CWidgetButtonSchoolC2EPKcRK14WidgetPositionS1_i10HIDMapping; CWidgetButtonSchool::CWidgetButtonSchool(char const*,WidgetPosition const&,char const*,int,HIDMapping)
2AEF06:  STR.W           R0, [R11,#(dword_6F38C4 - 0x6F3794)]
2AEF0A:  MOV.W           R0, #0x1A8; unsigned int
2AEF0E:  BLX             _Znwj; operator new(uint)
2AEF12:  MOVS            R1, #0x3F ; '?'
2AEF14:  STR             R6, [SP,#0x88+var_88]
2AEF16:  STR             R1, [SP,#0x88+var_84]
2AEF18:  ADD.W           R1, R5, #0x2680
2AEF1C:  ADD.W           R2, R9, #0x2A0
2AEF20:  MOVS            R3, #0
2AEF22:  BLX             j__ZN19CWidgetButtonSchoolC2EPKcRK14WidgetPositionS1_i10HIDMapping; CWidgetButtonSchool::CWidgetButtonSchool(char const*,WidgetPosition const&,char const*,int,HIDMapping)
2AEF26:  STR.W           R0, [R11,#(dword_6F38C8 - 0x6F3794)]
2AEF2A:  MOV.W           R0, #0x1A8; unsigned int
2AEF2E:  BLX             _Znwj; operator new(uint)
2AEF32:  MOVS            R1, #0x41 ; 'A'
2AEF34:  MOVW            R2, #0x3C14
2AEF38:  STRD.W          R2, R1, [SP,#0x88+var_88]
2AEF3C:  ADD.W           R1, R5, #0x2580
2AEF40:  ADD.W           R2, R9, #0x280
2AEF44:  ADR.W           R3, aExit_0; "EXIT"
2AEF48:  BLX             j__ZN19CWidgetButtonSchoolC2EPKcRK14WidgetPositionS1_i10HIDMapping; CWidgetButtonSchool::CWidgetButtonSchool(char const*,WidgetPosition const&,char const*,int,HIDMapping)
2AEF4C:  STR.W           R0, [R11,#(dword_6F38C0 - 0x6F3794)]
2AEF50:  MOV.W           R0, #0x1A8; unsigned int
2AEF54:  BLX             _Znwj; operator new(uint)
2AEF58:  MOVW            R1, #0x1C14
2AEF5C:  ADD.W           R2, R9, #0x2B0
2AEF60:  STR             R1, [SP,#0x88+var_88]
2AEF62:  MOVS            R1, #0x40 ; '@'
2AEF64:  STR             R1, [SP,#0x88+var_84]
2AEF66:  ADD.W           R1, R5, #0x2700
2AEF6A:  ADR.W           R3, aStart; "START"
2AEF6E:  BLX             j__ZN19CWidgetButtonSchoolC2EPKcRK14WidgetPositionS1_i10HIDMapping; CWidgetButtonSchool::CWidgetButtonSchool(char const*,WidgetPosition const&,char const*,int,HIDMapping)
2AEF72:  STR.W           R0, [R11,#(dword_6F38CC - 0x6F3794)]
2AEF76:  MOVS            R1, #0
2AEF78:  LDR.W           R0, [R11,#(dword_6F38C4 - 0x6F3794)]
2AEF7C:  MOVT            R1, #0x3FE0
2AEF80:  STR.W           R8, [R0,#0x1C]
2AEF84:  LDR.W           R0, [R11,#(dword_6F38C8 - 0x6F3794)]
2AEF88:  STR.W           R8, [R0,#0x1C]
2AEF8C:  LDR.W           R0, [R11,#(dword_6F38C0 - 0x6F3794)]
2AEF90:  STR.W           R8, [R0,#0x1C]
2AEF94:  LDR.W           R0, [R11,#(dword_6F38CC - 0x6F3794)]
2AEF98:  STR.W           R8, [R0,#0x1C]
2AEF9C:  LDR.W           R0, [R11,#(dword_6F38CC - 0x6F3794)]
2AEFA0:  STR             R1, [R0,#0x30]
2AEFA2:  LDR.W           R0, [R11,#(dword_6F38C0 - 0x6F3794)]
2AEFA6:  STR             R1, [R0,#0x30]
2AEFA8:  MOVS            R1, #0
2AEFAA:  LDR.W           R0, [R11,#(dword_6F38C4 - 0x6F3794)]
2AEFAE:  MOVT            R1, #0x4040
2AEFB2:  STR             R1, [R0,#0x30]
2AEFB4:  LDR.W           R0, [R11,#(dword_6F38C8 - 0x6F3794)]
2AEFB8:  STR             R1, [R0,#0x30]
2AEFBA:  MOVS            R0, #0xA8; unsigned int
2AEFBC:  BLX             _Znwj; operator new(uint)
2AEFC0:  ADD.W           R1, R5, #0x2B80
2AEFC4:  ADD.W           R2, R9, #0x340
2AEFC8:  BLX             j__ZN28CWidgetButtonBasketballShootC2EPKcRK14WidgetPosition; CWidgetButtonBasketballShoot::CWidgetButtonBasketballShoot(char const*,WidgetPosition const&)
2AEFCC:  STR.W           R0, [R11,#(dword_6F38F0 - 0x6F3794)]
2AEFD0:  MOVS            R0, #0xA8; unsigned int
2AEFD2:  BLX             _Znwj; operator new(uint)
2AEFD6:  MOVS            R1, #3
2AEFD8:  MOVS            R2, #4
2AEFDA:  STRD.W          R2, R1, [SP,#0x88+var_88]
2AEFDE:  ADD.W           R1, R5, #0x2C00
2AEFE2:  ADD.W           R2, R9, #0x350
2AEFE6:  MOVS            R3, #1
2AEFE8:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AEFEC:  STR.W           R0, [R11,#(dword_6F38F4 - 0x6F3794)]
2AEFF0:  MOVS            R0, #0xA8; unsigned int
2AEFF2:  BLX             _Znwj; operator new(uint)
2AEFF6:  MOVW            R1, #0x2C14
2AEFFA:  ADD.W           R2, R9, #0x360
2AEFFE:  STR             R1, [SP,#0x88+var_88]
2AF000:  MOVS            R1, #0x39 ; '9'
2AF002:  STR             R1, [SP,#0x88+var_84]
2AF004:  ADD.W           R1, R5, #0x2C80
2AF008:  MOVS            R3, #1
2AF00A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF00E:  STR.W           R0, [R11,#(dword_6F38F8 - 0x6F3794)]
2AF012:  MOVS            R0, #0xA8; unsigned int
2AF014:  BLX             _Znwj; operator new(uint)
2AF018:  MOVW            R1, #0xC14
2AF01C:  ADD.W           R2, R9, #0x370
2AF020:  STRD.W          R1, R4, [SP,#0x88+var_88]
2AF024:  ADD.W           R1, R5, #0x2D00
2AF028:  MOVS            R3, #1
2AF02A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF02E:  STR.W           R0, [R11,#(dword_6F38FC - 0x6F3794)]
2AF032:  MOVS            R0, #0xA8; unsigned int
2AF034:  BLX             _Znwj; operator new(uint)
2AF038:  MOVS            R1, #0x4A ; 'J'
2AF03A:  MOVW            R4, #0xC04
2AF03E:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AF042:  ADD.W           R1, R5, #0x2D80
2AF046:  ADD.W           R2, R9, #0x380
2AF04A:  MOVS            R3, #1
2AF04C:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF050:  STR.W           R0, [R11,#(dword_6F3900 - 0x6F3794)]
2AF054:  MOVS            R0, #0xA8; unsigned int
2AF056:  BLX             _Znwj; operator new(uint)
2AF05A:  MOVS            R1, #0x4B ; 'K'
2AF05C:  LDR             R2, [SP,#0x88+var_6C]
2AF05E:  STR             R4, [SP,#0x88+var_88]
2AF060:  MOVS            R3, #1
2AF062:  STR             R1, [SP,#0x88+var_84]
2AF064:  ADD.W           R1, R5, #0x2E00
2AF068:  MOVW            R8, #0xC04
2AF06C:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF070:  STR.W           R0, [R11,#(dword_6F3904 - 0x6F3794)]
2AF074:  MOVS            R0, #0xA8; unsigned int
2AF076:  BLX             _Znwj; operator new(uint)
2AF07A:  MOVS            R1, #0x4C ; 'L'
2AF07C:  MOVS            R3, #1
2AF07E:  STRD.W          R8, R1, [SP,#0x88+var_88]
2AF082:  ADD.W           R1, R5, #0x2E80
2AF086:  LDR             R2, [SP,#0x88+var_70]
2AF088:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF08C:  STR.W           R0, [R11,#(dword_6F3908 - 0x6F3794)]
2AF090:  MOVS            R0, #0xA8; unsigned int
2AF092:  BLX             _Znwj; operator new(uint)
2AF096:  MOVS            R1, #0x4D ; 'M'
2AF098:  ADD.W           R2, R9, #0x3B0
2AF09C:  STRD.W          R8, R1, [SP,#0x88+var_88]
2AF0A0:  ADD.W           R1, R5, #0x2F00
2AF0A4:  MOVS            R3, #1
2AF0A6:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF0AA:  STR.W           R0, [R11,#(dword_6F390C - 0x6F3794)]
2AF0AE:  MOVS            R0, #0x90; unsigned int
2AF0B0:  BLX             _Znwj; operator new(uint)
2AF0B4:  ADD.W           R1, R5, #0x2F80
2AF0B8:  ADD.W           R2, R9, #0x3C0
2AF0BC:  MOVS            R6, #0
2AF0BE:  MOVS            R3, #4
2AF0C0:  STR             R6, [SP,#0x88+var_88]
2AF0C2:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF0C6:  STR.W           R0, [R11,#(dword_6F3910 - 0x6F3794)]
2AF0CA:  MOVS            R0, #0xA8; unsigned int
2AF0CC:  BLX             _Znwj; operator new(uint)
2AF0D0:  MOVS            R1, #0x2E ; '.'
2AF0D2:  MOVS            R4, #4
2AF0D4:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AF0D8:  ADD.W           R1, R5, #0x3080
2AF0DC:  ADD.W           R2, R9, #0x3E0
2AF0E0:  MOVS            R3, #1
2AF0E2:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF0E6:  STR.W           R0, [R11,#(dword_6F3918 - 0x6F3794)]
2AF0EA:  MOVS            R0, #0xA8; unsigned int
2AF0EC:  BLX             _Znwj; operator new(uint)
2AF0F0:  MOVS            R1, #0x2F ; '/'
2AF0F2:  STR             R4, [SP,#0x88+var_88]
2AF0F4:  STR             R1, [SP,#0x88+var_84]
2AF0F6:  ADD.W           R1, R5, #0x3100
2AF0FA:  ADD.W           R2, R9, #0x3F0
2AF0FE:  MOVS            R3, #1
2AF100:  MOVS            R4, #4
2AF102:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF106:  STR.W           R0, [R11,#(dword_6F391C - 0x6F3794)]
2AF10A:  MOVS            R0, #0xA8; unsigned int
2AF10C:  BLX             _Znwj; operator new(uint)
2AF110:  MOVS            R1, #0x30 ; '0'
2AF112:  ADD.W           R2, R9, #0x400
2AF116:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AF11A:  ADD.W           R1, R5, #0x3180
2AF11E:  MOVS            R3, #1
2AF120:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF124:  STR.W           R0, [R11,#(dword_6F3920 - 0x6F3794)]
2AF128:  MOVS            R0, #0xA8; unsigned int
2AF12A:  BLX             _Znwj; operator new(uint)
2AF12E:  MOVS            R1, #0x31 ; '1'
2AF130:  ADD.W           R2, R9, #0x410
2AF134:  STRD.W          R4, R1, [SP,#0x88+var_88]
2AF138:  ADD.W           R1, R5, #0x3200
2AF13C:  MOVS            R3, #1
2AF13E:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF142:  STR.W           R0, [R11,#(dword_6F3924 - 0x6F3794)]
2AF146:  MOVS            R0, #0xA8; unsigned int
2AF148:  BLX             _Znwj; operator new(uint)
2AF14C:  MOVW            R1, #0x2C04
2AF150:  ADD.W           R2, R9, #0x430
2AF154:  STR             R1, [SP,#0x88+var_88]
2AF156:  MOVS            R1, #0x16
2AF158:  STR             R1, [SP,#0x88+var_84]
2AF15A:  ADD.W           R1, R5, #0x3300
2AF15E:  MOVS            R3, #1
2AF160:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF164:  STR.W           R0, [R11,#(dword_6F392C - 0x6F3794)]
2AF168:  MOVS            R0, #0xB0; unsigned int
2AF16A:  BLX             _Znwj; operator new(uint)
2AF16E:  LDR             R4, [SP,#0x88+var_60]
2AF170:  ADD.W           R2, R9, #0x440
2AF174:  MOV             R1, R4
2AF176:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AF17A:  STR.W           R0, [R11,#(dword_6F3930 - 0x6F3794)]
2AF17E:  MOVS            R0, #0xB0; unsigned int
2AF180:  BLX             _Znwj; operator new(uint)
2AF184:  ADD.W           R2, R9, #0x450
2AF188:  MOV             R1, R4
2AF18A:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AF18E:  STR.W           R0, [R11,#(dword_6F3934 - 0x6F3794)]
2AF192:  MOVS            R0, #0xA8; unsigned int
2AF194:  BLX             _Znwj; operator new(uint)
2AF198:  MOVS            R1, #0x2A ; '*'
2AF19A:  STR.W           R8, [SP,#0x88+var_88]
2AF19E:  STR             R1, [SP,#0x88+var_84]
2AF1A0:  ADD.W           R1, R5, #0x3500
2AF1A4:  MOV             R2, R10
2AF1A6:  MOVS            R3, #1
2AF1A8:  VST1.64         {D8-D9}, [R10@128]
2AF1AC:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF1B0:  STR.W           R0, [R11,#(dword_6F393C - 0x6F3794)]
2AF1B4:  MOVS            R0, #0xA8; unsigned int
2AF1B6:  BLX             _Znwj; operator new(uint)
2AF1BA:  MOVS            R1, #0x2B ; '+'
2AF1BC:  STR.W           R8, [SP,#0x88+var_88]
2AF1C0:  STR             R1, [SP,#0x88+var_84]
2AF1C2:  ADD.W           R1, R5, #0x3580
2AF1C6:  MOV             R2, R10
2AF1C8:  MOVS            R3, #1
2AF1CA:  VST1.64         {D8-D9}, [R10@128]
2AF1CE:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF1D2:  STR.W           R0, [R11,#(dword_6F3940 - 0x6F3794)]
2AF1D6:  MOVS            R0, #0xA8; unsigned int
2AF1D8:  BLX             _Znwj; operator new(uint)
2AF1DC:  MOVS            R1, #0x2C ; ','
2AF1DE:  VST1.64         {D8-D9}, [R10@128]
2AF1E2:  MOV             R2, R10
2AF1E4:  MOVS            R3, #1
2AF1E6:  STRD.W          R8, R1, [SP,#0x88+var_88]
2AF1EA:  ADD.W           R1, R5, #0x3600
2AF1EE:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF1F2:  STR.W           R0, [R11,#(dword_6F3944 - 0x6F3794)]
2AF1F6:  MOVS            R0, #0xA8; unsigned int
2AF1F8:  BLX             _Znwj; operator new(uint)
2AF1FC:  MOV             R4, R0
2AF1FE:  MOVS            R0, #0x2D ; '-'
2AF200:  ADD.W           R1, R5, #0x3680
2AF204:  VST1.64         {D8-D9}, [R10@128]
2AF208:  MOV             R2, R10
2AF20A:  MOVS            R3, #1
2AF20C:  STRD.W          R8, R0, [SP,#0x88+var_88]
2AF210:  MOV             R0, R4
2AF212:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF216:  ADD.W           R8, SP, #0x88+var_5C
2AF21A:  MOVS            R0, #0xFF
2AF21C:  STR             R0, [SP,#0x88+var_88]; unsigned __int8
2AF21E:  MOVS            R1, #0xFF; unsigned __int8
2AF220:  MOV             R0, R8; this
2AF222:  MOVS            R2, #0xFF; unsigned __int8
2AF224:  MOVS            R3, #0xFF; unsigned __int8
2AF226:  STR.W           R4, [R11,#(dword_6F3948 - 0x6F3794)]
2AF22A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AF22E:  ADR.W           R1, aHudTicks; "hud_ticks"
2AF232:  MOV             R0, R4
2AF234:  MOVS            R2, #0
2AF236:  MOV             R3, R8
2AF238:  STR             R6, [SP,#0x88+var_88]
2AF23A:  BLX             j__ZN7CWidget16CreateHoldEffectEPKcb5CRGBAb; CWidget::CreateHoldEffect(char const*,bool,CRGBA,bool)
2AF23E:  MOVS            R0, #0xA8; unsigned int
2AF240:  BLX             _Znwj; operator new(uint)
2AF244:  ADD.W           R1, R5, #0x3480
2AF248:  ADD.W           R2, R9, #0x460
2AF24C:  BLX             j__ZN17CWidgetRegionGangC2EPKcRK14WidgetPosition; CWidgetRegionGang::CWidgetRegionGang(char const*,WidgetPosition const&)
2AF250:  STR.W           R0, [R11,#(dword_6F3938 - 0x6F3794)]
2AF254:  ADD.W           R4, R9, #0x470
2AF258:  LDR             R0, [SP,#0x88+var_68]
2AF25A:  MOV             R6, R9
2AF25C:  CMP             R0, #1
2AF25E:  MOV.W           R0, #0x90; unsigned int
2AF262:  IT EQ
2AF264:  ADDEQ.W         R4, R9, #0x480
2AF268:  BLX             _Znwj; operator new(uint)
2AF26C:  ADD.W           R1, R5, #0x3800
2AF270:  MOV             R2, R4
2AF272:  BLX             j__ZN24CWidgetRegionColorPickerC2EPKcRK14WidgetPosition; CWidgetRegionColorPicker::CWidgetRegionColorPicker(char const*,WidgetPosition const&)
2AF276:  STR.W           R0, [R11,#(dword_6F3954 - 0x6F3794)]
2AF27A:  MOVS            R0, #0xA8; unsigned int
2AF27C:  BLX             _Znwj; operator new(uint)
2AF280:  ADD.W           R1, R5, #0x3980
2AF284:  ADD.W           R2, R6, #0x490
2AF288:  MOV.W           R8, #4
2AF28C:  MOVS            R3, #0
2AF28E:  MOVS            R4, #0
2AF290:  STR.W           R8, [SP,#0x88+var_88]
2AF294:  STR             R4, [SP,#0x88+var_84]
2AF296:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF29A:  STR.W           R0, [R11,#(dword_6F3960 - 0x6F3794)]
2AF29E:  MOVS            R0, #0xA8; unsigned int
2AF2A0:  BLX             _Znwj; operator new(uint)
2AF2A4:  ADD.W           R1, R5, #0x3A00
2AF2A8:  ADD.W           R2, R6, #0x4A0
2AF2AC:  MOVS            R3, #0
2AF2AE:  STR.W           R8, [SP,#0x88+var_88]
2AF2B2:  MOV.W           R9, #4
2AF2B6:  STR             R4, [SP,#0x88+var_84]
2AF2B8:  MOV.W           R8, #0
2AF2BC:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF2C0:  STR.W           R0, [R11,#(dword_6F3964 - 0x6F3794)]
2AF2C4:  MOVS            R0, #0xA8; unsigned int
2AF2C6:  BLX             _Znwj; operator new(uint)
2AF2CA:  ADD.W           R1, R5, #0x3A80
2AF2CE:  ADD.W           R2, R6, #0x4B0
2AF2D2:  MOVS            R3, #0
2AF2D4:  STRD.W          R9, R8, [SP,#0x88+var_88]
2AF2D8:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF2DC:  STR.W           R0, [R11,#(dword_6F3968 - 0x6F3794)]
2AF2E0:  MOVS            R0, #0xA8; unsigned int
2AF2E2:  BLX             _Znwj; operator new(uint)
2AF2E6:  ADD.W           R1, R5, #0x3B00
2AF2EA:  ADD.W           R2, R6, #0x4C0
2AF2EE:  MOVS            R3, #0
2AF2F0:  STRD.W          R9, R8, [SP,#0x88+var_88]
2AF2F4:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF2F8:  STR.W           R0, [R11,#(dword_6F396C - 0x6F3794)]
2AF2FC:  MOVS            R0, #0xA8; unsigned int
2AF2FE:  BLX             _Znwj; operator new(uint)
2AF302:  ADD.W           R1, R5, #0x3B80
2AF306:  ADD.W           R2, R6, #0x4D0
2AF30A:  MOVS            R3, #0
2AF30C:  STRD.W          R9, R8, [SP,#0x88+var_88]
2AF310:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF314:  STR.W           R0, [R11,#(dword_6F3970 - 0x6F3794)]
2AF318:  MOVS            R0, #0xA8; unsigned int
2AF31A:  BLX             _Znwj; operator new(uint)
2AF31E:  ADD.W           R1, R5, #0x3C00
2AF322:  ADD.W           R2, R6, #0x4E0
2AF326:  MOVS            R3, #0
2AF328:  STRD.W          R9, R8, [SP,#0x88+var_88]
2AF32C:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF330:  STR.W           R0, [R11,#(dword_6F3974 - 0x6F3794)]
2AF334:  MOV.W           R0, #0x1C0; unsigned int
2AF338:  BLX             _Znwj; operator new(uint)
2AF33C:  LDR.W           R1, =(byte_61CD7E - 0x2AF350)
2AF340:  MOVW            R10, #0x1C14
2AF344:  STR.W           R8, [SP,#0x88+var_88]; int
2AF348:  ADD.W           R3, R6, #0x4F0; int
2AF34C:  ADD             R1, PC; byte_61CD7E
2AF34E:  ADR.W           R2, aArrowrightpres; "ArrowRightPressed"
2AF352:  MOV.W           R9, #0x38 ; '8'
2AF356:  STRD.W          R10, R1, [SP,#0x88+var_84]; int
2AF35A:  MOV             R4, R1
2AF35C:  ADR.W           R1, aArrowright; "ArrowRight"
2AF360:  STR.W           R9, [SP,#0x88+var_7C]; int
2AF364:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF368:  STR.W           R0, [R11,#(dword_6F3978 - 0x6F3794)]
2AF36C:  MOV.W           R0, #0x1C0; unsigned int
2AF370:  BLX             _Znwj; operator new(uint)
2AF374:  ADD.W           R3, R6, #0x500; int
2AF378:  ADR.W           R1, aArrowleft; "ArrowLeft"
2AF37C:  ADR.W           R2, aArrowleftpress; "ArrowLeftPressed"
2AF380:  STRD.W          R8, R10, [SP,#0x88+var_88]; int
2AF384:  STRD.W          R4, R9, [SP,#0x88+var_80]; char *
2AF388:  MOV.W           R9, #0x38 ; '8'
2AF38C:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF390:  STR.W           R0, [R11,#(dword_6F397C - 0x6F3794)]
2AF394:  MOV.W           R0, #0x1C0; unsigned int
2AF398:  BLX             _Znwj; operator new(uint)
2AF39C:  ADR.W           R10, aVp19; "VP19"
2AF3A0:  MOVW            R1, #0x1C14
2AF3A4:  STR.W           R8, [SP,#0x88+var_88]; int
2AF3A8:  ADR.W           R4, aHoldbutton; "HoldButton"
2AF3AC:  STRD.W          R1, R10, [SP,#0x88+var_84]; int
2AF3B0:  ADD.W           R3, R6, #0x510; int
2AF3B4:  STR.W           R9, [SP,#0x88+var_7C]; int
2AF3B8:  ADR.W           R9, aHoldbuttonpres; "HoldButtonPressed"
2AF3BC:  MOV             R1, R4; int
2AF3BE:  MOV             R2, R9; int
2AF3C0:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF3C4:  STR.W           R0, [R11,#(dword_6F3984 - 0x6F3794)]
2AF3C8:  MOV.W           R0, #0x1C0; unsigned int
2AF3CC:  BLX             _Znwj; operator new(uint)
2AF3D0:  MOVW            R1, #0x1C14
2AF3D4:  STR.W           R8, [SP,#0x88+var_88]; int
2AF3D8:  STRD.W          R1, R10, [SP,#0x88+var_84]; int
2AF3DC:  MOVS            R1, #0x38 ; '8'
2AF3DE:  ADD.W           R3, R6, #0x520; int
2AF3E2:  STR             R1, [SP,#0x88+var_7C]; int
2AF3E4:  MOV             R1, R4; int
2AF3E6:  MOV             R2, R9; int
2AF3E8:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF3EC:  STR.W           R0, [R11,#(dword_6F3988 - 0x6F3794)]
2AF3F0:  MOV.W           R0, #0x1C0; unsigned int
2AF3F4:  BLX             _Znwj; operator new(uint)
2AF3F8:  MOVW            R1, #0x1C14
2AF3FC:  STR.W           R8, [SP,#0x88+var_88]; int
2AF400:  STRD.W          R1, R10, [SP,#0x88+var_84]; int
2AF404:  MOVS            R1, #0x38 ; '8'
2AF406:  ADD.W           R3, R6, #0x530; int
2AF40A:  STR             R1, [SP,#0x88+var_7C]; int
2AF40C:  MOV             R1, R4; int
2AF40E:  MOV             R2, R9; int
2AF410:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF414:  STR.W           R0, [R11,#(dword_6F398C - 0x6F3794)]
2AF418:  MOV.W           R0, #0x1C0; unsigned int
2AF41C:  BLX             _Znwj; operator new(uint)
2AF420:  MOVW            R1, #0x1C14
2AF424:  STR.W           R8, [SP,#0x88+var_88]; int
2AF428:  STRD.W          R1, R10, [SP,#0x88+var_84]; int
2AF42C:  MOVS            R1, #0x38 ; '8'
2AF42E:  ADD.W           R3, R6, #0x540; int
2AF432:  STR             R1, [SP,#0x88+var_7C]; int
2AF434:  MOV             R1, R4; int
2AF436:  MOV             R2, R9; int
2AF438:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF43C:  STR.W           R0, [R11,#(dword_6F3990 - 0x6F3794)]
2AF440:  MOV.W           R0, #0x1C0; unsigned int
2AF444:  BLX             _Znwj; operator new(uint)
2AF448:  MOVW            R1, #0x1C14
2AF44C:  STR.W           R8, [SP,#0x88+var_88]; int
2AF450:  STRD.W          R1, R10, [SP,#0x88+var_84]; int
2AF454:  MOVS            R1, #0x38 ; '8'
2AF456:  ADD.W           R3, R6, #0x550; int
2AF45A:  STR             R1, [SP,#0x88+var_7C]; int
2AF45C:  MOV             R1, R4; int
2AF45E:  MOV             R2, R9; int
2AF460:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF464:  STR.W           R0, [R11,#(dword_6F3994 - 0x6F3794)]
2AF468:  MOVS            R0, #0x90; unsigned int
2AF46A:  BLX             _Znwj; operator new(uint)
2AF46E:  LDR.W           R4, =(byte_61CD7E - 0x2AF482)
2AF472:  ADD.W           R2, R6, #0x560
2AF476:  MOVW            R3, #0x1014
2AF47A:  STR.W           R8, [SP,#0x88+var_88]
2AF47E:  ADD             R4, PC; byte_61CD7E
2AF480:  MOV             R1, R4
2AF482:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF486:  STR.W           R0, [R11,#(dword_6F3998 - 0x6F3794)]
2AF48A:  MOVS            R0, #0x90; unsigned int
2AF48C:  BLX             _Znwj; operator new(uint)
2AF490:  ADD.W           R2, R6, #0x570
2AF494:  MOV             R1, R4
2AF496:  MOVW            R3, #0x1014
2AF49A:  STR.W           R8, [SP,#0x88+var_88]
2AF49E:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF4A2:  STR.W           R0, [R11,#(dword_6F399C - 0x6F3794)]
2AF4A6:  MOVS            R0, #0x90; unsigned int
2AF4A8:  BLX             _Znwj; operator new(uint)
2AF4AC:  ADD.W           R2, R6, #0x580
2AF4B0:  MOV             R1, R4
2AF4B2:  MOVW            R3, #0x1014
2AF4B6:  STR.W           R8, [SP,#0x88+var_88]
2AF4BA:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF4BE:  STR.W           R0, [R11,#(dword_6F39A0 - 0x6F3794)]
2AF4C2:  MOVS            R0, #0x90; unsigned int
2AF4C4:  BLX             _Znwj; operator new(uint)
2AF4C8:  ADD.W           R2, R6, #0x590
2AF4CC:  MOV             R1, R4
2AF4CE:  MOVW            R3, #0x1014
2AF4D2:  STR.W           R8, [SP,#0x88+var_88]
2AF4D6:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF4DA:  STR.W           R0, [R11,#(dword_6F39A4 - 0x6F3794)]
2AF4DE:  MOVS            R0, #0x90; unsigned int
2AF4E0:  BLX             _Znwj; operator new(uint)
2AF4E4:  ADD.W           R2, R6, #0x5A0
2AF4E8:  MOV             R1, R4
2AF4EA:  MOVW            R3, #0x1014
2AF4EE:  STR.W           R8, [SP,#0x88+var_88]
2AF4F2:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF4F6:  STR.W           R0, [R11,#(dword_6F39A8 - 0x6F3794)]
2AF4FA:  MOV.W           R0, #0x1C0; unsigned int
2AF4FE:  BLX             _Znwj; operator new(uint)
2AF502:  ADR.W           R9, aPokerbuttonpre; "PokerButtonPressed"
2AF506:  MOVW            R1, #0x3C14
2AF50A:  ADR.W           R4, aPokerbutton; "PokerButton"
2AF50E:  STR.W           R8, [SP,#0x88+var_88]; int
2AF512:  STR             R1, [SP,#0x88+var_84]; int
2AF514:  ADR.W           R1, aExit_0; "EXIT"
2AF518:  ADD.W           R3, R6, #0x5B0; int
2AF51C:  STR             R1, [SP,#0x88+var_80]; char *
2AF51E:  MOV.W           R10, #0x38 ; '8'
2AF522:  MOV             R1, R4; int
2AF524:  MOV             R2, R9; int
2AF526:  STR.W           R10, [SP,#0x88+var_7C]; int
2AF52A:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF52E:  STR.W           R0, [R11,#(dword_6F39AC - 0x6F3794)]
2AF532:  MOV.W           R0, #0x1C0; unsigned int
2AF536:  BLX             _Znwj; operator new(uint)
2AF53A:  ADR.W           R1, aVp21; "VP21"
2AF53E:  MOVW            R2, #0x1C14
2AF542:  ADD.W           R3, R6, #0x5C0; int
2AF546:  STR.W           R8, [SP,#0x88+var_88]; int
2AF54A:  STRD.W          R2, R1, [SP,#0x88+var_84]; int
2AF54E:  MOV             R2, R9; int
2AF550:  MOV             R1, R4; int
2AF552:  STR.W           R10, [SP,#0x88+var_7C]; int
2AF556:  MOV.W           R9, #0
2AF55A:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF55E:  STR.W           R0, [R11,#(dword_6F3980 - 0x6F3794)]
2AF562:  MOVW            R1, #0x3F9A
2AF566:  LDR.W           R0, [R11,#(dword_6F3978 - 0x6F3794)]
2AF56A:  MOVT            R1, #0x461C
2AF56E:  STR             R1, [R0,#0x1C]
2AF570:  LDR.W           R0, [R11,#(dword_6F397C - 0x6F3794)]
2AF574:  STR             R1, [R0,#0x1C]
2AF576:  LDR.W           R0, [R11,#(dword_6F3984 - 0x6F3794)]
2AF57A:  STR             R1, [R0,#0x1C]
2AF57C:  LDR.W           R0, [R11,#(dword_6F3988 - 0x6F3794)]
2AF580:  STR             R1, [R0,#0x1C]
2AF582:  LDR.W           R0, [R11,#(dword_6F398C - 0x6F3794)]
2AF586:  STR             R1, [R0,#0x1C]
2AF588:  LDR.W           R0, [R11,#(dword_6F3990 - 0x6F3794)]
2AF58C:  STR             R1, [R0,#0x1C]
2AF58E:  LDR.W           R0, [R11,#(dword_6F3994 - 0x6F3794)]
2AF592:  STR             R1, [R0,#0x1C]
2AF594:  LDR.W           R0, [R11,#(dword_6F3980 - 0x6F3794)]
2AF598:  STR             R1, [R0,#0x1C]
2AF59A:  LDR.W           R0, [R11,#(dword_6F39AC - 0x6F3794)]
2AF59E:  STR             R1, [R0,#0x1C]
2AF5A0:  MOVS            R0, #0x90; unsigned int
2AF5A2:  BLX             _Znwj; operator new(uint)
2AF5A6:  ADD.W           R1, R5, #0x4380
2AF5AA:  ADD.W           R2, R6, #0x5D0
2AF5AE:  MOVW            R3, #0x1014
2AF5B2:  STR.W           R9, [SP,#0x88+var_88]
2AF5B6:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF5BA:  STR.W           R0, [R11,#(dword_6F39B0 - 0x6F3794)]
2AF5BE:  MOVS            R0, #0x90; unsigned int
2AF5C0:  BLX             _Znwj; operator new(uint)
2AF5C4:  ADD.W           R1, R5, #0x4400
2AF5C8:  ADD.W           R2, R6, #0x5E0
2AF5CC:  MOVW            R3, #0x1014
2AF5D0:  STR.W           R9, [SP,#0x88+var_88]
2AF5D4:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF5D8:  STR.W           R0, [R11,#(dword_6F39B4 - 0x6F3794)]
2AF5DC:  MOVS            R0, #0x90; unsigned int
2AF5DE:  BLX             _Znwj; operator new(uint)
2AF5E2:  ADD.W           R1, R5, #0x4480
2AF5E6:  ADD.W           R2, R6, #0x5F0
2AF5EA:  MOVW            R3, #0x1014
2AF5EE:  STR.W           R9, [SP,#0x88+var_88]
2AF5F2:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF5F6:  STR.W           R0, [R11,#(dword_6F39B8 - 0x6F3794)]
2AF5FA:  MOVS            R0, #0x90; unsigned int
2AF5FC:  BLX             _Znwj; operator new(uint)
2AF600:  ADD.W           R1, R5, #0x4500
2AF604:  ADD.W           R2, R6, #0x600
2AF608:  MOVW            R3, #0x1014
2AF60C:  STR.W           R9, [SP,#0x88+var_88]
2AF610:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF614:  STR.W           R0, [R11,#(dword_6F39BC - 0x6F3794)]
2AF618:  MOVS            R0, #0x90; unsigned int
2AF61A:  BLX             _Znwj; operator new(uint)
2AF61E:  ADD.W           R1, R5, #0x4580
2AF622:  ADD.W           R2, R6, #0x610
2AF626:  MOVW            R3, #0x1014
2AF62A:  STR.W           R9, [SP,#0x88+var_88]
2AF62E:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF632:  STR.W           R0, [R11,#(dword_6F39C0 - 0x6F3794)]
2AF636:  MOVS            R0, #0x90; unsigned int
2AF638:  BLX             _Znwj; operator new(uint)
2AF63C:  ADD.W           R1, R5, #0x4600
2AF640:  ADD.W           R2, R6, #0x620
2AF644:  MOVW            R3, #0x1014
2AF648:  STR.W           R9, [SP,#0x88+var_88]
2AF64C:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF650:  STR.W           R0, [R11,#(dword_6F39C4 - 0x6F3794)]
2AF654:  MOVS            R0, #0x90; unsigned int
2AF656:  BLX             _Znwj; operator new(uint)
2AF65A:  ADD.W           R1, R5, #0x4680
2AF65E:  ADD.W           R2, R6, #0x630
2AF662:  MOVW            R3, #0x1014
2AF666:  STR.W           R9, [SP,#0x88+var_88]
2AF66A:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF66E:  STR.W           R0, [R11,#(dword_6F39C8 - 0x6F3794)]
2AF672:  MOVS            R0, #0x90; unsigned int
2AF674:  BLX             _Znwj; operator new(uint)
2AF678:  ADD.W           R1, R5, #0x4700
2AF67C:  ADD.W           R2, R6, #0x640
2AF680:  MOVW            R3, #0x1014
2AF684:  STR.W           R9, [SP,#0x88+var_88]
2AF688:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF68C:  STR.W           R0, [R11,#(dword_6F39CC - 0x6F3794)]
2AF690:  MOVS            R0, #0x90; unsigned int
2AF692:  BLX             _Znwj; operator new(uint)
2AF696:  ADD.W           R1, R5, #0x4780
2AF69A:  ADD.W           R2, R6, #0x650
2AF69E:  MOVW            R3, #0x1014
2AF6A2:  STR.W           R9, [SP,#0x88+var_88]
2AF6A6:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF6AA:  STR.W           R0, [R11,#(dword_6F39D0 - 0x6F3794)]
2AF6AE:  MOVS            R0, #0x90; unsigned int
2AF6B0:  BLX             _Znwj; operator new(uint)
2AF6B4:  ADD.W           R1, R5, #0x4800
2AF6B8:  ADD.W           R2, R6, #0x660
2AF6BC:  MOVW            R3, #0x1014
2AF6C0:  STR.W           R9, [SP,#0x88+var_88]
2AF6C4:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF6C8:  STR.W           R0, [R11,#(dword_6F39D4 - 0x6F3794)]
2AF6CC:  MOVS            R0, #0x90; unsigned int
2AF6CE:  BLX             _Znwj; operator new(uint)
2AF6D2:  ADD.W           R1, R5, #0x4880
2AF6D6:  ADD.W           R2, R6, #0x670
2AF6DA:  MOVW            R3, #0x1014
2AF6DE:  STR.W           R9, [SP,#0x88+var_88]
2AF6E2:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF6E6:  STR.W           R0, [R11,#(dword_6F39D8 - 0x6F3794)]
2AF6EA:  MOVS            R0, #0x90; unsigned int
2AF6EC:  BLX             _Znwj; operator new(uint)
2AF6F0:  ADD.W           R1, R5, #0x4900
2AF6F4:  ADD.W           R2, R6, #0x680
2AF6F8:  MOVW            R3, #0x1014
2AF6FC:  STR.W           R9, [SP,#0x88+var_88]
2AF700:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF704:  STR.W           R0, [R11,#(dword_6F39DC - 0x6F3794)]
2AF708:  MOVS            R0, #0x90; unsigned int
2AF70A:  BLX             _Znwj; operator new(uint)
2AF70E:  ADD.W           R1, R5, #0x4980
2AF712:  ADD.W           R2, R6, #0x690
2AF716:  MOVW            R3, #0x1014
2AF71A:  STR.W           R9, [SP,#0x88+var_88]
2AF71E:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF722:  STR.W           R0, [R11,#(dword_6F39E0 - 0x6F3794)]
2AF726:  MOVS            R0, #0x90; unsigned int
2AF728:  BLX             _Znwj; operator new(uint)
2AF72C:  ADD.W           R1, R5, #0x4A00
2AF730:  ADD.W           R2, R6, #0x6A0
2AF734:  MOVW            R3, #0x1014
2AF738:  STR.W           R9, [SP,#0x88+var_88]
2AF73C:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF740:  STR.W           R0, [R11,#(dword_6F39E4 - 0x6F3794)]
2AF744:  MOV.W           R0, #0x1C0; unsigned int
2AF748:  BLX             _Znwj; operator new(uint)
2AF74C:  MOVW            R1, #0x3C14
2AF750:  STR.W           R9, [SP,#0x88+var_88]; int
2AF754:  STR             R1, [SP,#0x88+var_84]; int
2AF756:  ADR             R1, aExit_0; "EXIT"
2AF758:  STR             R1, [SP,#0x88+var_80]; char *
2AF75A:  MOVS            R1, #0x39 ; '9'
2AF75C:  STR             R1, [SP,#0x88+var_7C]; int
2AF75E:  ADD.W           R3, R6, #0x6B0; int
2AF762:  LDR.W           R1, =(byte_61CD7E - 0x2AF76A)
2AF766:  ADD             R1, PC; byte_61CD7E ; int
2AF768:  MOV             R2, R1; int
2AF76A:  BLX             j__ZN21CWidgetButtonAnimatedC2EPKcS1_RK14WidgetPositionjjS1_10HIDMapping; CWidgetButtonAnimated::CWidgetButtonAnimated(char const*,char const*,WidgetPosition const&,uint,uint,char const*,HIDMapping)
2AF76E:  STR.W           R0, [R11,#(dword_6F39E8 - 0x6F3794)]
2AF772:  MOVS            R0, #0x90; unsigned int
2AF774:  BLX             _Znwj; operator new(uint)
2AF778:  ADD.W           R1, R5, #0x4B00
2AF77C:  ADD.W           R2, R6, #0x6C0
2AF780:  BLX             j__ZN10CWidgetMapC2EPKcRK14WidgetPosition; CWidgetMap::CWidgetMap(char const*,WidgetPosition const&)
2AF784:  STR.W           R0, [R11,#(dword_6F39EC - 0x6F3794)]
2AF788:  MOVS            R0, #0x94; unsigned int
2AF78A:  BLX             _Znwj; operator new(uint)
2AF78E:  ADD.W           R1, R5, #0x4E80
2AF792:  ADD.W           R2, R6, #0x6D0
2AF796:  BLX             j__ZN21CWidgetRegionResponseC2EPKcRK14WidgetPosition; CWidgetRegionResponse::CWidgetRegionResponse(char const*,WidgetPosition const&)
2AF79A:  STR.W           R0, [R11,#(dword_6F3A08 - 0x6F3794)]
2AF79E:  MOVS            R0, #0xB8; unsigned int
2AF7A0:  BLX             _Znwj; operator new(uint)
2AF7A4:  ADD.W           R1, R5, #0x5000
2AF7A8:  ADD.W           R2, R6, #0x700
2AF7AC:  BLX             j__ZN17CWidgetPlayerInfoC2EPKcRK14WidgetPosition; CWidgetPlayerInfo::CWidgetPlayerInfo(char const*,WidgetPosition const&)
2AF7B0:  STR.W           R0, [R11,#(dword_6F3A14 - 0x6F3794)]
2AF7B4:  MOVS            R0, #0x94; unsigned int
2AF7B6:  BLX             _Znwj; operator new(uint)
2AF7BA:  ADD.W           R1, R5, #0x5080
2AF7BE:  ADD.W           R2, R6, #0x710
2AF7C2:  BLX             j__ZN12CWidgetRadarC2EPKcRK14WidgetPosition; CWidgetRadar::CWidgetRadar(char const*,WidgetPosition const&)
2AF7C6:  STR.W           R0, [R11,#(dword_6F3A18 - 0x6F3794)]
2AF7CA:  MOV.W           R0, #0x20C0; unsigned int
2AF7CE:  BLX             _Znwj; operator new(uint)
2AF7D2:  ADD.W           R1, R5, #0x5100
2AF7D6:  ADD.W           R2, R6, #0x720
2AF7DA:  MOV             R4, R0
2AF7DC:  BLX             j__ZN15CWidgetHelpTextC2EPKcRK14WidgetPosition; CWidgetHelpText::CWidgetHelpText(char const*,WidgetPosition const&)
2AF7E0:  LDR.W           R0, [R11,#(dword_6F3A24 - 0x6F3794)]
2AF7E4:  STR.W           R4, [R11,#(dword_6F3A1C - 0x6F3794)]
2AF7E8:  CBZ             R0, loc_2AF7FA
2AF7EA:  LDR             R1, [R0]
2AF7EC:  LDR             R1, [R1,#4]
2AF7EE:  BLX             R1
2AF7F0:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AF7F6)
2AF7F2:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AF7F4:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AF7F6:  STR.W           R9, [R0,#(dword_6F3A24 - 0x6F3794)]
2AF7FA:  MOVS            R0, #0xE8; unsigned int
2AF7FC:  BLX             _Znwj; operator new(uint)
2AF800:  LDR             R1, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AF80A)
2AF802:  MOV             R4, R0
2AF804:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AF80C)
2AF806:  ADD             R1, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AF808:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AF80A:  LDR             R2, [R1]; CTouchInterface::m_WidgetPosition ...
2AF80C:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
2AF80E:  ADD.W           R2, R2, #0x230
2AF812:  ADD.W           R1, R0, #0x5200
2AF816:  MOV             R0, R4
2AF818:  BLX             j__ZN18CWidgetThumbCircleC2EPKcRK14WidgetPosition; CWidgetThumbCircle::CWidgetThumbCircle(char const*,WidgetPosition const&)
2AF81C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AF822)
2AF81E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AF820:  LDR             R1, [R0]; CTouchInterface::m_pWidgets ...
2AF822:  LDR.W           R0, [R1,#(dword_6F3A20 - 0x6F3794)]
2AF826:  STR.W           R4, [R1,#(dword_6F3A24 - 0x6F3794)]
2AF82A:  CBZ             R0, loc_2AF83E
2AF82C:  LDR             R1, [R0]
2AF82E:  LDR             R1, [R1,#4]
2AF830:  BLX             R1
2AF832:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AF83A)
2AF834:  MOVS            R1, #0
2AF836:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AF838:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AF83A:  STR.W           R1, [R0,#(dword_6F3A20 - 0x6F3794)]
2AF83E:  MOVS            R0, #0xBC; unsigned int
2AF840:  BLX             _Znwj; operator new(uint)
2AF844:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AF84C)
2AF846:  LDR             R2, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AF84E)
2AF848:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AF84A:  ADD             R2, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AF84C:  LDR             R4, [R1]; CTouchInterface::m_pszWidgetTextures ...
2AF84E:  LDR             R5, [R2]; CTouchInterface::m_WidgetPosition ...
2AF850:  ADD.W           R1, R4, #0x5180
2AF854:  ADD.W           R2, R5, #0x240
2AF858:  BLX             j__ZN15CWidgetTapMeterC2EPKcRK14WidgetPosition; CWidgetTapMeter::CWidgetTapMeter(char const*,WidgetPosition const&)
2AF85C:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AF862)
2AF85E:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AF860:  LDR             R6, [R1]; CTouchInterface::m_pWidgets ...
2AF862:  STR.W           R0, [R6,#(dword_6F3A20 - 0x6F3794)]
2AF866:  MOVS            R0, #0x90; unsigned int
2AF868:  BLX             _Znwj; operator new(uint)
2AF86C:  ADD.W           R1, R4, #0x5300
2AF870:  ADD.W           R2, R5, #0x750
2AF874:  BLX             j__ZN23CWidgetRegionSwipeRadioC2EPKcRK14WidgetPosition; CWidgetRegionSwipeRadio::CWidgetRegionSwipeRadio(char const*,WidgetPosition const&)
2AF878:  STR.W           R0, [R6,#(dword_6F3A2C - 0x6F3794)]
2AF87C:  MOVS            R0, #0xAC; unsigned int
2AF87E:  BLX             _Znwj; operator new(uint)
2AF882:  ADD.W           R1, R4, #0x5380
2AF886:  ADD.W           R2, R5, #0x760
2AF88A:  BLX             j__ZN17CWidgetRegionMoveC2EPKcRK14WidgetPosition; CWidgetRegionMove::CWidgetRegionMove(char const*,WidgetPosition const&)
2AF88E:  STR.W           R0, [R6,#(dword_6F3A30 - 0x6F3794)]
2AF892:  MOVS            R0, #0x94; unsigned int
2AF894:  BLX             _Znwj; operator new(uint)
2AF898:  ADD.W           R1, R4, #0x5480
2AF89C:  ADD.W           R2, R5, #0x770
2AF8A0:  BLX             j__ZN27CWidgetRegionBasketBallJumpC2EPKcRK14WidgetPosition; CWidgetRegionBasketBallJump::CWidgetRegionBasketBallJump(char const*,WidgetPosition const&)
2AF8A4:  STR.W           R0, [R6,#(dword_6F3A38 - 0x6F3794)]
2AF8A8:  MOVS            R0, #0x90; unsigned int
2AF8AA:  BLX             _Znwj; operator new(uint)
2AF8AE:  ADD.W           R1, R4, #0x5700
2AF8B2:  ADD.W           R2, R5, #0x700
2AF8B6:  MOV.W           R8, #0
2AF8BA:  MOVS            R3, #0
2AF8BC:  STR.W           R8, [SP,#0x88+var_88]
2AF8C0:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF8C4:  STR.W           R0, [R6,#(dword_6F3A4C - 0x6F3794)]
2AF8C8:  MOVS            R0, #0x94; unsigned int
2AF8CA:  BLX             _Znwj; operator new(uint)
2AF8CE:  ADD.W           R1, R4, #0x5780
2AF8D2:  ADD.W           R2, R5, #0x7B0
2AF8D6:  BLX             j__ZN17CWidgetRegionLookC2EPKcRK14WidgetPosition; CWidgetRegionLook::CWidgetRegionLook(char const*,WidgetPosition const&)
2AF8DA:  STR.W           R0, [R6,#(dword_6F3A50 - 0x6F3794)]
2AF8DE:  MOVS            R0, #0x90; unsigned int
2AF8E0:  BLX             _Znwj; operator new(uint)
2AF8E4:  ADD.W           R1, R4, #0x5800
2AF8E8:  ADD.W           R2, R5, #0x7C0
2AF8EC:  BLX             j__ZN20CWidgetMissionTimersC2EPKcRK14WidgetPosition; CWidgetMissionTimers::CWidgetMissionTimers(char const*,WidgetPosition const&)
2AF8F0:  STR.W           R0, [R6,#(dword_6F3A54 - 0x6F3794)]
2AF8F4:  MOVS            R0, #0xA4; unsigned int
2AF8F6:  BLX             _Znwj; operator new(uint)
2AF8FA:  ADD.W           R1, R4, #0x5880
2AF8FE:  ADD.W           R2, R5, #0x7D0
2AF902:  BLX             j__ZN13CWidgetRacingC2EPKcRK14WidgetPosition; CWidgetRacing::CWidgetRacing(char const*,WidgetPosition const&)
2AF906:  STR.W           R0, [R6,#(dword_6F3A58 - 0x6F3794)]
2AF90A:  MOVW            R0, #0x64C; unsigned int
2AF90E:  BLX             _Znwj; operator new(uint)
2AF912:  ADD.W           R1, R4, #0x5900
2AF916:  ADD.W           R2, R5, #0x7E0
2AF91A:  BLX             j__ZN18CWidgetRaceResultsC2EPKcRK14WidgetPosition; CWidgetRaceResults::CWidgetRaceResults(char const*,WidgetPosition const&)
2AF91E:  STR.W           R0, [R6,#(dword_6F3A5C - 0x6F3794)]
2AF922:  MOVW            R0, #0x7E4; unsigned int
2AF926:  BLX             _Znwj; operator new(uint)
2AF92A:  ADD.W           R1, R4, #0x5980
2AF92E:  ADD.W           R2, R5, #0x7F0
2AF932:  BLX             j__ZN19CWidgetHorseResultsC2EPKcRK14WidgetPosition; CWidgetHorseResults::CWidgetHorseResults(char const*,WidgetPosition const&)
2AF936:  STR.W           R0, [R6,#(dword_6F3A60 - 0x6F3794)]
2AF93A:  MOVW            R0, #0x544; unsigned int
2AF93E:  BLX             _Znwj; operator new(uint)
2AF942:  ADD.W           R1, R4, #0x5A00
2AF946:  ADD.W           R2, R5, #0x800
2AF94A:  BLX             j__ZN12CWidgetWagerC2EPKcRK14WidgetPosition; CWidgetWager::CWidgetWager(char const*,WidgetPosition const&)
2AF94E:  STR.W           R0, [R6,#(dword_6F3A64 - 0x6F3794)]
2AF952:  MOV.W           R0, #0x2A8; unsigned int
2AF956:  BLX             _Znwj; operator new(uint)
2AF95A:  ADD.W           R1, R4, #0x5A80
2AF95E:  ADD.W           R2, R5, #0x810
2AF962:  BLX             j__ZN11CWidgetPoolC2EPKcRK14WidgetPosition; CWidgetPool::CWidgetPool(char const*,WidgetPosition const&)
2AF966:  STR.W           R0, [R6,#(dword_6F3A68 - 0x6F3794)]
2AF96A:  MOVS            R0, #0x90; unsigned int
2AF96C:  BLX             _Znwj; operator new(uint)
2AF970:  ADD.W           R1, R4, #0x5B80
2AF974:  ADD.W           R2, R5, #0x830
2AF978:  BLX             j__ZN17CWidgetVitalStatsC2EPKcRK14WidgetPosition; CWidgetVitalStats::CWidgetVitalStats(char const*,WidgetPosition const&)
2AF97C:  STR.W           R0, [R6,#(dword_6F3A70 - 0x6F3794)]
2AF980:  MOVS            R0, #0x98; unsigned int
2AF982:  BLX             _Znwj; operator new(uint)
2AF986:  BLX             j__ZN19CWidgetRouletteSpinC2Ev; CWidgetRouletteSpin::CWidgetRouletteSpin(void)
2AF98A:  STR.W           R0, [R6,#(dword_6F3A74 - 0x6F3794)]
2AF98E:  MOVS            R0, #0xB0; unsigned int
2AF990:  BLX             _Znwj; operator new(uint)
2AF994:  ADD.W           R1, R4, #0x5B00
2AF998:  ADD.W           R2, R5, #0x820
2AF99C:  BLX             j__ZN16CWidgetInfoFrameC2EPKcRK14WidgetPosition; CWidgetInfoFrame::CWidgetInfoFrame(char const*,WidgetPosition const&)
2AF9A0:  STR.W           R0, [R6,#(dword_6F3A6C - 0x6F3794)]
2AF9A4:  MOVS            R0, #0xA8; unsigned int
2AF9A6:  BLX             _Znwj; operator new(uint)
2AF9AA:  MOV.W           R9, #1
2AF9AE:  MOVS            R1, #0x40 ; '@'
2AF9B0:  STRD.W          R1, R9, [SP,#0x88+var_88]
2AF9B4:  ADD.W           R1, R4, #0x1080
2AF9B8:  ADD.W           R2, R5, #0xF0
2AF9BC:  MOVS            R3, #1
2AF9BE:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AF9C2:  STR.W           R0, [R6,#(dword_6F3818 - 0x6F3794)]
2AF9C6:  MOVS            R0, #0x90; unsigned int
2AF9C8:  BLX             _Znwj; operator new(uint)
2AF9CC:  MOVS            R1, #0x3E ; '>'
2AF9CE:  ADD.W           R2, R5, #0x850
2AF9D2:  STR             R1, [SP,#0x88+var_88]
2AF9D4:  ADD.W           R1, R4, #0x5C80
2AF9D8:  MOVS            R3, #4
2AF9DA:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF9DE:  STR.W           R0, [R6,#(dword_6F3A78 - 0x6F3794)]
2AF9E2:  MOVS            R0, #0x90; unsigned int
2AF9E4:  BLX             _Znwj; operator new(uint)
2AF9E8:  MOVS            R1, #0x3F ; '?'
2AF9EA:  ADD.W           R2, R5, #0x860
2AF9EE:  STR             R1, [SP,#0x88+var_88]
2AF9F0:  ADD.W           R1, R4, #0x5D00
2AF9F4:  MOVS            R3, #4
2AF9F6:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AF9FA:  STR.W           R0, [R6,#(dword_6F3A7C - 0x6F3794)]
2AF9FE:  MOVS            R0, #0xA8; unsigned int
2AFA00:  BLX             _Znwj; operator new(uint)
2AFA04:  MOV.W           R1, #0xC00
2AFA08:  ADD.W           R2, R5, #0xE0
2AFA0C:  STRD.W          R1, R9, [SP,#0x88+var_88]
2AFA10:  ADD.W           R1, R4, #0x5D80
2AFA14:  MOVS            R3, #1
2AFA16:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2AFA1A:  STR.W           R0, [R6,#(dword_6F3A80 - 0x6F3794)]
2AFA1E:  MOVS            R0, #0x90; unsigned int
2AFA20:  BLX             _Znwj; operator new(uint)
2AFA24:  ADD.W           R1, R4, #0x5E00
2AFA28:  ADD.W           R2, R5, #0x870
2AFA2C:  MOVS            R3, #0
2AFA2E:  STR.W           R8, [SP,#0x88+var_88]
2AFA32:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping_0; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2AFA36:  STR.W           R0, [R6,#(dword_6F3A84 - 0x6F3794)]
2AFA3A:  MOVS            R0, #0x98; unsigned int
2AFA3C:  BLX             _Znwj; operator new(uint)
2AFA40:  ADD.W           R1, R4, #0x5E80
2AFA44:  ADD.W           R2, R5, #0x880
2AFA48:  BLX             j__ZN23CWidgetSaveNotificationC2EPKcRK14WidgetPosition; CWidgetSaveNotification::CWidgetSaveNotification(char const*,WidgetPosition const&)
2AFA4C:  STR.W           R0, [R6,#(dword_6F3A88 - 0x6F3794)]
2AFA50:  MOVS            R0, #0xA0; unsigned int
2AFA52:  BLX             _Znwj; operator new(uint)
2AFA56:  ADD.W           R1, R4, #0x4F80
2AFA5A:  ADD.W           R2, R5, #0x890
2AFA5E:  BLX             j__ZN13CWidgetReplayC2EPKcRK14WidgetPosition; CWidgetReplay::CWidgetReplay(char const*,WidgetPosition const&)
2AFA62:  STR.W           R0, [R6,#(dword_6F3A10 - 0x6F3794)]
2AFA66:  BLX             j__ZN15CTouchInterface18SetupLayoutObjectsEv; CTouchInterface::SetupLayoutObjects(void)
2AFA6A:  BLX             j__ZN15CTouchInterface17SetupSteeringModeEv; CTouchInterface::SetupSteeringMode(void)
2AFA6E:  LDR             R0, [SP,#0x88+var_64]; this
2AFA70:  BLX             j__ZN22TextureDatabaseRuntime10UnregisterEPS_; TextureDatabaseRuntime::Unregister(TextureDatabaseRuntime*)
2AFA74:  SUB.W           R4, R7, #-var_30
2AFA78:  MOV             SP, R4
2AFA7A:  VPOP            {D8-D9}
2AFA7E:  ADD             SP, SP, #4
2AFA80:  POP.W           {R8-R11}
2AFA84:  POP             {R4-R7,PC}
