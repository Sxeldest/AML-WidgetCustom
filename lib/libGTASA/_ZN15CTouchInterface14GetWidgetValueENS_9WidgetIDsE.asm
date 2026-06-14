; =========================================================
; Game Engine Function: _ZN15CTouchInterface14GetWidgetValueENS_9WidgetIDsE
; Address            : 0x2B215C - 0x2B21AC
; =========================================================

2B215C:  PUSH            {R4,R6,R7,LR}
2B215E:  ADD             R7, SP, #8
2B2160:  MOV             R4, R0
2B2162:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B2168)
2B2164:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B2166:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B2168:  LDR.W           R0, [R0,R4,LSL#2]
2B216C:  CBZ             R0, loc_2B218E
2B216E:  MOVS            R0, #0; this
2B2170:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2B2174:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B217E)
2B2176:  LDRH.W          R2, [R0,#0x110]
2B217A:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B217C:  CMP             R2, #0
2B217E:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2B2180:  LDR.W           R0, [R1,R4,LSL#2]; this
2B2184:  BEQ             loc_2B2192
2B2186:  LDRB.W          R1, [R0,#0x80]
2B218A:  LSLS            R1, R1, #0x1D
2B218C:  BMI             loc_2B2192
2B218E:  MOVS            R0, #0
2B2190:  POP             {R4,R6,R7,PC}
2B2192:  MOVS            R1, #1; bool
2B2194:  BLX             j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2B2198:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B219E)
2B219A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B219C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B219E:  LDR.W           R0, [R0,R4,LSL#2]
2B21A2:  LDR             R1, [R0]
2B21A4:  LDR             R1, [R1,#0x1C]
2B21A6:  POP.W           {R4,R6,R7,LR}
2B21AA:  BX              R1
