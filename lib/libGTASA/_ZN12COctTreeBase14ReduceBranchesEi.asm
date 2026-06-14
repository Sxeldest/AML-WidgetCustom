; =========================================================
; Game Engine Function: _ZN12COctTreeBase14ReduceBranchesEi
; Address            : 0x45CCCC - 0x45CDE0
; =========================================================

45CCCC:  PUSH            {R4-R7,LR}
45CCCE:  ADD             R7, SP, #0xC
45CCD0:  PUSH.W          {R8-R11}
45CCD4:  SUB             SP, SP, #0xC
45CCD6:  MOV             R6, R0
45CCD8:  LDRD.W          R0, R2, [R6,#0x28]
45CCDC:  CMP             R2, #0
45CCDE:  IT NE
45CCE0:  ADDNE           R1, #1
45CCE2:  CMP             R0, R1
45CCE4:  STR             R1, [SP,#0x28+var_20]
45CCE6:  BGE             loc_45CDD8
45CCE8:  LDR             R5, =(dword_9ABF40 - 0x45CCFA)
45CCEA:  MOV.W           R4, #0xFFFFFFFF
45CCEE:  LDR.W           R11, =(dword_9ABF40 - 0x45CCFC)
45CCF2:  LDR.W           R8, =(dword_9ABF40 - 0x45CD00)
45CCF6:  ADD             R5, PC; dword_9ABF40
45CCF8:  ADD             R11, PC; dword_9ABF40
45CCFA:  STR             R6, [SP,#0x28+var_24]
45CCFC:  ADD             R8, PC; dword_9ABF40
45CCFE:  LDR             R0, =(dword_9ABF58 - 0x45CD08)
45CD00:  MOV.W           R9, #0
45CD04:  ADD             R0, PC; dword_9ABF58
45CD06:  MOV             R10, R0
45CD08:  MOV             R0, R6; this
45CD0A:  STR.W           R9, [R10]
45CD0E:  BLX             j__ZN8COctTree10ReduceTreeEv; COctTree::ReduceTree(void)
45CD12:  LDR.W           R10, [R10]
45CD16:  MOV             R3, R6
45CD18:  MOVS            R6, #1
45CD1A:  LDRH.W          R0, [R10,#0xA]!
45CD1E:  LDRH.W          R1, [R10,#2]
45CD22:  LDRH.W          R2, [R10,#4]
45CD26:  EOR.W           R0, R6, R0,LSR#15
45CD2A:  EOR.W           R1, R6, R1,LSR#15
45CD2E:  ADD             R0, R1
45CD30:  EOR.W           R1, R6, R2,LSR#15
45CD34:  LDRH.W          R2, [R10,#6]
45CD38:  ADD             R0, R1
45CD3A:  EOR.W           R1, R6, R2,LSR#15
45CD3E:  LDRH.W          R2, [R10,#8]
45CD42:  ADD             R0, R1
45CD44:  EOR.W           R1, R6, R2,LSR#15
45CD48:  LDRH.W          R2, [R10,#0xA]
45CD4C:  ADD             R0, R1
45CD4E:  EOR.W           R1, R6, R2,LSR#15
45CD52:  LDRH.W          R2, [R10,#0xC]
45CD56:  ADD             R0, R1
45CD58:  EOR.W           R1, R6, R2,LSR#15
45CD5C:  LDR             R2, [R3,#0x28]
45CD5E:  ADD             R1, R2
45CD60:  LDRH.W          R2, [R10,#0xE]
45CD64:  UXTAH.W         R0, R1, R0
45CD68:  EOR.W           R1, R6, R2,LSR#15
45CD6C:  ADD             R0, R1
45CD6E:  SUBS            R0, #1
45CD70:  STR             R0, [R3,#0x28]
45CD72:  STRB.W          R6, [R10,#-2]
45CD76:  MOV             R6, #0xCCCCCCCD
45CD7E:  LDRSH.W         R0, [R10,R9,LSL#1]
45CD82:  CMP             R0, R4
45CD84:  BLE             loc_45CDC4
45CD86:  LDR             R1, [R5,#(dword_9ABF44 - 0x9ABF40)]
45CD88:  LDRSB           R1, [R1,R0]
45CD8A:  CMP             R1, #0
45CD8C:  BLT             loc_45CDC0
45CD8E:  LDR.W           R1, [R11]
45CD92:  ADD.W           R0, R0, R0,LSL#2
45CD96:  ADD.W           R0, R1, R0,LSL#3; this
45CD9A:  CBZ             R0, loc_45CDC0
45CD9C:  BLX             j__ZN8COctTreeD2Ev; COctTree::~COctTree()
45CDA0:  LDRD.W          R1, R2, [R8]
45CDA4:  SUBS            R0, R0, R1
45CDA6:  ASRS            R0, R0, #3
45CDA8:  MULS            R0, R6
45CDAA:  LDRB            R1, [R2,R0]
45CDAC:  ORR.W           R1, R1, #0x80
45CDB0:  STRB            R1, [R2,R0]
45CDB2:  LDR.W           R1, [R8,#(dword_9ABF4C - 0x9ABF40)]
45CDB6:  CMP             R0, R1
45CDB8:  BGE             loc_45CDC0
45CDBA:  LDR             R1, =(dword_9ABF40 - 0x45CDC0)
45CDBC:  ADD             R1, PC; dword_9ABF40
45CDBE:  STR             R0, [R1,#(dword_9ABF4C - 0x9ABF40)]
45CDC0:  STRH.W          R4, [R10,R9,LSL#1]
45CDC4:  ADD.W           R9, R9, #1
45CDC8:  CMP.W           R9, #8
45CDCC:  BNE             loc_45CD7E
45CDCE:  LDR             R6, [SP,#0x28+var_24]
45CDD0:  LDR             R1, [SP,#0x28+var_20]
45CDD2:  LDR             R0, [R6,#0x28]
45CDD4:  CMP             R0, R1
45CDD6:  BLT             loc_45CCFE
45CDD8:  ADD             SP, SP, #0xC
45CDDA:  POP.W           {R8-R11}
45CDDE:  POP             {R4-R7,PC}
