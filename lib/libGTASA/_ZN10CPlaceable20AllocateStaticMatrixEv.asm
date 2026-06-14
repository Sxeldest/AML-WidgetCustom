; =========================================================
; Game Engine Function: _ZN10CPlaceable20AllocateStaticMatrixEv
; Address            : 0x408BFC - 0x408D18
; =========================================================

408BFC:  PUSH            {R4-R7,LR}
408BFE:  ADD             R7, SP, #0xC
408C00:  PUSH.W          {R8-R11}
408C04:  SUB             SP, SP, #4
408C06:  MOV             R8, R0
408C08:  LDR.W           R0, [R8,#0x14]
408C0C:  CBZ             R0, loc_408C3E
408C0E:  LDR             R3, =(gMatrixList_ptr - 0x408C1A)
408C10:  LDRD.W          R1, R2, [R0,#0x4C]
408C14:  STR             R1, [R2,#0x4C]
408C16:  ADD             R3, PC; gMatrixList_ptr
408C18:  LDRD.W          R1, R2, [R0,#0x4C]
408C1C:  LDR             R3, [R3]; gMatrixList
408C1E:  STR             R2, [R1,#0x50]
408C20:  LDR.W           R1, [R3,#(dword_95AA80 - 0x95A988)]
408C24:  STR             R1, [R0,#0x50]
408C26:  LDR.W           R1, [R3,#(dword_95AA80 - 0x95A988)]
408C2A:  STR             R0, [R1,#0x4C]
408C2C:  ADD.W           R1, R3, #0xA8
408C30:  STR             R1, [R0,#0x4C]
408C32:  STR.W           R0, [R3,#(dword_95AA80 - 0x95A988)]
408C36:  ADD             SP, SP, #4
408C38:  POP.W           {R8-R11}
408C3C:  POP             {R4-R7,PC}
408C3E:  LDR             R0, =(gMatrixList_ptr - 0x408C44)
408C40:  ADD             R0, PC; gMatrixList_ptr
408C42:  LDR             R1, [R0]; gMatrixList
408C44:  LDR.W           R0, [R1,#(dword_95AB28 - 0x95A988)]
408C48:  ADD.W           R1, R1, #0x1A4
408C4C:  CMP             R0, R1
408C4E:  BEQ             loc_408C7C
408C50:  LDR             R3, =(gMatrixList_ptr - 0x408C5E)
408C52:  CMP             R0, #0
408C54:  LDRD.W          R1, R2, [R0,#0x4C]
408C58:  STR             R1, [R2,#0x4C]
408C5A:  ADD             R3, PC; gMatrixList_ptr
408C5C:  LDRD.W          R1, R2, [R0,#0x4C]
408C60:  LDR             R3, [R3]; gMatrixList
408C62:  STR             R2, [R1,#0x50]
408C64:  LDR.W           R1, [R3,#(dword_95AA80 - 0x95A988)]
408C68:  STR             R1, [R0,#0x50]
408C6A:  LDR.W           R1, [R3,#(dword_95AA80 - 0x95A988)]
408C6E:  STR             R0, [R1,#0x4C]
408C70:  ADD.W           R1, R3, #0xA8
408C74:  STR             R1, [R0,#0x4C]
408C76:  STR.W           R0, [R3,#(dword_95AA80 - 0x95A988)]
408C7A:  BNE             loc_408D02
408C7C:  LDR             R0, =(gMatrixList_ptr - 0x408C82)
408C7E:  ADD             R0, PC; gMatrixList_ptr
408C80:  LDR             R6, [R0]; gMatrixList
408C82:  LDR.W           R0, [R6,#(dword_95AA28 - 0x95A988)]
408C86:  LDR             R4, [R0,#0x48]
408C88:  LDR             R5, [R4,#0x14]
408C8A:  LDRD.W          R0, R1, [R5,#0x10]; x
408C8E:  ADD.W           R11, R5, #0x30 ; '0'
408C92:  EOR.W           R0, R0, #0x80000000; y
408C96:  LDM.W           R11, {R9-R11}
408C9A:  BLX             atan2f
408C9E:  MOV             R1, R0
408CA0:  ADDS            R2, R4, #4
408CA2:  MOVS            R0, #0
408CA4:  STM.W           R2, {R9-R11}
408CA8:  STRD.W          R1, R0, [R4,#0x10]
408CAC:  LDRD.W          R1, R2, [R5,#0x4C]
408CB0:  STR             R0, [R5,#0x48]
408CB2:  STR             R1, [R2,#0x4C]
408CB4:  LDRD.W          R1, R2, [R5,#0x4C]
408CB8:  STR             R2, [R1,#0x50]
408CBA:  LDR.W           R1, [R6,#(dword_95AB28 - 0x95A988)]
408CBE:  STR             R1, [R5,#0x50]
408CC0:  LDR.W           R1, [R6,#(dword_95AB28 - 0x95A988)]
408CC4:  STR             R5, [R1,#0x4C]
408CC6:  ADD.W           R1, R6, #0x150
408CCA:  STR             R1, [R5,#0x4C]
408CCC:  ADD.W           R1, R6, #0x1A4
408CD0:  CMP             R5, R1
408CD2:  STR.W           R5, [R6,#(dword_95AB28 - 0x95A988)]
408CD6:  BEQ             loc_408D02
408CD8:  LDR             R2, =(gMatrixList_ptr - 0x408CE4)
408CDA:  LDRD.W          R0, R1, [R5,#0x4C]
408CDE:  STR             R0, [R1,#0x4C]
408CE0:  ADD             R2, PC; gMatrixList_ptr
408CE2:  LDRD.W          R0, R1, [R5,#0x4C]
408CE6:  LDR             R2, [R2]; gMatrixList
408CE8:  STR             R1, [R0,#0x50]
408CEA:  LDR.W           R0, [R2,#(dword_95AA80 - 0x95A988)]
408CEE:  STR             R0, [R5,#0x50]
408CF0:  LDR.W           R0, [R2,#(dword_95AA80 - 0x95A988)]
408CF4:  STR             R5, [R0,#0x4C]
408CF6:  ADD.W           R0, R2, #0xA8
408CFA:  STR             R0, [R5,#0x4C]
408CFC:  MOV             R0, R5; this
408CFE:  STR.W           R5, [R2,#(dword_95AA80 - 0x95A988)]
408D02:  STR.W           R8, [R0,#0x48]
408D06:  STR.W           R0, [R8,#0x14]
408D0A:  ADD             SP, SP, #4
408D0C:  POP.W           {R8-R11}
408D10:  POP.W           {R4-R7,LR}
408D14:  B.W             j_j__ZN7CMatrix8SetUnityEv; j_CMatrix::SetUnity(void)
