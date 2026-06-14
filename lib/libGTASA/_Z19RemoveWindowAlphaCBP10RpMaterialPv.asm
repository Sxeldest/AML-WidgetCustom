; =========================================================
; Game Engine Function: _Z19RemoveWindowAlphaCBP10RpMaterialPv
; Address            : 0x388A80 - 0x388ABE
; =========================================================

388A80:  LDRB            R2, [R0,#7]
388A82:  CMP             R2, #0xFF
388A84:  IT EQ
388A86:  BXEQ            LR
388A88:  PUSH            {R7,LR}
388A8A:  MOV             R7, SP
388A8C:  LDR             R3, [R1]
388A8E:  ADD.W           R12, R0, #4
388A92:  ADDS            R2, R3, #4
388A94:  STR             R2, [R1]
388A96:  STR.W           R12, [R3]
388A9A:  LDR             R2, [R1]
388A9C:  ADDS            R3, R2, #4
388A9E:  STR             R3, [R1]
388AA0:  MOVS            R3, #4
388AA2:  STR             R3, [R2]
388AA4:  LDR             R2, [R1]
388AA6:  LDR.W           LR, [R12]
388AAA:  ADDS            R3, R2, #4
388AAC:  STR             R3, [R1]
388AAE:  MOVS            R1, #0
388AB0:  STR.W           LR, [R2]
388AB4:  STR.W           R1, [R12]
388AB8:  POP.W           {R7,LR}
388ABC:  BX              LR
