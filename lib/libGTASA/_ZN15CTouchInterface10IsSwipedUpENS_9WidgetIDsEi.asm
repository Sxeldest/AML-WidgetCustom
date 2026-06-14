; =========================================================
; Game Engine Function: _ZN15CTouchInterface10IsSwipedUpENS_9WidgetIDsEi
; Address            : 0x2B0FD4 - 0x2B105E
; =========================================================

2B0FD4:  PUSH            {R4-R7,LR}
2B0FD6:  ADD             R7, SP, #0xC
2B0FD8:  PUSH.W          {R11}
2B0FDC:  MOV             R4, R0
2B0FDE:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B0FE6)
2B0FE0:  MOV             R5, R1
2B0FE2:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B0FE4:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B0FE6:  LDR.W           R0, [R0,R4,LSL#2]
2B0FEA:  CBZ             R0, loc_2B100A
2B0FEC:  MOVS            R0, #0; this
2B0FEE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2B0FF2:  LDRH.W          R0, [R0,#0x110]
2B0FF6:  CBZ             R0, loc_2B1012
2B0FF8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B0FFE)
2B0FFA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B0FFC:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B0FFE:  LDR.W           R0, [R0,R4,LSL#2]
2B1002:  LDRB.W          R0, [R0,#0x80]
2B1006:  LSLS            R0, R0, #0x1D
2B1008:  BMI             loc_2B1012
2B100A:  MOVS            R0, #0
2B100C:  POP.W           {R11}
2B1010:  POP             {R4-R7,PC}
2B1012:  CMP             R5, #1
2B1014:  BLT             loc_2B1046
2B1016:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B101E)
2B1018:  MOVS            R1, #1; bool
2B101A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B101C:  LDR             R6, [R0]; CTouchInterface::m_pWidgets ...
2B101E:  LDR.W           R0, [R6,R4,LSL#2]; this
2B1022:  BLX             j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2B1026:  LDR.W           R0, [R6,R4,LSL#2]
2B102A:  VMOV            S2, R5
2B102E:  VLDR            S0, [R0,#0x7C]
2B1032:  VCVT.F32.S32    S2, S2
2B1036:  VCVT.F32.S32    S0, S0
2B103A:  VMAX.F32        D0, D1, D0
2B103E:  VCVT.S32.F32    S0, S0
2B1042:  VSTR            S0, [R0,#0x7C]
2B1046:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B104C)
2B1048:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B104A:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2B104C:  LDR.W           R0, [R0,R4,LSL#2]
2B1050:  LDR             R1, [R0]
2B1052:  LDR             R1, [R1,#0x4C]
2B1054:  POP.W           {R11}
2B1058:  POP.W           {R4-R7,LR}
2B105C:  BX              R1
