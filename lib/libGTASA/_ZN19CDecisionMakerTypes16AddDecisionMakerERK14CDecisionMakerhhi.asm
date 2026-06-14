; =========================================================
; Game Engine Function: _ZN19CDecisionMakerTypes16AddDecisionMakerERK14CDecisionMakerhhi
; Address            : 0x4BDF44 - 0x4BDFEC
; =========================================================

4BDF44:  PUSH            {R4-R7,LR}
4BDF46:  ADD             R7, SP, #0xC
4BDF48:  PUSH.W          {R8,R9,R11}
4BDF4C:  MOV             R4, R3
4BDF4E:  MOV.W           LR, #0x14
4BDF52:  CMP             R4, #0
4BDF54:  MOV             R9, R1
4BDF56:  ITE EQ
4BDF58:  MOVEQ.W         LR, #0xF
4BDF5C:  MOVNE           R4, #0xF
4BDF5E:  MOV             R8, R0
4BDF60:  CMP             R4, LR
4BDF62:  BCS             loc_4BDFAA
4BDF64:  MOVW            R3, #0x99C
4BDF68:  LDR             R1, [R7,#arg_0]
4BDF6A:  SMLABB.W        R3, R4, R3, R8
4BDF6E:  ADDS            R5, R3, #4
4BDF70:  LDR             R3, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x4BDF76)
4BDF72:  ADD             R3, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
4BDF74:  LDR.W           R12, [R3]; CDecisionMakerTypes::m_bIsActive ...
4BDF78:  CMP             R1, R4
4BDF7A:  MOV.W           R6, #0
4BDF7E:  IT EQ
4BDF80:  MOVEQ           R6, #1
4BDF82:  LDRB.W          R0, [R12,R4]
4BDF86:  CMP             R1, #0
4BDF88:  MOV.W           R3, #0
4BDF8C:  ORN.W           R0, R0, R1
4BDF90:  IT GT
4BDF92:  MOVGT           R3, #1
4BDF94:  CMP             R0, #0
4BDF96:  ITT NE
4BDF98:  ANDNE.W         R0, R3, R6
4BDF9C:  CMPNE           R0, #1
4BDF9E:  BEQ             loc_4BDFB0
4BDFA0:  ADDS            R4, #1
4BDFA2:  ADDW            R5, R5, #0x99C
4BDFA6:  CMP             R4, LR
4BDFA8:  BLT             loc_4BDF78
4BDFAA:  MOV.W           R4, #0xFFFFFFFF
4BDFAE:  B               loc_4BDFE4
4BDFB0:  LDR             R0, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x4BDFBC)
4BDFB2:  MOVS            R6, #4
4BDFB4:  LDR             R1, =(_ZN19CDecisionMakerTypes7m_typesE_ptr - 0x4BDFBE)
4BDFB6:  MOVS            R3, #1
4BDFB8:  ADD             R0, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
4BDFBA:  ADD             R1, PC; _ZN19CDecisionMakerTypes7m_typesE_ptr
4BDFBC:  LDR             R0, [R0]; CDecisionMakerTypes::m_bIsActive ...
4BDFBE:  LDR             R1, [R1]; CDecisionMakerTypes::m_types ...
4BDFC0:  STRB            R3, [R0,R4]
4BDFC2:  STRB            R2, [R1,R4]
4BDFC4:  ADD.W           R0, R9, R6
4BDFC8:  SUBS            R1, R0, #4
4BDFCA:  MOV             R0, R5
4BDFCC:  BLX             j__ZN9CDecisionaSERKS_; CDecision::operator=(CDecision const&)
4BDFD0:  ADDS            R6, #0x3C ; '<'
4BDFD2:  ADDS            R5, #0x3C ; '<'
4BDFD4:  CMP.W           R6, #0x9A0
4BDFD8:  BNE             loc_4BDFC4
4BDFDA:  LDR.W           R0, [R8]
4BDFDE:  ADDS            R0, #1
4BDFE0:  STR.W           R0, [R8]
4BDFE4:  MOV             R0, R4
4BDFE6:  POP.W           {R8,R9,R11}
4BDFEA:  POP             {R4-R7,PC}
