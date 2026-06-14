; =========================================================
; Game Engine Function: _ZN7CWanted13SetPursuitCopEP7CCopPed
; Address            : 0x422994 - 0x422AFA
; =========================================================

422994:  PUSH            {R4-R7,LR}
422996:  ADD             R7, SP, #0xC
422998:  PUSH.W          {R8-R11}
42299C:  SUB             SP, SP, #0x1C
42299E:  MOV             R4, R1
4229A0:  MOV             R5, R0
4229A2:  BLX             j__ZNK7CWanted17CanCopJoinPursuitEP7CCopPed; CWanted::CanCopJoinPursuit(CCopPed *)
4229A6:  CMP             R0, #1
4229A8:  BNE.W           loc_422AB8
4229AC:  LDRB            R0, [R5,#0x18]
4229AE:  ADD.W           R6, R5, #0x1F4
4229B2:  LDRB            R1, [R5,#0x19]
4229B4:  CMP             R0, R1
4229B6:  BCC             loc_422A78
4229B8:  ADD.W           R0, R5, #0x218
4229BC:  STR             R0, [SP,#0x38+var_34]
4229BE:  ADD.W           R0, R5, #0x214
4229C2:  STR             R0, [SP,#0x38+var_30]
4229C4:  ADD.W           R0, R5, #0x210
4229C8:  STR             R0, [SP,#0x38+var_2C]
4229CA:  ADD.W           R0, R5, #0x20C
4229CE:  ADD.W           R10, R5, #0x200
4229D2:  ADD.W           R11, R5, #0x1FC
4229D6:  ADD.W           R8, R5, #0x1F8
4229DA:  STR             R0, [SP,#0x38+var_28]
4229DC:  ADD.W           R0, R5, #0x208
4229E0:  MOV.W           R9, #0
4229E4:  STR             R0, [SP,#0x38+var_24]
4229E6:  ADD.W           R0, R5, #0x204
4229EA:  STR             R0, [SP,#0x38+var_20]
4229EC:  MOV             R0, R4; this
4229EE:  MOV             R1, R6; CCopPed *
4229F0:  BLX             j__ZN7CWanted27ComputePursuitCopToDisplaceEP7CCopPedPS1_; CWanted::ComputePursuitCopToDisplace(CCopPed *,CCopPed **)
4229F4:  LDR             R1, [R6]
4229F6:  CMP             R1, R0
4229F8:  MOV             R1, R6
4229FA:  BEQ             loc_422A66
4229FC:  LDR.W           R1, [R8]
422A00:  CMP             R1, R0
422A02:  MOV             R1, R8
422A04:  BEQ             loc_422A66
422A06:  LDR.W           R1, [R11]
422A0A:  CMP             R1, R0
422A0C:  MOV             R1, R11
422A0E:  BEQ             loc_422A66
422A10:  LDR.W           R1, [R10]
422A14:  CMP             R1, R0
422A16:  MOV             R1, R10
422A18:  BEQ             loc_422A66
422A1A:  LDR             R1, [SP,#0x38+var_20]
422A1C:  MOV             R2, R1
422A1E:  LDR             R1, [R2]
422A20:  CMP             R1, R0
422A22:  MOV             R1, R2
422A24:  BEQ             loc_422A66
422A26:  LDR             R1, [SP,#0x38+var_24]
422A28:  MOV             R2, R1
422A2A:  LDR             R1, [R2]
422A2C:  CMP             R1, R0
422A2E:  MOV             R1, R2
422A30:  BEQ             loc_422A66
422A32:  LDR             R1, [SP,#0x38+var_28]
422A34:  MOV             R2, R1
422A36:  LDR             R1, [R2]
422A38:  CMP             R1, R0
422A3A:  MOV             R1, R2
422A3C:  BEQ             loc_422A66
422A3E:  LDR             R1, [SP,#0x38+var_2C]
422A40:  MOV             R2, R1
422A42:  LDR             R1, [R2]
422A44:  CMP             R1, R0
422A46:  MOV             R1, R2
422A48:  BEQ             loc_422A66
422A4A:  LDR             R1, [SP,#0x38+var_30]
422A4C:  MOV             R2, R1
422A4E:  LDR             R1, [R2]
422A50:  CMP             R1, R0
422A52:  MOV             R1, R2
422A54:  BEQ             loc_422A66
422A56:  LDR             R1, [SP,#0x38+var_34]
422A58:  MOV             R2, R1
422A5A:  LDR             R1, [R2]
422A5C:  CMP             R1, R0
422A5E:  MOV             R1, R2
422A60:  BEQ             loc_422A66
422A62:  LDRB            R0, [R5,#0x18]
422A64:  B               loc_422A70
422A66:  STR.W           R9, [R1]
422A6A:  LDRB            R0, [R5,#0x18]
422A6C:  SUBS            R0, #1
422A6E:  STRB            R0, [R5,#0x18]
422A70:  LDRB            R1, [R5,#0x19]
422A72:  UXTB            R2, R0
422A74:  CMP             R2, R1
422A76:  BCS             loc_4229EC
422A78:  LDR             R1, [R6]
422A7A:  CBZ             R1, loc_422AEA
422A7C:  LDR.W           R1, [R5,#0x1F8]
422A80:  CBZ             R1, loc_422ABC
422A82:  LDR.W           R1, [R5,#0x1FC]
422A86:  CBZ             R1, loc_422AC2
422A88:  LDR.W           R1, [R5,#0x200]
422A8C:  CBZ             R1, loc_422AC8
422A8E:  LDR.W           R1, [R5,#0x204]
422A92:  CBZ             R1, loc_422ACE
422A94:  LDR.W           R1, [R5,#0x208]
422A98:  CBZ             R1, loc_422AD4
422A9A:  LDR.W           R1, [R5,#0x20C]
422A9E:  CBZ             R1, loc_422ADA
422AA0:  LDR.W           R1, [R5,#0x210]
422AA4:  CBZ             R1, loc_422AE0
422AA6:  LDR.W           R1, [R5,#0x214]
422AAA:  CBZ             R1, loc_422AE6
422AAC:  LDR.W           R1, [R5,#0x218]
422AB0:  CBNZ            R1, loc_422AF0
422AB2:  ADD.W           R6, R5, #0x218
422AB6:  B               loc_422AEA
422AB8:  MOVS            R0, #0
422ABA:  B               loc_422AF2
422ABC:  ADD.W           R6, R5, #0x1F8
422AC0:  B               loc_422AEA
422AC2:  ADD.W           R6, R5, #0x1FC
422AC6:  B               loc_422AEA
422AC8:  ADD.W           R6, R5, #0x200
422ACC:  B               loc_422AEA
422ACE:  ADD.W           R6, R5, #0x204
422AD2:  B               loc_422AEA
422AD4:  ADD.W           R6, R5, #0x208
422AD8:  B               loc_422AEA
422ADA:  ADD.W           R6, R5, #0x20C
422ADE:  B               loc_422AEA
422AE0:  ADD.W           R6, R5, #0x210
422AE4:  B               loc_422AEA
422AE6:  ADD.W           R6, R5, #0x214
422AEA:  ADDS            R0, #1
422AEC:  STRB            R0, [R5,#0x18]
422AEE:  STR             R4, [R6]
422AF0:  MOVS            R0, #1
422AF2:  ADD             SP, SP, #0x1C
422AF4:  POP.W           {R8-R11}
422AF8:  POP             {R4-R7,PC}
