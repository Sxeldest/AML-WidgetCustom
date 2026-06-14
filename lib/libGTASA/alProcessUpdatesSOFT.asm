; =========================================================
; Game Engine Function: alProcessUpdatesSOFT
; Address            : 0x25DBAC - 0x25DDC8
; =========================================================

25DBAC:  PUSH            {R4-R7,LR}
25DBAE:  ADD             R7, SP, #0xC
25DBB0:  PUSH.W          {R8-R11}
25DBB4:  SUB             SP, SP, #4
25DBB6:  BLX             j_GetContextRef
25DBBA:  MOV             R9, R0
25DBBC:  CMP.W           R9, #0
25DBC0:  BEQ.W           loc_25DDC0
25DBC4:  ADD.W           R0, R9, #0x6C ; 'l'
25DBC8:  MOVS            R2, #0
25DBCA:  DMB.W           ISH
25DBCE:  LDREX.W         R1, [R0]
25DBD2:  STREX.W         R3, R2, [R0]
25DBD6:  CMP             R3, #0
25DBD8:  BNE             loc_25DBCE
25DBDA:  CMP             R1, #0
25DBDC:  DMB.W           ISH
25DBE0:  BEQ.W           loc_25DDB0
25DBE4:  LDR.W           R0, [R9,#0x88]
25DBE8:  MOV             R1, #0x161AC
25DBF0:  LDR             R1, [R0,R1]
25DBF2:  LDR             R1, [R1,#0x2C]
25DBF4:  BLX             R1
25DBF6:  ADD.W           R5, R9, #0x24 ; '$'
25DBFA:  MOVS            R1, #1
25DBFC:  DMB.W           ISH
25DC00:  LDREX.W         R0, [R5]
25DC04:  STREX.W         R2, R1, [R5]
25DC08:  CMP             R2, #0
25DC0A:  BNE             loc_25DC00
25DC0C:  CMP             R0, #1
25DC0E:  DMB.W           ISH
25DC12:  BNE             loc_25DC32
25DC14:  MOVS            R4, #1
25DC16:  BLX             sched_yield
25DC1A:  DMB.W           ISH
25DC1E:  LDREX.W         R0, [R5]
25DC22:  STREX.W         R1, R4, [R5]
25DC26:  CMP             R1, #0
25DC28:  BNE             loc_25DC1E
25DC2A:  CMP             R0, #1
25DC2C:  DMB.W           ISH
25DC30:  BEQ             loc_25DC16
25DC32:  ADD.W           R4, R9, #0x20 ; ' '
25DC36:  MOVS            R1, #1
25DC38:  DMB.W           ISH
25DC3C:  LDREX.W         R0, [R4]
25DC40:  STREX.W         R2, R1, [R4]
25DC44:  CMP             R2, #0
25DC46:  BNE             loc_25DC3C
25DC48:  CMP             R0, #1
25DC4A:  DMB.W           ISH
25DC4E:  BNE             loc_25DC6E
25DC50:  MOVS            R6, #1
25DC52:  BLX             sched_yield
25DC56:  DMB.W           ISH
25DC5A:  LDREX.W         R0, [R4]
25DC5E:  STREX.W         R1, R6, [R4]
25DC62:  CMP             R1, #0
25DC64:  BNE             loc_25DC5A
25DC66:  CMP             R0, #1
25DC68:  DMB.W           ISH
25DC6C:  BEQ             loc_25DC52
25DC6E:  ADD.W           R11, R9, #0x18
25DC72:  DMB.W           ISH
25DC76:  LDREX.W         R0, [R11]
25DC7A:  ADDS            R1, R0, #1
25DC7C:  STREX.W         R2, R1, [R11]
25DC80:  CMP             R2, #0
25DC82:  BNE             loc_25DC76
25DC84:  CMP             R0, #0
25DC86:  DMB.W           ISH
25DC8A:  BNE             loc_25DCCA
25DC8C:  ADD.W           R6, R9, #0x28 ; '('
25DC90:  MOVS            R1, #1
25DC92:  DMB.W           ISH
25DC96:  LDREX.W         R0, [R6]
25DC9A:  STREX.W         R2, R1, [R6]
25DC9E:  CMP             R2, #0
25DCA0:  BNE             loc_25DC96
25DCA2:  CMP             R0, #1
25DCA4:  DMB.W           ISH
25DCA8:  BNE             loc_25DCCA
25DCAA:  MOV.W           R8, #1
25DCAE:  BLX             sched_yield
25DCB2:  DMB.W           ISH
25DCB6:  LDREX.W         R0, [R6]
25DCBA:  STREX.W         R1, R8, [R6]
25DCBE:  CMP             R1, #0
25DCC0:  BNE             loc_25DCB6
25DCC2:  CMP             R0, #1
25DCC4:  DMB.W           ISH
25DCC8:  BEQ             loc_25DCAE
25DCCA:  MOVS            R0, #0
25DCCC:  DMB.W           ISH
25DCD0:  LDREX.W         R1, [R4]
25DCD4:  STREX.W         R1, R0, [R4]
25DCD8:  CMP             R1, #0
25DCDA:  BNE             loc_25DCD0
25DCDC:  DMB.W           ISH
25DCE0:  MOVS            R0, #0
25DCE2:  DMB.W           ISH
25DCE6:  LDREX.W         R1, [R5]
25DCEA:  STREX.W         R1, R0, [R5]
25DCEE:  CMP             R1, #0
25DCF0:  BNE             loc_25DCE6
25DCF2:  DMB.W           ISH
25DCF6:  LDR.W           R0, [R9,#0xC]
25DCFA:  CMP             R0, #1
25DCFC:  BLT             loc_25DD6A
25DCFE:  MOVS            R4, #0
25DD00:  MOVW            R10, #0x1012
25DD04:  MOVW            R6, #0x1013
25DD08:  MOV.W           R8, #0
25DD0C:  LDR.W           R0, [R9,#8]
25DD10:  ADD.W           R0, R0, R8,LSL#3
25DD14:  LDR             R5, [R0,#4]
25DD16:  LDR.W           R0, [R5,#0x80]
25DD1A:  CMP             R0, R10
25DD1C:  ITT NE
25DD1E:  LDRNE.W         R0, [R5,#0x80]
25DD22:  CMPNE           R0, R6
25DD24:  BNE             loc_25DD3A
25DD26:  VLDR            D16, [R5,#0x70]
25DD2A:  VCMPE.F64       D16, #0.0
25DD2E:  VMRS            APSR_nzcv, FPSCR
25DD32:  ITT GE
25DD34:  MOVGE           R0, R5
25DD36:  BLXGE           j_ApplyOffset
25DD3A:  ADD.W           R0, R5, #0x84
25DD3E:  DMB.W           ISH
25DD42:  LDREX.W         R2, [R0]
25DD46:  STREX.W         R1, R4, [R0]
25DD4A:  CMP             R1, #0
25DD4C:  BNE             loc_25DD42
25DD4E:  CMP             R2, #0
25DD50:  DMB.W           ISH
25DD54:  ITTT NE
25DD56:  MOVNE           R0, R5
25DD58:  MOVNE           R1, R9
25DD5A:  BLXNE           j_SetSourceState
25DD5E:  LDR.W           R0, [R9,#0xC]
25DD62:  ADD.W           R8, R8, #1
25DD66:  CMP             R8, R0
25DD68:  BLT             loc_25DD0C
25DD6A:  DMB.W           ISH
25DD6E:  LDREX.W         R0, [R11]
25DD72:  SUBS            R1, R0, #1
25DD74:  STREX.W         R2, R1, [R11]
25DD78:  CMP             R2, #0
25DD7A:  BNE             loc_25DD6E
25DD7C:  CMP             R0, #1
25DD7E:  DMB.W           ISH
25DD82:  BNE             loc_25DD9E
25DD84:  ADD.W           R0, R9, #0x28 ; '('
25DD88:  MOVS            R1, #0
25DD8A:  DMB.W           ISH
25DD8E:  LDREX.W         R2, [R0]
25DD92:  STREX.W         R2, R1, [R0]
25DD96:  CMP             R2, #0
25DD98:  BNE             loc_25DD8E
25DD9A:  DMB.W           ISH
25DD9E:  LDR.W           R0, [R9,#0x88]
25DDA2:  MOV             R1, #0x161AC
25DDAA:  LDR             R1, [R0,R1]
25DDAC:  LDR             R1, [R1,#0x30]
25DDAE:  BLX             R1
25DDB0:  MOV             R0, R9
25DDB2:  ADD             SP, SP, #4
25DDB4:  POP.W           {R8-R11}
25DDB8:  POP.W           {R4-R7,LR}
25DDBC:  B.W             ALCcontext_DecRef
25DDC0:  ADD             SP, SP, #4
25DDC2:  POP.W           {R8-R11}
25DDC6:  POP             {R4-R7,PC}
