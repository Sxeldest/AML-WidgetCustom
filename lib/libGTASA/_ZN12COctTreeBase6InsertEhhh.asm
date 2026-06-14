; =========================================================
; Game Engine Function: _ZN12COctTreeBase6InsertEhhh
; Address            : 0x45CA70 - 0x45CC92
; =========================================================

45CA70:  PUSH            {R4-R7,LR}
45CA72:  ADD             R7, SP, #0xC
45CA74:  PUSH.W          {R8-R11}
45CA78:  SUB             SP, SP, #0x1C
45CA7A:  MOV             R4, R0
45CA7C:  LDR             R0, =(_ZN8COctTree10ms_bFailedE_ptr - 0x45CA8A)
45CA7E:  ADD.W           R12, SP, #0x38+var_28
45CA82:  LDR.W           R8, =(dword_9ABF40 - 0x45CA90)
45CA86:  ADD             R0, PC; _ZN8COctTree10ms_bFailedE_ptr
45CA88:  STM.W           R12, {R1-R3}
45CA8C:  ADD             R8, PC; dword_9ABF40
45CA8E:  LDR             R0, [R0]; COctTree::ms_bFailed ...
45CA90:  MOV.W           R11, #0xFFFFFFFF
45CA94:  STR             R0, [SP,#0x38+var_2C]
45CA96:  LDR             R0, =(_ZN8COctTree10ms_bFailedE_ptr - 0x45CAA0)
45CA98:  LDR.W           R9, =(dword_9ABF40 - 0x45CAA8)
45CA9C:  ADD             R0, PC; _ZN8COctTree10ms_bFailedE_ptr
45CA9E:  LDR             R6, =(dword_9ABF40 - 0x45CAAC)
45CAA0:  LDR.W           R10, =(dword_9ABF40 - 0x45CAB0)
45CAA4:  ADD             R9, PC; dword_9ABF40
45CAA6:  LDR             R0, [R0]; COctTree::ms_bFailed ...
45CAA8:  ADD             R6, PC; dword_9ABF40
45CAAA:  STR             R0, [SP,#0x38+var_30]
45CAAC:  ADD             R10, PC; dword_9ABF40
45CAAE:  LDR             R0, =(_ZN8COctTree10ms_bFailedE_ptr - 0x45CAB4)
45CAB0:  ADD             R0, PC; _ZN8COctTree10ms_bFailedE_ptr
45CAB2:  LDR             R0, [R0]; COctTree::ms_bFailed ...
45CAB4:  STRD.W          R0, R4, [SP,#0x38+var_38]
45CAB8:  LDR             R0, [SP,#0x38+var_2C]
45CABA:  MOVS            R1, #0
45CABC:  ADD             R3, SP, #0x38+var_28
45CABE:  STRB            R1, [R0]
45CAC0:  LDR             R0, [R4]
45CAC2:  LDR             R5, [R0]
45CAC4:  MOV             R0, R4
45CAC6:  LDM             R3, {R1-R3}
45CAC8:  BLX             R5
45CACA:  CMP             R0, #1
45CACC:  BEQ             loc_45CBA2
45CACE:  LDR             R0, [SP,#0x38+var_30]
45CAD0:  MOVS            R5, #0
45CAD2:  LDRB            R0, [R0]
45CAD4:  CMP             R0, #0
45CAD6:  BEQ.W           loc_45CC88
45CADA:  LDR             R0, =(dword_9ABF58 - 0x45CAE0)
45CADC:  ADD             R0, PC; dword_9ABF58
45CADE:  STR             R5, [R0]
45CAE0:  MOV             R0, R4; this
45CAE2:  BLX             j__ZN8COctTree10ReduceTreeEv; COctTree::ReduceTree(void)
45CAE6:  LDR             R0, =(dword_9ABF58 - 0x45CAF0)
45CAE8:  MOV             R12, R4
45CAEA:  MOVS            R3, #1
45CAEC:  ADD             R0, PC; dword_9ABF58
45CAEE:  LDR             R4, [R0]
45CAF0:  LDRH.W          R0, [R4,#0xA]!
45CAF4:  LDRH            R1, [R4,#2]
45CAF6:  LDRH            R2, [R4,#4]
45CAF8:  EOR.W           R0, R3, R0,LSR#15
45CAFC:  EOR.W           R1, R3, R1,LSR#15
45CB00:  ADD             R0, R1
45CB02:  EOR.W           R1, R3, R2,LSR#15
45CB06:  LDRH            R2, [R4,#6]
45CB08:  ADD             R0, R1
45CB0A:  EOR.W           R1, R3, R2,LSR#15
45CB0E:  LDRH            R2, [R4,#8]
45CB10:  ADD             R0, R1
45CB12:  EOR.W           R1, R3, R2,LSR#15
45CB16:  LDRH            R2, [R4,#0xA]
45CB18:  ADD             R0, R1
45CB1A:  EOR.W           R1, R3, R2,LSR#15
45CB1E:  LDRH            R2, [R4,#0xC]
45CB20:  ADD             R0, R1
45CB22:  EOR.W           R1, R3, R2,LSR#15
45CB26:  LDR.W           R2, [R12,#0x28]
45CB2A:  ADD             R1, R2
45CB2C:  LDRH            R2, [R4,#0xE]
45CB2E:  UXTAH.W         R0, R1, R0
45CB32:  EOR.W           R1, R3, R2,LSR#15
45CB36:  ADD             R0, R1
45CB38:  SUBS            R0, #1
45CB3A:  STR.W           R0, [R12,#0x28]
45CB3E:  STRB.W          R3, [R4,#-2]
45CB42:  LDRSH.W         R0, [R4,R5,LSL#1]
45CB46:  CMP             R0, R11
45CB48:  BLE             loc_45CB8E
45CB4A:  LDR.W           R1, [R8,#(dword_9ABF44 - 0x9ABF40)]
45CB4E:  LDRSB           R1, [R1,R0]
45CB50:  CMP             R1, #0
45CB52:  BLT             loc_45CB8A
45CB54:  LDR.W           R1, [R9]
45CB58:  ADD.W           R0, R0, R0,LSL#2
45CB5C:  ADD.W           R0, R1, R0,LSL#3; this
45CB60:  CBZ             R0, loc_45CB8A
45CB62:  BLX             j__ZN8COctTreeD2Ev; COctTree::~COctTree()
45CB66:  LDRD.W          R1, R2, [R6]
45CB6A:  SUBS            R0, R0, R1
45CB6C:  MOV             R1, #0xCCCCCCCD
45CB74:  ASRS            R0, R0, #3
45CB76:  MULS            R0, R1
45CB78:  LDRB            R1, [R2,R0]
45CB7A:  ORR.W           R1, R1, #0x80
45CB7E:  STRB            R1, [R2,R0]
45CB80:  LDR             R1, [R6,#(dword_9ABF4C - 0x9ABF40)]
45CB82:  CMP             R0, R1
45CB84:  IT LT
45CB86:  STRLT.W         R0, [R10,#(dword_9ABF4C - 0x9ABF40)]
45CB8A:  STRH.W          R11, [R4,R5,LSL#1]
45CB8E:  ADDS            R5, #1
45CB90:  CMP             R5, #8
45CB92:  BNE             loc_45CB42
45CB94:  LDR             R0, [SP,#0x38+var_38]
45CB96:  LDR             R4, [SP,#0x38+var_34]
45CB98:  LDRB            R0, [R0]
45CB9A:  CMP             R0, #0
45CB9C:  BNE             loc_45CAB8
45CB9E:  MOVS            R5, #0
45CBA0:  B               loc_45CC88
45CBA2:  LDR             R0, [R4,#0x28]
45CBA4:  MOVS            R5, #1
45CBA6:  CMP             R0, #0
45CBA8:  BGT             loc_45CC88
45CBAA:  LDR.W           R8, =(dword_9ABF58 - 0x45CBB8)
45CBAE:  MOV             R9, R4
45CBB0:  MOV             R0, R9; this
45CBB2:  MOVS            R4, #0
45CBB4:  ADD             R8, PC; dword_9ABF58
45CBB6:  STR.W           R4, [R8]
45CBBA:  BLX             j__ZN8COctTree10ReduceTreeEv; COctTree::ReduceTree(void)
45CBBE:  LDR.W           R8, [R8]
45CBC2:  LDR.W           R10, =(dword_9ABF40 - 0x45CBD0)
45CBC6:  LDR             R6, =(dword_9ABF40 - 0x45CBD2)
45CBC8:  LDRH.W          R0, [R8,#0xA]!
45CBCC:  ADD             R10, PC; dword_9ABF40
45CBCE:  ADD             R6, PC; dword_9ABF40
45CBD0:  LDRH.W          R1, [R8,#2]
45CBD4:  LDRH.W          R2, [R8,#4]
45CBD8:  EOR.W           R0, R5, R0,LSR#15
45CBDC:  EOR.W           R1, R5, R1,LSR#15
45CBE0:  ADD             R0, R1
45CBE2:  EOR.W           R1, R5, R2,LSR#15
45CBE6:  LDRH.W          R2, [R8,#6]
45CBEA:  ADD             R0, R1
45CBEC:  EOR.W           R1, R5, R2,LSR#15
45CBF0:  LDRH.W          R2, [R8,#8]
45CBF4:  ADD             R0, R1
45CBF6:  EOR.W           R1, R5, R2,LSR#15
45CBFA:  LDRH.W          R2, [R8,#0xA]
45CBFE:  ADD             R0, R1
45CC00:  EOR.W           R1, R5, R2,LSR#15
45CC04:  LDRH.W          R2, [R8,#0xC]
45CC08:  ADD             R0, R1
45CC0A:  EOR.W           R1, R5, R2,LSR#15
45CC0E:  LDR.W           R2, [R9,#0x28]
45CC12:  ADD             R1, R2
45CC14:  LDRH.W          R2, [R8,#0xE]
45CC18:  UXTAH.W         R0, R1, R0
45CC1C:  EOR.W           R1, R5, R2,LSR#15
45CC20:  ADD             R0, R1
45CC22:  SUBS            R0, #1
45CC24:  STR.W           R0, [R9,#0x28]
45CC28:  LDR.W           R9, =(dword_9ABF40 - 0x45CC36)
45CC2C:  STRB.W          R5, [R8,#-2]
45CC30:  LDR             R5, =(dword_9ABF40 - 0x45CC38)
45CC32:  ADD             R9, PC; dword_9ABF40
45CC34:  ADD             R5, PC; dword_9ABF40
45CC36:  LDRSH.W         R0, [R8,R4,LSL#1]
45CC3A:  CMP             R0, R11
45CC3C:  BLE             loc_45CC80
45CC3E:  LDR             R1, [R5,#(dword_9ABF44 - 0x9ABF40)]
45CC40:  LDRSB           R1, [R1,R0]
45CC42:  CMP             R1, #0
45CC44:  BLT             loc_45CC7C
45CC46:  LDR.W           R1, [R9]
45CC4A:  ADD.W           R0, R0, R0,LSL#2
45CC4E:  ADD.W           R0, R1, R0,LSL#3; this
45CC52:  CBZ             R0, loc_45CC7C
45CC54:  BLX             j__ZN8COctTreeD2Ev; COctTree::~COctTree()
45CC58:  LDRD.W          R1, R2, [R10]
45CC5C:  SUBS            R0, R0, R1
45CC5E:  MOV             R1, #0xCCCCCCCD
45CC66:  ASRS            R0, R0, #3
45CC68:  MULS            R0, R1
45CC6A:  LDRB            R1, [R2,R0]
45CC6C:  ORR.W           R1, R1, #0x80
45CC70:  STRB            R1, [R2,R0]
45CC72:  LDR.W           R1, [R10,#(dword_9ABF4C - 0x9ABF40)]
45CC76:  CMP             R0, R1
45CC78:  IT LT
45CC7A:  STRLT           R0, [R6,#(dword_9ABF4C - 0x9ABF40)]
45CC7C:  STRH.W          R11, [R8,R4,LSL#1]
45CC80:  ADDS            R4, #1
45CC82:  CMP             R4, #8
45CC84:  BNE             loc_45CC36
45CC86:  MOVS            R5, #1
45CC88:  MOV             R0, R5
45CC8A:  ADD             SP, SP, #0x1C
45CC8C:  POP.W           {R8-R11}
45CC90:  POP             {R4-R7,PC}
