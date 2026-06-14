; =========================================================
; Game Engine Function: _Z24RQ_Command_rqDisableCullRPc
; Address            : 0x1CFC7C - 0x1CFCB8
; =========================================================

1CFC7C:  LDR             R1, =(cullDisabled_ptr - 0x1CFC84)
1CFC7E:  LDR             R2, [R0]
1CFC80:  ADD             R1, PC; cullDisabled_ptr
1CFC82:  LDR             R3, [R1]; cullDisabled
1CFC84:  LDR.W           R1, [R2],#4
1CFC88:  STR             R2, [R0]
1CFC8A:  LDRB            R0, [R3]
1CFC8C:  CMP             R1, #0
1CFC8E:  MOV             R2, R1
1CFC90:  IT NE
1CFC92:  MOVNE           R2, #1
1CFC94:  CMP             R0, R2
1CFC96:  IT EQ
1CFC98:  BXEQ            LR
1CFC9A:  LDR             R0, =(curMode_ptr - 0x1CFCA4)
1CFC9C:  CMP             R1, #0
1CFC9E:  LDR             R2, =(cullDisabled_ptr - 0x1CFCA6)
1CFCA0:  ADD             R0, PC; curMode_ptr
1CFCA2:  ADD             R2, PC; cullDisabled_ptr
1CFCA4:  LDR             R0, [R0]; curMode
1CFCA6:  LDR             R2, [R2]; cullDisabled
1CFCA8:  LDR             R0, [R0]
1CFCAA:  IT NE
1CFCAC:  MOVNE           R1, #1
1CFCAE:  STRB            R1, [R2]
1CFCB0:  CMP             R0, #0
1CFCB2:  IT NE
1CFCB4:  BNE             _Z10es2SetCull10RQCullMode; es2SetCull(RQCullMode)
1CFCB6:  BX              LR
