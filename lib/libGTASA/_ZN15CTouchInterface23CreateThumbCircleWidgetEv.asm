; =========================================================
; Game Engine Function: _ZN15CTouchInterface23CreateThumbCircleWidgetEv
; Address            : 0x2AFBD4 - 0x2AFC20
; =========================================================

2AFBD4:  PUSH            {R7,LR}
2AFBD6:  MOV             R7, SP
2AFBD8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFBDE)
2AFBDA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFBDC:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFBDE:  LDR.W           R0, [R0,#(dword_6F3A24 - 0x6F3794)]
2AFBE2:  CBZ             R0, loc_2AFBF6
2AFBE4:  LDR             R1, [R0]
2AFBE6:  LDR             R1, [R1,#4]
2AFBE8:  BLX             R1
2AFBEA:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFBF2)
2AFBEC:  MOVS            R1, #0
2AFBEE:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFBF0:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2AFBF2:  STR.W           R1, [R0,#(dword_6F3A24 - 0x6F3794)]
2AFBF6:  MOVS            R0, #0xE8; unsigned int
2AFBF8:  BLX             _Znwj; operator new(uint)
2AFBFC:  LDR             R1, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x2AFC04)
2AFBFE:  LDR             R2, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2AFC06)
2AFC00:  ADD             R1, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
2AFC02:  ADD             R2, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2AFC04:  LDR             R1, [R1]; CTouchInterface::m_pszWidgetTextures ...
2AFC06:  LDR             R2, [R2]; CTouchInterface::m_WidgetPosition ...
2AFC08:  ADD.W           R1, R1, #0x5200
2AFC0C:  ADD.W           R2, R2, #0x230
2AFC10:  BLX             j__ZN18CWidgetThumbCircleC2EPKcRK14WidgetPosition; CWidgetThumbCircle::CWidgetThumbCircle(char const*,WidgetPosition const&)
2AFC14:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AFC1A)
2AFC16:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AFC18:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2AFC1A:  STR.W           R0, [R1,#(dword_6F3A24 - 0x6F3794)]
2AFC1E:  POP             {R7,PC}
