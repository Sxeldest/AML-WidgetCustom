; =========================================================
; Game Engine Function: _ZN15CTouchInterface16CreateShopWidgetEPKcPS1_iR14WidgetPositionb
; Address            : 0x2B2774 - 0x2B27E0
; =========================================================

2B2774:  PUSH            {R4-R7,LR}
2B2776:  ADD             R7, SP, #0xC
2B2778:  PUSH.W          {R8,R9,R11}
2B277C:  SUB             SP, SP, #0x10
2B277E:  MOV             R5, R0
2B2780:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B278C)
2B2782:  LDR.W           R9, [R7,#arg_0]
2B2786:  MOV             R8, R3
2B2788:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B278A:  MOV             R4, R2
2B278C:  MOV             R6, R1
2B278E:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B2790:  LDR.W           R0, [R0,#(dword_6F3A04 - 0x6F3794)]
2B2794:  CBZ             R0, loc_2B27A8
2B2796:  LDR             R1, [R0]
2B2798:  LDR             R1, [R1,#4]
2B279A:  BLX             R1
2B279C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B27A4)
2B279E:  MOVS            R1, #0
2B27A0:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B27A2:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B27A4:  STR.W           R1, [R0,#(dword_6F3A04 - 0x6F3794)]
2B27A8:  MOV             R0, #0x11DF4; unsigned int
2B27B0:  BLX             _Znwj; operator new(uint)
2B27B4:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2B27C0)
2B27B6:  MOV             R3, R8
2B27B8:  STR.W           R9, [SP,#0x28+var_20]
2B27BC:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2B27BE:  STRD.W          R6, R4, [SP,#0x28+var_28]
2B27C2:  LDR             R1, [R1]; CTouchInterface::m_pszWidgetTextures ...
2B27C4:  ADD.W           R2, R1, #0x4E00
2B27C8:  MOV             R1, R5
2B27CA:  BLX             j__ZN15CWidgetListShopC2EPKcS1_RK14WidgetPositionPS1_ib; CWidgetListShop::CWidgetListShop(char const*,char const*,WidgetPosition const&,char const**,int,bool)
2B27CE:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B27D4)
2B27D0:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B27D2:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2B27D4:  STR.W           R0, [R1,#(dword_6F3A04 - 0x6F3794)]
2B27D8:  ADD             SP, SP, #0x10
2B27DA:  POP.W           {R8,R9,R11}
2B27DE:  POP             {R4-R7,PC}
