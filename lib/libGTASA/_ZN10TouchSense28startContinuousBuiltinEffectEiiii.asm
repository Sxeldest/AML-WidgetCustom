; =========================================================
; Game Engine Function: _ZN10TouchSense28startContinuousBuiltinEffectEiiii
; Address            : 0x270B3C - 0x270BA6
; =========================================================

270B3C:  PUSH            {R4-R7,LR}
270B3E:  ADD             R7, SP, #0xC
270B40:  PUSH.W          {R8}
270B44:  SUB             SP, SP, #8
270B46:  MOV             R4, R0
270B48:  LDR             R0, =(UseTouchSense_ptr - 0x270B50)
270B4A:  MOV             R5, R2
270B4C:  ADD             R0, PC; UseTouchSense_ptr
270B4E:  LDR             R0, [R0]; UseTouchSense
270B50:  LDRB            R0, [R0]
270B52:  CBZ             R0, loc_270B9C
270B54:  LDR             R0, [R4]
270B56:  CMP             R0, R1
270B58:  BGE             loc_270B5E
270B5A:  MOVS            R0, #0
270B5C:  B               loc_270B9E
270B5E:  MOV             R6, R4
270B60:  LDR.W           R8, [R7,#arg_0]
270B64:  LDR.W           R1, [R6,#0x2C]!
270B68:  ADDS            R0, R1, #1
270B6A:  BEQ             loc_270B8E
270B6C:  LDR             R0, [R4,#0x24]
270B6E:  ADD             R2, SP, #0x18+var_14
270B70:  BLX             ImmVibeGetEffectState
270B74:  LDR             R0, [SP,#0x18+var_14]
270B76:  CMP             R0, #1
270B78:  BNE             loc_270B88
270B7A:  LDR             R0, [R4,#0xC]
270B7C:  CMP             R0, R8
270B7E:  BLE             loc_270B5A
270B80:  LDR             R0, [R4,#0x24]
270B82:  LDR             R1, [R4,#0x2C]
270B84:  BLX             ImmVibeStopPlayingEffect
270B88:  MOV.W           R0, #0xFFFFFFFF
270B8C:  STR             R0, [R6]
270B8E:  LDR             R0, [R4,#0x24]
270B90:  MOV             R1, R5
270B92:  MOV             R2, R6
270B94:  BLX             ImmVibePlayUHLEffect
270B98:  STR.W           R8, [R4,#0xC]
270B9C:  MOVS            R0, #1
270B9E:  ADD             SP, SP, #8
270BA0:  POP.W           {R8}
270BA4:  POP             {R4-R7,PC}
