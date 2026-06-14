; =========================================================
; Game Engine Function: _ZN15CTouchInterface22AnyWidgetsUsingAltBackEv
; Address            : 0x2B28B4 - 0x2B28FC
; =========================================================

2B28B4:  PUSH            {R4-R7,LR}
2B28B6:  ADD             R7, SP, #0xC
2B28B8:  PUSH.W          {R11}
2B28BC:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B28C4)
2B28BE:  MOVS            R0, #0
2B28C0:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B28C2:  LDR             R4, [R1]; CTouchInterface::m_pWidgets ...
2B28C4:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B28CA)
2B28C6:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B28C8:  LDR             R5, [R1]; CTouchInterface::m_pWidgets ...
2B28CA:  MOV             R6, R0
2B28CC:  LDR.W           R0, [R4,R6,LSL#2]; this
2B28D0:  CBZ             R0, loc_2B28E6
2B28D2:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
2B28D6:  CMP             R0, #1
2B28D8:  BNE             loc_2B28E6
2B28DA:  LDR.W           R0, [R5,R6,LSL#2]
2B28DE:  LDRB.W          R0, [R0,#0x81]
2B28E2:  LSLS            R0, R0, #0x1A
2B28E4:  BMI             loc_2B28F4
2B28E6:  ADDS            R0, R6, #1
2B28E8:  CMP             R6, #0xBD
2B28EA:  BLT             loc_2B28CA
2B28EC:  MOVS            R0, #0
2B28EE:  POP.W           {R11}
2B28F2:  POP             {R4-R7,PC}
2B28F4:  MOVS            R0, #1
2B28F6:  POP.W           {R11}
2B28FA:  POP             {R4-R7,PC}
