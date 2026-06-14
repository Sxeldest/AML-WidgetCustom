; =========================================================
; Game Engine Function: _ZN17CWidgetRegionLook15GetWidgetValue2EPfS0_
; Address            : 0x2C12B0 - 0x2C12E0
; =========================================================

2C12B0:  PUSH            {R4-R7,LR}
2C12B2:  ADD             R7, SP, #0xC
2C12B4:  PUSH.W          {R11}
2C12B8:  SUB             SP, SP, #8
2C12BA:  MOV             R6, R0
2C12BC:  MOV             R5, R1
2C12BE:  LDR             R1, [R6,#0x78]; int
2C12C0:  MOV             R0, SP; this
2C12C2:  MOV             R4, R2
2C12C4:  BLX             j__ZN15CTouchInterface13GetTouchDeltaEi; CTouchInterface::GetTouchDelta(int)
2C12C8:  LDR             R0, [SP,#0x18+var_18]
2C12CA:  STR             R0, [R5]
2C12CC:  MOV             R0, SP; this
2C12CE:  LDR             R1, [R6,#0x78]; int
2C12D0:  BLX             j__ZN15CTouchInterface13GetTouchDeltaEi; CTouchInterface::GetTouchDelta(int)
2C12D4:  LDR             R0, [SP,#0x18+var_14]
2C12D6:  STR             R0, [R4]
2C12D8:  ADD             SP, SP, #8
2C12DA:  POP.W           {R11}
2C12DE:  POP             {R4-R7,PC}
