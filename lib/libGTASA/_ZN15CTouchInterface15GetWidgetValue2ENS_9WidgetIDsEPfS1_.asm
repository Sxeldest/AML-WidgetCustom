; =========================================================
; Game Engine Function: _ZN15CTouchInterface15GetWidgetValue2ENS_9WidgetIDsEPfS1_
; Address            : 0x2B21B8 - 0x2B222E
; =========================================================

2B21B8:  PUSH            {R4-R7,LR}
2B21BA:  ADD             R7, SP, #0xC
2B21BC:  PUSH.W          {R8}
2B21C0:  MOV             R4, R2
2B21C2:  CMP             R4, #0
2B21C4:  MOV             R8, R1
2B21C6:  MOV             R6, R0
2B21C8:  IT NE
2B21CA:  CMPNE.W         R8, #0
2B21CE:  BEQ             loc_2B2228
2B21D0:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B21D6)
2B21D2:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B21D4:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B21D6:  LDR.W           R0, [R0,R6,LSL#2]
2B21DA:  CBZ             R0, loc_2B2228
2B21DC:  MOVS            R0, #0; this
2B21DE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2B21E2:  LDRH.W          R0, [R0,#0x110]
2B21E6:  CBZ             R0, loc_2B2202
2B21E8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B21EE)
2B21EA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B21EC:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B21EE:  LDR.W           R0, [R0,R6,LSL#2]
2B21F2:  LDRB.W          R0, [R0,#0x80]
2B21F6:  LSLS            R0, R0, #0x1D
2B21F8:  ITTT PL
2B21FA:  MOVPL           R0, #0
2B21FC:  STRPL.W         R0, [R8]
2B2200:  STRPL           R0, [R4]
2B2202:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B220A)
2B2204:  MOVS            R1, #1; bool
2B2206:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2208:  LDR             R5, [R0]; CTouchInterface::m_pWidgets ...
2B220A:  LDR.W           R0, [R5,R6,LSL#2]; this
2B220E:  BLX             j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2B2212:  LDR.W           R0, [R5,R6,LSL#2]
2B2216:  MOV             R2, R4
2B2218:  LDR             R1, [R0]
2B221A:  LDR             R3, [R1,#0x20]
2B221C:  MOV             R1, R8
2B221E:  POP.W           {R8}
2B2222:  POP.W           {R4-R7,LR}
2B2226:  BX              R3
2B2228:  POP.W           {R8}
2B222C:  POP             {R4-R7,PC}
