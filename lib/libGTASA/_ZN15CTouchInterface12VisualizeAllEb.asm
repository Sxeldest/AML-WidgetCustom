; =========================================================
; Game Engine Function: _ZN15CTouchInterface12VisualizeAllEb
; Address            : 0x2B0C80 - 0x2B0CB8
; =========================================================

2B0C80:  PUSH            {R4-R7,LR}
2B0C82:  ADD             R7, SP, #0xC
2B0C84:  PUSH.W          {R11}
2B0C88:  LDR             R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B0C92)
2B0C8A:  MOV             R4, R0
2B0C8C:  MOVS            R0, #0xBD
2B0C8E:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B0C90:  LDR             R5, [R1]; CTouchInterface::m_pWidgets ...
2B0C92:  MOV             R6, R0
2B0C94:  LDR.W           R0, [R5,R6,LSL#2]
2B0C98:  CBZ             R0, loc_2B0CAC
2B0C9A:  LDRB.W          R1, [R0,#0x4D]
2B0C9E:  CBNZ            R1, loc_2B0CA4
2B0CA0:  CMP             R4, #1
2B0CA2:  BNE             loc_2B0CAC
2B0CA4:  LDR             R1, [R0]
2B0CA6:  LDR.W           R1, [R1,#0x88]
2B0CAA:  BLX             R1
2B0CAC:  SUBS            R0, R6, #1
2B0CAE:  CMP             R6, #0
2B0CB0:  BGT             loc_2B0C92
2B0CB2:  POP.W           {R11}
2B0CB6:  POP             {R4-R7,PC}
