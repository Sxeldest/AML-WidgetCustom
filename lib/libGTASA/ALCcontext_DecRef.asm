; =========================================================
; Game Engine Function: ALCcontext_DecRef
; Address            : 0x23DAC8 - 0x23DDA4
; =========================================================

23DAC8:  PUSH            {R4-R7,LR}
23DACA:  ADD             R7, SP, #0xC
23DACC:  PUSH.W          {R8}
23DAD0:  SUB             SP, SP, #8
23DAD2:  MOV             R8, R0
23DAD4:  DMB.W           ISH
23DAD8:  LDREX.W         R0, [R8]
23DADC:  SUBS            R5, R0, #1
23DADE:  STREX.W         R0, R5, [R8]
23DAE2:  CMP             R0, #0
23DAE4:  BNE             loc_23DAD8
23DAE6:  LDR             R0, =(LogLevel_ptr - 0x23DAF0)
23DAE8:  DMB.W           ISH
23DAEC:  ADD             R0, PC; LogLevel_ptr
23DAEE:  LDR             R0, [R0]; LogLevel
23DAF0:  LDR             R0, [R0]
23DAF2:  CMP             R0, #4
23DAF4:  BCC             loc_23DB08
23DAF6:  LDR             R0, =(asc_5F59DF - 0x23DB02); "(--)"
23DAF8:  ADR             R1, aAlccontextDecr_0; "ALCcontext_DecRef"
23DAFA:  LDR             R2, =(aPDecreasingRef - 0x23DB06); "%p decreasing refcount to %u\n"
23DAFC:  MOV             R3, R8
23DAFE:  ADD             R0, PC; "(--)"
23DB00:  STR             R5, [SP,#0x18+var_18]
23DB02:  ADD             R2, PC; "%p decreasing refcount to %u\n"
23DB04:  BLX             j_al_print
23DB08:  CMP             R5, #0
23DB0A:  ITTT NE
23DB0C:  ADDNE           SP, SP, #8
23DB0E:  POPNE.W         {R8}
23DB12:  POPNE           {R4-R7,PC}
23DB14:  LDR             R0, =(LogLevel_ptr - 0x23DB1A)
23DB16:  ADD             R0, PC; LogLevel_ptr
23DB18:  LDR             R0, [R0]; LogLevel
23DB1A:  LDR             R0, [R0]
23DB1C:  CMP             R0, #3
23DB1E:  BCC             loc_23DB2E
23DB20:  LDR             R0, =(aIi - 0x23DB2C); "(II)"
23DB22:  ADR             R1, aFreecontext; "FreeContext"
23DB24:  ADR             R2, aP; "%p\n"
23DB26:  MOV             R3, R8
23DB28:  ADD             R0, PC; "(II)"
23DB2A:  BLX             j_al_print
23DB2E:  LDR.W           R1, [R8,#0xC]
23DB32:  CMP             R1, #1
23DB34:  BLT             loc_23DB58
23DB36:  LDR             R0, =(LogLevel_ptr - 0x23DB3C)
23DB38:  ADD             R0, PC; LogLevel_ptr
23DB3A:  LDR             R0, [R0]; LogLevel
23DB3C:  LDR             R0, [R0]
23DB3E:  CMP             R0, #2
23DB40:  BCC             loc_23DB52
23DB42:  LDR             R0, =(aWw - 0x23DB4E); "(WW)"
23DB44:  ADR             R2, aPDeletingDSour; "(%p) Deleting %d Source(s)\n"
23DB46:  STR             R1, [SP,#0x18+var_18]
23DB48:  ADR             R1, aFreecontext; "FreeContext"
23DB4A:  ADD             R0, PC; "(WW)"
23DB4C:  MOV             R3, R8
23DB4E:  BLX             j_al_print
23DB52:  MOV             R0, R8
23DB54:  BLX             j_ReleaseALSources
23DB58:  ADD.W           R5, R8, #0x1C
23DB5C:  DMB.W           ISH
23DB60:  LDREX.W         R0, [R5]
23DB64:  ADDS            R1, R0, #1
23DB66:  STREX.W         R2, R1, [R5]
23DB6A:  CMP             R2, #0
23DB6C:  BNE             loc_23DB60
23DB6E:  CMP             R0, #0
23DB70:  DMB.W           ISH
23DB74:  BNE             loc_23DBB2
23DB76:  ADD.W           R6, R8, #0x20 ; ' '
23DB7A:  MOVS            R1, #1
23DB7C:  DMB.W           ISH
23DB80:  LDREX.W         R0, [R6]
23DB84:  STREX.W         R2, R1, [R6]
23DB88:  CMP             R2, #0
23DB8A:  BNE             loc_23DB80
23DB8C:  CMP             R0, #1
23DB8E:  DMB.W           ISH
23DB92:  BNE             loc_23DBB2
23DB94:  MOVS            R4, #1
23DB96:  BLX             sched_yield
23DB9A:  DMB.W           ISH
23DB9E:  LDREX.W         R0, [R6]
23DBA2:  STREX.W         R1, R4, [R6]
23DBA6:  CMP             R1, #0
23DBA8:  BNE             loc_23DB9E
23DBAA:  CMP             R0, #1
23DBAC:  DMB.W           ISH
23DBB0:  BEQ             loc_23DB96
23DBB2:  ADD.W           R6, R8, #0x28 ; '('
23DBB6:  MOVS            R1, #1
23DBB8:  DMB.W           ISH
23DBBC:  LDREX.W         R0, [R6]
23DBC0:  STREX.W         R2, R1, [R6]
23DBC4:  CMP             R2, #0
23DBC6:  BNE             loc_23DBBC
23DBC8:  CMP             R0, #1
23DBCA:  DMB.W           ISH
23DBCE:  BNE             loc_23DBEE
23DBD0:  MOVS            R4, #1
23DBD2:  BLX             sched_yield
23DBD6:  DMB.W           ISH
23DBDA:  LDREX.W         R0, [R6]
23DBDE:  STREX.W         R1, R4, [R6]
23DBE2:  CMP             R1, #0
23DBE4:  BNE             loc_23DBDA
23DBE6:  CMP             R0, #1
23DBE8:  DMB.W           ISH
23DBEC:  BEQ             loc_23DBD2
23DBEE:  LDR.W           R0, [R8,#8]; p
23DBF2:  BLX             free
23DBF6:  MOVS            R0, #0
23DBF8:  STRD.W          R0, R0, [R8,#8]
23DBFC:  STR.W           R0, [R8,#0x10]
23DC00:  DMB.W           ISH
23DC04:  LDREX.W         R1, [R6]
23DC08:  STREX.W         R1, R0, [R6]
23DC0C:  CMP             R1, #0
23DC0E:  BNE             loc_23DC04
23DC10:  DMB.W           ISH
23DC14:  DMB.W           ISH
23DC18:  LDREX.W         R0, [R5]
23DC1C:  SUBS            R1, R0, #1
23DC1E:  STREX.W         R2, R1, [R5]
23DC22:  CMP             R2, #0
23DC24:  BNE             loc_23DC18
23DC26:  CMP             R0, #1
23DC28:  DMB.W           ISH
23DC2C:  BNE             loc_23DC48
23DC2E:  ADD.W           R0, R8, #0x20 ; ' '
23DC32:  MOVS            R1, #0
23DC34:  DMB.W           ISH
23DC38:  LDREX.W         R2, [R0]
23DC3C:  STREX.W         R2, R1, [R0]
23DC40:  CMP             R2, #0
23DC42:  BNE             loc_23DC38
23DC44:  DMB.W           ISH
23DC48:  LDR.W           R1, [R8,#0x30]
23DC4C:  CMP             R1, #1
23DC4E:  BLT             loc_23DC72
23DC50:  LDR             R0, =(LogLevel_ptr - 0x23DC56)
23DC52:  ADD             R0, PC; LogLevel_ptr
23DC54:  LDR             R0, [R0]; LogLevel
23DC56:  LDR             R0, [R0]
23DC58:  CMP             R0, #2
23DC5A:  BCC             loc_23DC6C
23DC5C:  LDR             R0, =(aWw - 0x23DC68); "(WW)"
23DC5E:  ADR             R2, aPDeletingDAuxi; "(%p) Deleting %d AuxiliaryEffectSlot(s)"...
23DC60:  STR             R1, [SP,#0x18+var_18]
23DC62:  ADR             R1, aFreecontext; "FreeContext"
23DC64:  ADD             R0, PC; "(WW)"
23DC66:  MOV             R3, R8
23DC68:  BLX             j_al_print
23DC6C:  MOV             R0, R8
23DC6E:  BLX             j_ReleaseALAuxiliaryEffectSlots
23DC72:  ADD.W           R5, R8, #0x40 ; '@'
23DC76:  DMB.W           ISH
23DC7A:  LDREX.W         R0, [R5]
23DC7E:  ADDS            R1, R0, #1
23DC80:  STREX.W         R2, R1, [R5]
23DC84:  CMP             R2, #0
23DC86:  BNE             loc_23DC7A
23DC88:  CMP             R0, #0
23DC8A:  DMB.W           ISH
23DC8E:  BNE             loc_23DCCC
23DC90:  ADD.W           R6, R8, #0x44 ; 'D'
23DC94:  MOVS            R1, #1
23DC96:  DMB.W           ISH
23DC9A:  LDREX.W         R0, [R6]
23DC9E:  STREX.W         R2, R1, [R6]
23DCA2:  CMP             R2, #0
23DCA4:  BNE             loc_23DC9A
23DCA6:  CMP             R0, #1
23DCA8:  DMB.W           ISH
23DCAC:  BNE             loc_23DCCC
23DCAE:  MOVS            R4, #1
23DCB0:  BLX             sched_yield
23DCB4:  DMB.W           ISH
23DCB8:  LDREX.W         R0, [R6]
23DCBC:  STREX.W         R1, R4, [R6]
23DCC0:  CMP             R1, #0
23DCC2:  BNE             loc_23DCB8
23DCC4:  CMP             R0, #1
23DCC6:  DMB.W           ISH
23DCCA:  BEQ             loc_23DCB0
23DCCC:  ADD.W           R6, R8, #0x4C ; 'L'
23DCD0:  MOVS            R1, #1
23DCD2:  DMB.W           ISH
23DCD6:  LDREX.W         R0, [R6]
23DCDA:  STREX.W         R2, R1, [R6]
23DCDE:  CMP             R2, #0
23DCE0:  BNE             loc_23DCD6
23DCE2:  CMP             R0, #1
23DCE4:  DMB.W           ISH
23DCE8:  BNE             loc_23DD08
23DCEA:  MOVS            R4, #1
23DCEC:  BLX             sched_yield
23DCF0:  DMB.W           ISH
23DCF4:  LDREX.W         R0, [R6]
23DCF8:  STREX.W         R1, R4, [R6]
23DCFC:  CMP             R1, #0
23DCFE:  BNE             loc_23DCF4
23DD00:  CMP             R0, #1
23DD02:  DMB.W           ISH
23DD06:  BEQ             loc_23DCEC
23DD08:  LDR.W           R0, [R8,#0x2C]; p
23DD0C:  BLX             free
23DD10:  MOVS            R0, #0
23DD12:  STRD.W          R0, R0, [R8,#0x2C]
23DD16:  STR.W           R0, [R8,#0x34]
23DD1A:  DMB.W           ISH
23DD1E:  LDREX.W         R1, [R6]
23DD22:  STREX.W         R1, R0, [R6]
23DD26:  CMP             R1, #0
23DD28:  BNE             loc_23DD1E
23DD2A:  DMB.W           ISH
23DD2E:  DMB.W           ISH
23DD32:  LDREX.W         R0, [R5]
23DD36:  SUBS            R1, R0, #1
23DD38:  STREX.W         R2, R1, [R5]
23DD3C:  CMP             R2, #0
23DD3E:  BNE             loc_23DD32
23DD40:  CMP             R0, #1
23DD42:  DMB.W           ISH
23DD46:  BNE             loc_23DD62
23DD48:  ADD.W           R0, R8, #0x44 ; 'D'
23DD4C:  MOVS            R1, #0
23DD4E:  DMB.W           ISH
23DD52:  LDREX.W         R2, [R0]
23DD56:  STREX.W         R2, R1, [R0]
23DD5A:  CMP             R2, #0
23DD5C:  BNE             loc_23DD52
23DD5E:  DMB.W           ISH
23DD62:  LDR.W           R0, [R8,#0x70]; p
23DD66:  MOVS            R4, #0
23DD68:  STR.W           R4, [R8,#0x74]
23DD6C:  BLX             free
23DD70:  LDR.W           R0, [R8,#0x7C]; p
23DD74:  STR.W           R4, [R8,#0x78]
23DD78:  STR.W           R4, [R8,#0x70]
23DD7C:  STR.W           R4, [R8,#0x80]
23DD80:  BLX             free
23DD84:  LDR.W           R0, [R8,#0x88]
23DD88:  STR.W           R4, [R8,#0x84]
23DD8C:  STR.W           R4, [R8,#0x7C]
23DD90:  BLX             j_ALCdevice_DecRef
23DD94:  MOV             R0, R8; p
23DD96:  ADD             SP, SP, #8
23DD98:  POP.W           {R8}
23DD9C:  POP.W           {R4-R7,LR}
23DDA0:  B.W             j_free
