; =========================================================
; Game Engine Function: _Z20jpeg_fill_bit_bufferP21bitread_working_stateiii
; Address            : 0x47CD54 - 0x47CE20
; =========================================================

47CD54:  PUSH            {R4-R7,LR}
47CD56:  ADD             R7, SP, #0xC
47CD58:  PUSH.W          {R8-R11}
47CD5C:  SUB             SP, SP, #4
47CD5E:  MOV             R11, R0
47CD60:  MOV             R9, R3
47CD62:  LDRD.W          R6, R5, [R11]
47CD66:  MOV             R10, R2
47CD68:  LDR.W           R4, [R11,#0x10]
47CD6C:  MOV             R8, R1
47CD6E:  LDR.W           R0, [R4,#0x17C]
47CD72:  CBZ             R0, loc_47CDA6
47CD74:  CMP             R10, R9
47CD76:  BGE             loc_47CDAC
47CD78:  LDR.W           R0, [R4,#0x198]
47CD7C:  LDRB            R0, [R0,#8]
47CD7E:  CBNZ            R0, loc_47CD9A
47CD80:  LDR             R0, [R4]
47CD82:  MOVS            R1, #0x75 ; 'u'
47CD84:  STR             R1, [R0,#0x14]
47CD86:  MOV.W           R1, #0xFFFFFFFF
47CD8A:  LDR             R0, [R4]
47CD8C:  LDR             R2, [R0,#4]
47CD8E:  MOV             R0, R4
47CD90:  BLX             R2
47CD92:  LDR.W           R0, [R4,#0x198]
47CD96:  MOVS            R1, #1
47CD98:  STRB            R1, [R0,#8]
47CD9A:  RSB.W           R0, R10, #0x19
47CD9E:  LSL.W           R8, R8, R0
47CDA2:  MOVS            R0, #0x19
47CDA4:  B               loc_47CDAE
47CDA6:  CMP.W           R10, #0x18
47CDAA:  BLE             loc_47CDC4
47CDAC:  MOV             R0, R10
47CDAE:  STRD.W          R6, R5, [R11]
47CDB2:  STRD.W          R8, R0, [R11,#8]
47CDB6:  MOVS            R0, #1
47CDB8:  ADD             SP, SP, #4
47CDBA:  POP.W           {R8-R11}
47CDBE:  POP             {R4-R7,PC}
47CDC0:  MOVS            R0, #0xFF
47CDC2:  B               loc_47CDE0
47CDC4:  CBNZ            R5, loc_47CDD6
47CDC6:  LDR             R0, [R4,#0x18]
47CDC8:  LDR             R1, [R0,#0xC]
47CDCA:  MOV             R0, R4
47CDCC:  BLX             R1
47CDCE:  CBZ             R0, loc_47CE1C
47CDD0:  LDR             R0, [R4,#0x18]
47CDD2:  LDRD.W          R6, R5, [R0]
47CDD6:  LDRB.W          R0, [R6],#1
47CDDA:  SUBS            R5, #1
47CDDC:  CMP             R0, #0xFF
47CDDE:  BEQ             loc_47CDF2
47CDE0:  ORR.W           R8, R0, R8,LSL#8
47CDE4:  ADD.W           R0, R10, #8
47CDE8:  CMP.W           R10, #0x11
47CDEC:  MOV             R10, R0
47CDEE:  BLT             loc_47CDC4
47CDF0:  B               loc_47CDAE
47CDF2:  CBNZ            R5, loc_47CE04
47CDF4:  LDR             R0, [R4,#0x18]
47CDF6:  LDR             R1, [R0,#0xC]
47CDF8:  MOV             R0, R4
47CDFA:  BLX             R1
47CDFC:  CBZ             R0, loc_47CE1C
47CDFE:  LDR             R0, [R4,#0x18]
47CE00:  LDRD.W          R6, R5, [R0]
47CE04:  LDRB.W          R0, [R6],#1
47CE08:  SUBS            R5, #1
47CE0A:  CMP             R0, #0xFF
47CE0C:  BEQ             loc_47CDF2
47CE0E:  CMP             R0, #0
47CE10:  BEQ             loc_47CDC0
47CE12:  STR.W           R0, [R4,#0x17C]
47CE16:  CMP             R10, R9
47CE18:  BLT             loc_47CD78
47CE1A:  B               loc_47CDAC
47CE1C:  MOVS            R0, #0
47CE1E:  B               loc_47CDB8
