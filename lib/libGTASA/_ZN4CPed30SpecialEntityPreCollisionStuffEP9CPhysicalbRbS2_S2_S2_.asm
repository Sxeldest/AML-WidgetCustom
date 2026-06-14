; =========================================================
; Game Engine Function: _ZN4CPed30SpecialEntityPreCollisionStuffEP9CPhysicalbRbS2_S2_S2_
; Address            : 0x4A6C2C - 0x4A6DDE
; =========================================================

4A6C2C:  PUSH            {R4-R7,LR}
4A6C2E:  ADD             R7, SP, #0xC
4A6C30:  PUSH.W          {R11}
4A6C34:  MOV             R4, R0
4A6C36:  LDRB.W          R0, [R1,#0x3A]
4A6C3A:  AND.W           R0, R0, #7
4A6C3E:  CMP             R0, #2
4A6C40:  BNE             loc_4A6C52
4A6C42:  LDRB.W          R6, [R4,#0x48B]
4A6C46:  LSLS            R6, R6, #0x18
4A6C48:  BPL             loc_4A6C52
4A6C4A:  LDR.W           R6, [R4,#0x590]
4A6C4E:  CMP             R6, R1
4A6C50:  BEQ             loc_4A6CCA
4A6C52:  LDR.W           R6, [R4,#0x12C]
4A6C56:  LDR.W           LR, [R7,#arg_0]
4A6C5A:  CMP             R6, R1
4A6C5C:  ITT NE
4A6C5E:  LDRNE.W         R6, [R1,#0x12C]
4A6C62:  CMPNE           R6, R4
4A6C64:  BNE             loc_4A6C88
4A6C66:  MOVS            R0, #1
4A6C68:  MOVS            R1, #0x10
4A6C6A:  STRB.W          R0, [LR]
4A6C6E:  MOVT            R1, #0x8000
4A6C72:  LDR.W           R0, [R4,#0x488]
4A6C76:  ANDS            R0, R1
4A6C78:  TEQ.W           R0, #0x10
4A6C7C:  BEQ             loc_4A6CCE
4A6C7E:  LDR             R0, [R4,#0x44]
4A6C80:  ORR.W           R0, R0, #0x1000
4A6C84:  STR             R0, [R4,#0x44]
4A6C86:  B               loc_4A6CCE
4A6C88:  LDR.W           R6, [R4,#0x100]
4A6C8C:  CMP             R6, R1
4A6C8E:  ITT NE
4A6C90:  LDRNE.W         R5, [R1,#0x100]
4A6C94:  CMPNE           R5, R4
4A6C96:  BEQ             loc_4A6CCA
4A6C98:  CMP             R6, #0
4A6C9A:  IT NE
4A6C9C:  CMPNE           R5, #0
4A6C9E:  BNE             loc_4A6CCA
4A6CA0:  LDRD.W          R12, R6, [R7,#arg_4]
4A6CA4:  LDR             R5, [R1,#0x44]
4A6CA6:  TST.W           R5, #0x20
4A6CAA:  BNE             loc_4A6CF0
4A6CAC:  TST.W           R5, #0xC0
4A6CB0:  BEQ             loc_4A6D10
4A6CB2:  CMP             R2, #0
4A6CB4:  BNE.W           loc_4A6DD6
4A6CB8:  LDRB            R0, [R4,#0x1C]
4A6CBA:  LSLS            R0, R0, #0x1B
4A6CBC:  BMI.W           loc_4A6DD4
4A6CC0:  LDRB            R0, [R1,#0x1C]
4A6CC2:  MOV             LR, R6
4A6CC4:  LSLS            R0, R0, #0x1B
4A6CC6:  BPL             loc_4A6C7E
4A6CC8:  B               loc_4A6DD6
4A6CCA:  MOVS            R0, #1
4A6CCC:  STRB            R0, [R3]
4A6CCE:  LDR.W           R0, [R4,#0x59C]
4A6CD2:  CMP             R0, #1
4A6CD4:  BHI             loc_4A6CEA
4A6CD6:  LDR.W           R0, [R4,#0x440]; this
4A6CDA:  BLX             j__ZNK16CPedIntelligence12GetTaskClimbEv; CPedIntelligence::GetTaskClimb(void)
4A6CDE:  CMP             R0, #0
4A6CE0:  ITTT NE
4A6CE2:  LDRNE           R0, [R4,#0x44]
4A6CE4:  ORRNE.W         R0, R0, #0x1000
4A6CE8:  STRNE           R0, [R4,#0x44]
4A6CEA:  POP.W           {R11}
4A6CEE:  POP             {R4-R7,PC}
4A6CF0:  MOVS            R0, #0x40000004
4A6CF6:  ANDS            R0, R5
4A6CF8:  ITE NE
4A6CFA:  MOVNE           R3, R12
4A6CFC:  CMPEQ           R2, #0
4A6CFE:  BNE             loc_4A6DA4
4A6D00:  LDRB            R0, [R4,#0x1C]
4A6D02:  LSLS            R0, R0, #0x1B
4A6D04:  BMI             loc_4A6DA2
4A6D06:  LDRB            R0, [R1,#0x1C]
4A6D08:  MOV             R3, R6
4A6D0A:  LSLS            R0, R0, #0x1B
4A6D0C:  BPL             loc_4A6C7E
4A6D0E:  B               loc_4A6DA4
4A6D10:  CMP             R0, #4
4A6D12:  BNE             loc_4A6DAA
4A6D14:  LDRB.W          R0, [R1,#0x145]
4A6D18:  LSLS            R0, R0, #0x1F
4A6D1A:  BEQ             loc_4A6D30
4A6D1C:  LDR             R0, [R1,#0x14]
4A6D1E:  VLDR            S0, =0.66
4A6D22:  VLDR            S2, [R0,#0x28]
4A6D26:  VCMPE.F32       S2, S0
4A6D2A:  VMRS            APSR_nzcv, FPSCR
4A6D2E:  BLT             loc_4A6DD6
4A6D30:  LDRH            R0, [R1,#0x26]
4A6D32:  CMP.W           R0, #0x156
4A6D36:  BNE             loc_4A6D4E
4A6D38:  LDR             R0, [R4,#0x14]
4A6D3A:  LDR             R2, [R1,#0x14]
4A6D3C:  VLDR            S0, [R0,#0x38]
4A6D40:  VLDR            S2, [R2,#0x38]
4A6D44:  VCMPE.F32       S2, S0
4A6D48:  VMRS            APSR_nzcv, FPSCR
4A6D4C:  BLT             loc_4A6DD6
4A6D4E:  LDR.W           R0, [R1,#0x164]
4A6D52:  VLDR            S0, [R0,#0x14]
4A6D56:  VCMPE.F32       S0, #0.0
4A6D5A:  VMRS            APSR_nzcv, FPSCR
4A6D5E:  BGT             loc_4A6D66
4A6D60:  ANDS.W          R0, R5, #4
4A6D64:  BEQ             loc_4A6DC4
4A6D66:  VLDR            S0, [R1,#0x48]
4A6D6A:  VABS.F32        S2, S0
4A6D6E:  VLDR            S0, =0.001
4A6D72:  VCMPE.F32       S2, S0
4A6D76:  VMRS            APSR_nzcv, FPSCR
4A6D7A:  BGE             loc_4A6DC4
4A6D7C:  VLDR            S2, [R1,#0x4C]
4A6D80:  VABS.F32        S2, S2
4A6D84:  VCMPE.F32       S2, S0
4A6D88:  VMRS            APSR_nzcv, FPSCR
4A6D8C:  BGE             loc_4A6DC4
4A6D8E:  VLDR            S2, [R1,#0x50]
4A6D92:  VABS.F32        S2, S2
4A6D96:  VCMPE.F32       S2, S0
4A6D9A:  VMRS            APSR_nzcv, FPSCR
4A6D9E:  BGE             loc_4A6DC4
4A6DA0:  B               loc_4A6DCC
4A6DA2:  MOV             R3, R6
4A6DA4:  MOVS            R0, #1
4A6DA6:  STRB            R0, [R3]
4A6DA8:  B               loc_4A6C7E
4A6DAA:  LDRSH.W         R0, [R1,#0x26]
4A6DAE:  MOVW            R2, #0x1B9
4A6DB2:  CMP             R0, R2
4A6DB4:  BEQ             loc_4A6DD6
4A6DB6:  MOVW            R2, #0x252
4A6DBA:  CMP             R0, R2
4A6DBC:  IT NE
4A6DBE:  CMPNE.W         R0, #0x234
4A6DC2:  BEQ             loc_4A6DD6
4A6DC4:  LDRB            R0, [R1,#0x1C]
4A6DC6:  LSLS            R0, R0, #0x1B
4A6DC8:  BPL.W           loc_4A6CCE
4A6DCC:  MOVS            R0, #1
4A6DCE:  STRB.W          R0, [R12]
4A6DD2:  B               loc_4A6CCE
4A6DD4:  MOV             LR, R6
4A6DD6:  MOVS            R0, #1
4A6DD8:  STRB.W          R0, [LR]
4A6DDC:  B               loc_4A6C7E
