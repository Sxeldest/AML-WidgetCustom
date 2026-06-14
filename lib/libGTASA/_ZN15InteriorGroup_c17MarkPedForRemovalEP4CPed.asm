; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c17MarkPedForRemovalEP4CPed
; Address            : 0x449F28 - 0x449FD0
; =========================================================

449F28:  MOV             R2, R0
449F2A:  LDR.W           R3, [R2,#0x78]!
449F2E:  CMP             R3, #0
449F30:  ITTTT NE
449F32:  MOVNE           R2, R0
449F34:  LDRNE.W         R3, [R2,#0x7C]!
449F38:  CMPNE           R3, #0
449F3A:  MOVNE           R2, R0
449F3C:  ITT NE
449F3E:  LDRNE.W         R3, [R2,#0x80]!
449F42:  CMPNE           R3, #0
449F44:  BNE             loc_449F4A
449F46:  STR             R1, [R2]
449F48:  BX              LR
449F4A:  MOV             R2, R0
449F4C:  LDR.W           R3, [R2,#0x84]!
449F50:  CMP             R3, #0
449F52:  ITTT NE
449F54:  MOVNE           R2, R0
449F56:  LDRNE.W         R3, [R2,#0x88]!
449F5A:  CMPNE           R3, #0
449F5C:  BEQ             loc_449F46
449F5E:  MOV             R2, R0
449F60:  LDR.W           R3, [R2,#0x8C]!
449F64:  CMP             R3, #0
449F66:  ITTT NE
449F68:  MOVNE           R2, R0
449F6A:  LDRNE.W         R3, [R2,#0x90]!
449F6E:  CMPNE           R3, #0
449F70:  BEQ             loc_449F46
449F72:  MOV             R2, R0
449F74:  LDR.W           R3, [R2,#0x94]!
449F78:  CMP             R3, #0
449F7A:  ITTT NE
449F7C:  MOVNE           R2, R0
449F7E:  LDRNE.W         R3, [R2,#0x98]!
449F82:  CMPNE           R3, #0
449F84:  BEQ             loc_449F46
449F86:  MOV             R2, R0
449F88:  LDR.W           R3, [R2,#0x9C]!
449F8C:  CMP             R3, #0
449F8E:  ITTT NE
449F90:  MOVNE           R2, R0
449F92:  LDRNE.W         R3, [R2,#0xA0]!
449F96:  CMPNE           R3, #0
449F98:  BEQ             loc_449F46
449F9A:  MOV             R2, R0
449F9C:  LDR.W           R3, [R2,#0xA4]!
449FA0:  CMP             R3, #0
449FA2:  ITTT NE
449FA4:  MOVNE           R2, R0
449FA6:  LDRNE.W         R3, [R2,#0xA8]!
449FAA:  CMPNE           R3, #0
449FAC:  BEQ             loc_449F46
449FAE:  MOV             R2, R0
449FB0:  LDR.W           R3, [R2,#0xAC]!
449FB4:  CMP             R3, #0
449FB6:  ITTT NE
449FB8:  MOVNE           R2, R0
449FBA:  LDRNE.W         R3, [R2,#0xB0]!
449FBE:  CMPNE           R3, #0
449FC0:  BEQ             loc_449F46
449FC2:  LDR.W           R2, [R0,#0xB4]!
449FC6:  CMP             R2, #0
449FC8:  MOV             R2, R0
449FCA:  IT EQ
449FCC:  STREQ           R1, [R2]
449FCE:  BX              LR
