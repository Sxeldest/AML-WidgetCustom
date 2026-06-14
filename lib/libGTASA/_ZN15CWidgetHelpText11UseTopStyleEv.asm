; =========================================================
; Game Engine Function: _ZN15CWidgetHelpText11UseTopStyleEv
; Address            : 0x2B71FC - 0x2B72A8
; =========================================================

2B71FC:  PUSH            {R7,LR}
2B71FE:  MOV             R7, SP
2B7200:  BLX             j__ZN16CWidgetInfoFrame16AnyObjectEnabledEv; CWidgetInfoFrame::AnyObjectEnabled(void)
2B7204:  CMP             R0, #0
2B7206:  BNE             loc_2B72A0
2B7208:  BLX             j__ZN21CWidgetButtonAnimated16AnyObjectEnabledEv; CWidgetButtonAnimated::AnyObjectEnabled(void)
2B720C:  CMP             R0, #0
2B720E:  BNE             loc_2B72A0
2B7210:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B7216)
2B7212:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B7214:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B7216:  LDR.W           R0, [R0,#(dword_6F3894 - 0x6F3794)]; this
2B721A:  CBZ             R0, loc_2B7222
2B721C:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B7220:  CBNZ            R0, loc_2B72A0
2B7222:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B7228)
2B7224:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B7226:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B7228:  LDR.W           R0, [R0,#(dword_6F3898 - 0x6F3794)]; this
2B722C:  CBZ             R0, loc_2B7234
2B722E:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B7232:  CBNZ            R0, loc_2B72A0
2B7234:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B723A)
2B7236:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B7238:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B723A:  LDR.W           R0, [R0,#(dword_6F3A64 - 0x6F3794)]; this
2B723E:  CBZ             R0, loc_2B7246
2B7240:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B7244:  CBNZ            R0, loc_2B72A0
2B7246:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B724C)
2B7248:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B724A:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B724C:  LDR.W           R0, [R0,#(dword_6F3A58 - 0x6F3794)]; this
2B7250:  CBZ             R0, loc_2B7258
2B7252:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B7256:  CBNZ            R0, loc_2B72A0
2B7258:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B725E)
2B725A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B725C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B725E:  LDR.W           R0, [R0,#(dword_6F3A68 - 0x6F3794)]; this
2B7262:  CBZ             R0, loc_2B726A
2B7264:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B7268:  CBNZ            R0, loc_2B72A0
2B726A:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B7270)
2B726C:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B726E:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B7270:  LDR.W           R0, [R0,#(dword_6F3A54 - 0x6F3794)]; this
2B7274:  CBZ             R0, loc_2B727C
2B7276:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B727A:  CBNZ            R0, loc_2B72A0
2B727C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B7282)
2B727E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B7280:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B7282:  LDR.W           R0, [R0,#(dword_6F3A70 - 0x6F3794)]; this
2B7286:  CBZ             R0, loc_2B728E
2B7288:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B728C:  CBNZ            R0, loc_2B72A0
2B728E:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B7294)
2B7290:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B7292:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B7294:  LDR.W           R0, [R0,#(dword_6F3A04 - 0x6F3794)]; this
2B7298:  CBZ             R0, loc_2B72A4
2B729A:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B729E:  CBZ             R0, loc_2B72A4
2B72A0:  MOVS            R0, #1
2B72A2:  POP             {R7,PC}
2B72A4:  MOVS            R0, #0
2B72A6:  POP             {R7,PC}
