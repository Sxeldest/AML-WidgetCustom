; =========================================================
; Game Engine Function: alGetFilteriv
; Address            : 0x254D28 - 0x254E00
; =========================================================

254D28:  PUSH            {R4-R7,LR}
254D2A:  ADD             R7, SP, #0xC
254D2C:  PUSH.W          {R8}
254D30:  MOV             R6, R0
254D32:  MOV             R8, R2
254D34:  MOV             R5, R1
254D36:  MOVW            R0, #0x8001
254D3A:  CMP             R5, R0
254D3C:  BNE             loc_254D5C
254D3E:  BLX             j_GetContextRef
254D42:  MOV             R4, R0
254D44:  CBZ             R4, loc_254D7E
254D46:  LDR.W           R0, [R4,#0x88]
254D4A:  MOV             R1, R6
254D4C:  ADDS            R0, #0x88
254D4E:  BLX             j_LookupUIntMapKey
254D52:  CBZ             R0, loc_254D84
254D54:  LDR             R0, [R0]
254D56:  STR.W           R0, [R8]
254D5A:  B               loc_254DF2
254D5C:  BLX             j_GetContextRef
254D60:  MOV             R4, R0
254D62:  CBZ             R4, loc_254D7E
254D64:  LDR.W           R0, [R4,#0x88]
254D68:  MOV             R1, R6
254D6A:  ADDS            R0, #0x88
254D6C:  BLX             j_LookupUIntMapKey
254D70:  CBZ             R0, loc_254DB8
254D72:  LDR             R6, [R0,#0x20]
254D74:  MOV             R1, R4
254D76:  MOV             R2, R5
254D78:  MOV             R3, R8
254D7A:  BLX             R6
254D7C:  B               loc_254DF2
254D7E:  POP.W           {R8}
254D82:  POP             {R4-R7,PC}
254D84:  LDR             R0, =(TrapALError_ptr - 0x254D8A)
254D86:  ADD             R0, PC; TrapALError_ptr
254D88:  LDR             R0, [R0]; TrapALError
254D8A:  LDRB            R0, [R0]
254D8C:  CMP             R0, #0
254D8E:  ITT NE
254D90:  MOVNE           R0, #5; sig
254D92:  BLXNE           raise
254D96:  LDREX.W         R0, [R4,#0x50]
254D9A:  CBNZ            R0, loc_254DEA
254D9C:  ADD.W           R0, R4, #0x50 ; 'P'
254DA0:  MOVW            R1, #0xA001
254DA4:  DMB.W           ISH
254DA8:  STREX.W         R2, R1, [R0]
254DAC:  CBZ             R2, loc_254DEE
254DAE:  LDREX.W         R2, [R0]
254DB2:  CMP             R2, #0
254DB4:  BEQ             loc_254DA8
254DB6:  B               loc_254DEA
254DB8:  LDR             R0, =(TrapALError_ptr - 0x254DBE)
254DBA:  ADD             R0, PC; TrapALError_ptr
254DBC:  LDR             R0, [R0]; TrapALError
254DBE:  LDRB            R0, [R0]
254DC0:  CMP             R0, #0
254DC2:  ITT NE
254DC4:  MOVNE           R0, #5; sig
254DC6:  BLXNE           raise
254DCA:  LDREX.W         R0, [R4,#0x50]
254DCE:  CBNZ            R0, loc_254DEA
254DD0:  ADD.W           R0, R4, #0x50 ; 'P'
254DD4:  MOVW            R1, #0xA001
254DD8:  DMB.W           ISH
254DDC:  STREX.W         R2, R1, [R0]
254DE0:  CBZ             R2, loc_254DEE
254DE2:  LDREX.W         R2, [R0]
254DE6:  CMP             R2, #0
254DE8:  BEQ             loc_254DDC
254DEA:  CLREX.W
254DEE:  DMB.W           ISH
254DF2:  MOV             R0, R4
254DF4:  POP.W           {R8}
254DF8:  POP.W           {R4-R7,LR}
254DFC:  B.W             ALCcontext_DecRef
