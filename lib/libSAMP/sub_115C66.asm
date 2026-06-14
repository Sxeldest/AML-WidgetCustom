; =========================================================
; Game Engine Function: sub_115C66
; Address            : 0x115C66 - 0x115D06
; =========================================================

115C66:  PUSH            {R4-R7,LR}
115C68:  ADD             R7, SP, #0xC
115C6A:  PUSH.W          {R11}
115C6E:  SUB             SP, SP, #0x10
115C70:  CMP             R1, R0
115C72:  BEQ             loc_115CFE
115C74:  MOV             R5, R0
115C76:  LDR             R0, [R0,#0x10]
115C78:  MOV             R4, R1
115C7A:  CMP             R0, R5
115C7C:  BEQ             loc_115C8A
115C7E:  LDR             R1, [R4,#0x10]
115C80:  CMP             R4, R1
115C82:  BEQ             loc_115CA6
115C84:  STR             R1, [R5,#0x10]
115C86:  STR             R0, [R4,#0x10]
115C88:  B               loc_115CFE
115C8A:  LDR             R1, [R4,#0x10]
115C8C:  CMP             R1, R4
115C8E:  BEQ             loc_115CC0
115C90:  LDR             R1, [R0]
115C92:  LDR             R2, [R1,#0xC]
115C94:  MOV             R1, R4
115C96:  BLX             R2
115C98:  LDR             R0, [R5,#0x10]
115C9A:  LDR             R1, [R0]
115C9C:  LDR             R1, [R1,#0x10]
115C9E:  BLX             R1
115CA0:  LDR             R0, [R4,#0x10]
115CA2:  STR             R0, [R5,#0x10]
115CA4:  B               loc_115CFC
115CA6:  LDR             R0, [R1]
115CA8:  LDR             R2, [R0,#0xC]
115CAA:  MOV             R0, R1
115CAC:  MOV             R1, R5
115CAE:  BLX             R2
115CB0:  LDR             R0, [R4,#0x10]
115CB2:  LDR             R1, [R0]
115CB4:  LDR             R1, [R1,#0x10]
115CB6:  BLX             R1
115CB8:  LDR             R0, [R5,#0x10]
115CBA:  STR             R0, [R4,#0x10]
115CBC:  STR             R5, [R5,#0x10]
115CBE:  B               loc_115CFE
115CC0:  LDR             R1, [R0]
115CC2:  LDR             R2, [R1,#0xC]
115CC4:  MOV             R1, SP
115CC6:  BLX             R2
115CC8:  LDR             R0, [R5,#0x10]
115CCA:  LDR             R1, [R0]
115CCC:  LDR             R1, [R1,#0x10]
115CCE:  BLX             R1
115CD0:  MOVS            R6, #0
115CD2:  STR             R6, [R5,#0x10]
115CD4:  LDR             R0, [R4,#0x10]
115CD6:  LDR             R1, [R0]
115CD8:  LDR             R2, [R1,#0xC]
115CDA:  MOV             R1, R5
115CDC:  BLX             R2
115CDE:  LDR             R0, [R4,#0x10]
115CE0:  LDR             R1, [R0]
115CE2:  LDR             R1, [R1,#0x10]
115CE4:  BLX             R1
115CE6:  LDR             R0, [SP,#0x20+var_20]
115CE8:  STR             R6, [R4,#0x10]
115CEA:  STR             R5, [R5,#0x10]
115CEC:  LDR             R2, [R0,#0xC]
115CEE:  MOV             R0, SP
115CF0:  MOV             R1, R4
115CF2:  BLX             R2
115CF4:  LDR             R0, [SP,#0x20+var_20]
115CF6:  LDR             R1, [R0,#0x10]
115CF8:  MOV             R0, SP
115CFA:  BLX             R1
115CFC:  STR             R4, [R4,#0x10]
115CFE:  ADD             SP, SP, #0x10
115D00:  POP.W           {R11}
115D04:  POP             {R4-R7,PC}
