; =========================================================
; Game Engine Function: _ZN24CWidgetRegionPoolEnglish15GetWidgetValue2EPfS0_
; Address            : 0x2C1DDC - 0x2C1E0C
; =========================================================

2C1DDC:  PUSH            {R4-R7,LR}
2C1DDE:  ADD             R7, SP, #0xC
2C1DE0:  PUSH.W          {R11}
2C1DE4:  SUB             SP, SP, #8
2C1DE6:  MOV             R6, R0
2C1DE8:  MOV             R5, R1
2C1DEA:  LDR             R1, [R6,#0x78]; int
2C1DEC:  MOV             R0, SP; this
2C1DEE:  MOV             R4, R2
2C1DF0:  BLX             j__ZN15CTouchInterface13GetTouchDeltaEi; CTouchInterface::GetTouchDelta(int)
2C1DF4:  LDR             R0, [SP,#0x18+var_18]
2C1DF6:  STR             R0, [R5]
2C1DF8:  MOV             R0, SP; this
2C1DFA:  LDR             R1, [R6,#0x78]; int
2C1DFC:  BLX             j__ZN15CTouchInterface13GetTouchDeltaEi; CTouchInterface::GetTouchDelta(int)
2C1E00:  LDR             R0, [SP,#0x18+var_14]
2C1E02:  STR             R0, [R4]
2C1E04:  ADD             SP, SP, #8
2C1E06:  POP.W           {R11}
2C1E0A:  POP             {R4-R7,PC}
