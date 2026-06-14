; =========================================================
; Game Engine Function: _ZN15CTouchInterface20CreateListTextWidgetEPPKciNS_9WidgetIDsER14WidgetPositionbbb
; Address            : 0x2B26F4 - 0x2B2764
; =========================================================

2B26F4:  PUSH            {R4-R7,LR}
2B26F6:  ADD             R7, SP, #0xC
2B26F8:  PUSH.W          {R8-R11}
2B26FC:  SUB             SP, SP, #0x14
2B26FE:  MOV             R6, R0
2B2700:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B270C)
2B2702:  ADD.W           R11, R7, #8
2B2706:  MOV             R4, R2
2B2708:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B270A:  MOV             R8, R3
2B270C:  LDM.W           R11, {R9-R11}
2B2710:  MOV             R5, R1
2B2712:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B2714:  LDR.W           R0, [R0,R4,LSL#2]
2B2718:  CBZ             R0, loc_2B272C
2B271A:  LDR             R1, [R0]
2B271C:  LDR             R1, [R1,#4]
2B271E:  BLX             R1
2B2720:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2728)
2B2722:  MOVS            R1, #0
2B2724:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2726:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B2728:  STR.W           R1, [R0,R4,LSL#2]
2B272C:  MOV             R0, #0x11CF0; unsigned int
2B2734:  BLX             _Znwj; operator new(uint)
2B2738:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2B2746)
2B273A:  ADD             R2, SP, #0x30+var_2C
2B273C:  STM.W           R2, {R9-R11}
2B2740:  MOV             R2, R8
2B2742:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2B2744:  MOV             R3, R6
2B2746:  STR             R5, [SP,#0x30+var_30]
2B2748:  LDR             R1, [R1]; CTouchInterface::m_pszWidgetTextures ...
2B274A:  ADD.W           R1, R1, R4,LSL#7
2B274E:  BLX             j__ZN15CWidgetListTextC2EPKcRK14WidgetPositionPS1_ibbb; CWidgetListText::CWidgetListText(char const*,WidgetPosition const&,char const**,int,bool,bool,bool)
2B2752:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2758)
2B2754:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2756:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2B2758:  STR.W           R0, [R1,R4,LSL#2]
2B275C:  ADD             SP, SP, #0x14
2B275E:  POP.W           {R8-R11}
2B2762:  POP             {R4-R7,PC}
