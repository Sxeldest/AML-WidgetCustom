; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander12ContinueFromERKS_
; Address            : 0x520C78 - 0x520CB4
; =========================================================

520C78:  LDRH            R2, [R1,#0x18]
520C7A:  LDRH            R3, [R0,#0x18]
520C7C:  CMP             R3, R2
520C7E:  BNE             loc_520C9A
520C80:  LDRH            R2, [R1,#0x1A]
520C82:  LDRH            R3, [R0,#0x1A]
520C84:  CMP             R3, R2
520C86:  BNE             loc_520C9A
520C88:  LDRH            R2, [R1,#0x1C]
520C8A:  LDRH            R3, [R0,#0x1C]
520C8C:  CMP             R3, R2
520C8E:  BNE             loc_520C9A
520C90:  LDRH            R2, [R1,#0x1E]
520C92:  LDRH            R3, [R0,#0x1E]
520C94:  CMP             R3, R2
520C96:  IT EQ
520C98:  BXEQ            LR
520C9A:  LDR             R2, [R1,#0x18]
520C9C:  STR             R2, [R0,#0x18]
520C9E:  LDR             R2, [R1,#0x1C]
520CA0:  LDRB.W          R3, [R0,#0x24]
520CA4:  STR             R2, [R0,#0x1C]
520CA6:  LDRB            R1, [R1,#0x10]
520CA8:  STRB            R1, [R0,#0x10]
520CAA:  ORR.W           R1, R3, #4
520CAE:  STRB.W          R1, [R0,#0x24]
520CB2:  BX              LR
