; =========================================================
; Game Engine Function: _ZN15CTouchInterface20CreateTapMeterWidgetEv
; Address            : 0x2AFC34 - 0x2AFC80
; =========================================================

2AFC34:  PUSH            {R7,LR}
2AFC36:  MOV             R7, SP
2AFC38:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFC3E)
2AFC3A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFC3C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFC3E:  LDR.W           R0, [R0,#(dword_6F3A20 - 0x6F3794)]
2AFC42:  CBZ             R0, loc_2AFC56
2AFC44:  LDR             R1, [R0]
2AFC46:  LDR             R1, [R1,#4]
2AFC48:  BLX             R1
2AFC4A:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFC52)
2AFC4C:  MOVS            R1, #0
2AFC4E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFC50:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFC52:  STR.W           R1, [R0,#(dword_6F3A20 - 0x6F3794)]
2AFC56:  MOVS            R0, #0xBC; unsigned int
2AFC58:  BLX             _Znwj; operator new(uint)
2AFC5C:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AFC64)
2AFC5E:  LDR             R2, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AFC66)
2AFC60:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AFC62:  ADD             R2, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AFC64:  LDR             R1, [R1]; CTouchInterface::m_pszWidgetTextures ...
2AFC66:  LDR             R2, [R2]; CTouchInterface::m_WidgetPosition ...
2AFC68:  ADD.W           R1, R1, #0x5180
2AFC6C:  ADD.W           R2, R2, #0x240
2AFC70:  BLX             j__ZN15CWidgetTapMeterC2EPKcRK14WidgetPosition; CWidgetTapMeter::CWidgetTapMeter(char const*,WidgetPosition const&)
2AFC74:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFC7A)
2AFC76:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFC78:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2AFC7A:  STR.W           R0, [R1,#(dword_6F3A20 - 0x6F3794)]
2AFC7E:  POP             {R7,PC}
