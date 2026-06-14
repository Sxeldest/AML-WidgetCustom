; =========================================================
; Game Engine Function: _ZN10TouchSense25playBuiltinEffectInternalEii
; Address            : 0x270C40 - 0x270CA6
; =========================================================

270C40:  PUSH            {R4-R7,LR}
270C42:  ADD             R7, SP, #0xC
270C44:  PUSH.W          {R8}
270C48:  SUB             SP, SP, #8
270C4A:  MOV             R5, R0
270C4C:  LDR             R0, =(UseTouchSense_ptr - 0x270C56)
270C4E:  MOV             R4, R2
270C50:  MOV             R8, R1
270C52:  ADD             R0, PC; UseTouchSense_ptr
270C54:  LDR             R0, [R0]; UseTouchSense
270C56:  LDRB            R0, [R0]
270C58:  CBZ             R0, loc_270C9C
270C5A:  LDR             R0, [R5]
270C5C:  CMP             R0, #1
270C5E:  BLT             loc_270C7E
270C60:  MOV             R6, R5
270C62:  LDR.W           R1, [R6,#0x28]!
270C66:  ADDS            R0, R1, #1
270C68:  BEQ             loc_270C90
270C6A:  LDR             R0, [R5,#0x24]
270C6C:  ADD             R2, SP, #0x18+var_14
270C6E:  BLX             ImmVibeGetEffectState
270C72:  LDR             R0, [SP,#0x18+var_14]
270C74:  CMP             R0, #1
270C76:  BNE             loc_270C8A
270C78:  LDR             R0, [R5,#8]
270C7A:  CMP             R0, R4
270C7C:  BGE             loc_270C82
270C7E:  MOVS            R0, #0
270C80:  B               loc_270C9E
270C82:  LDRD.W          R0, R1, [R5,#0x24]
270C86:  BLX             ImmVibeStopPlayingEffect
270C8A:  MOV.W           R0, #0xFFFFFFFF
270C8E:  STR             R0, [R6]
270C90:  LDR             R0, [R5,#0x24]
270C92:  MOV             R1, R8
270C94:  MOV             R2, R6
270C96:  BLX             ImmVibePlayUHLEffect
270C9A:  STR             R4, [R5,#8]
270C9C:  MOVS            R0, #1
270C9E:  ADD             SP, SP, #8
270CA0:  POP.W           {R8}
270CA4:  POP             {R4-R7,PC}
