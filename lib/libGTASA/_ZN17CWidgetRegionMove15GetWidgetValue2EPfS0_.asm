; =========================================================
; Game Engine Function: _ZN17CWidgetRegionMove15GetWidgetValue2EPfS0_
; Address            : 0x2C1B58 - 0x2C1BBC
; =========================================================

2C1B58:  PUSH            {R4-R7,LR}
2C1B5A:  ADD             R7, SP, #0xC
2C1B5C:  PUSH.W          {R8}
2C1B60:  SUB             SP, SP, #8
2C1B62:  MOV             R5, R0
2C1B64:  MOV             R4, R2
2C1B66:  LDR             R0, [R5]
2C1B68:  MOV             R6, R1
2C1B6A:  MOVS            R1, #0
2C1B6C:  MOV.W           R8, #0
2C1B70:  LDR             R2, [R0,#0x50]
2C1B72:  MOV             R0, R5
2C1B74:  BLX             R2
2C1B76:  CMP             R0, #1
2C1B78:  BNE             loc_2C1BAC
2C1B7A:  LDR             R1, [R5,#0x78]; int
2C1B7C:  MOV             R0, SP; this
2C1B7E:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2C1B82:  VLDR            S0, [R5,#0xA4]
2C1B86:  MOV             R0, SP; this
2C1B88:  VLDR            S2, [SP,#0x18+var_18]
2C1B8C:  VSUB.F32        S0, S2, S0
2C1B90:  VSTR            S0, [R6]
2C1B94:  LDR             R1, [R5,#0x78]; int
2C1B96:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2C1B9A:  VLDR            S0, [R5,#0xA8]
2C1B9E:  VLDR            S2, [SP,#0x18+var_14]
2C1BA2:  VSUB.F32        S0, S2, S0
2C1BA6:  VSTR            S0, [R4]
2C1BAA:  B               loc_2C1BB4
2C1BAC:  STR.W           R8, [R6]
2C1BB0:  STR.W           R8, [R4]
2C1BB4:  ADD             SP, SP, #8
2C1BB6:  POP.W           {R8}
2C1BBA:  POP             {R4-R7,PC}
