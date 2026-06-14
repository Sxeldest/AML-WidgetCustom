; =========================================================
; Game Engine Function: png_set_IHDR
; Address            : 0x201C54 - 0x201CEC
; =========================================================

201C54:  PUSH            {R4-R7,LR}
201C56:  ADD             R7, SP, #0xC
201C58:  PUSH.W          {R8}
201C5C:  SUB             SP, SP, #0x10
201C5E:  CMP             R0, #0
201C60:  MOV             R4, R1
201C62:  MOV             R8, R2
201C64:  IT NE
201C66:  CMPNE           R4, #0
201C68:  BEQ             loc_201CE4
201C6A:  LDRD.W          R5, R2, [R7,#arg_8]
201C6E:  LDRD.W          LR, R12, [R7,#arg_0]
201C72:  LDR             R1, [R7,#arg_10]
201C74:  UXTB.W          R6, R12
201C78:  STRD.W          R8, R3, [R4]
201C7C:  STRB.W          LR, [R4,#0x18]
201C80:  STRB.W          R12, [R4,#0x19]
201C84:  STRB            R2, [R4,#0x1A]
201C86:  UXTB            R2, R2
201C88:  STRB            R1, [R4,#0x1B]
201C8A:  UXTB            R1, R1
201C8C:  STRB            R5, [R4,#0x1C]
201C8E:  UXTB            R5, R5
201C90:  STRD.W          R6, R5, [SP,#0x20+var_20]
201C94:  UXTB.W          R5, LR
201C98:  STRD.W          R2, R1, [SP,#0x20+var_18]
201C9C:  MOV             R2, R3
201C9E:  MOV             R1, R8
201CA0:  MOV             R3, R5
201CA2:  BLX             j_png_check_IHDR
201CA6:  LDRB            R1, [R4,#0x19]
201CA8:  CMP             R1, #3
201CAA:  BNE             loc_201CB0
201CAC:  MOVS            R0, #1
201CAE:  B               loc_201CC0
201CB0:  AND.W           R0, R1, #2
201CB4:  TST.W           R1, #4
201CB8:  ORR.W           R0, R0, #1
201CBC:  IT NE
201CBE:  ADDNE           R0, #1
201CC0:  LDRB            R1, [R4,#0x18]
201CC2:  UXTB            R2, R0
201CC4:  STRB            R0, [R4,#0x1D]
201CC6:  SMULBB.W        R1, R1, R2
201CCA:  STRB            R1, [R4,#0x1E]
201CCC:  UXTB            R0, R1
201CCE:  CMP             R0, #8
201CD0:  BCC             loc_201CDA
201CD2:  LSRS            R0, R0, #3
201CD4:  MUL.W           R0, R0, R8
201CD8:  B               loc_201CE2
201CDA:  MUL.W           R0, R0, R8
201CDE:  ADDS            R0, #7
201CE0:  LSRS            R0, R0, #3
201CE2:  STR             R0, [R4,#0xC]
201CE4:  ADD             SP, SP, #0x10
201CE6:  POP.W           {R8}
201CEA:  POP             {R4-R7,PC}
