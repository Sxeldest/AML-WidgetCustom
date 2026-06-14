; =========================================================
; Game Engine Function: _Z16jpeg_huff_decodeP21bitread_working_stateiiP13d_derived_tbli
; Address            : 0x47CE20 - 0x47CEC8
; =========================================================

47CE20:  PUSH            {R4-R7,LR}
47CE22:  ADD             R7, SP, #0xC
47CE24:  PUSH.W          {R8}
47CE28:  LDR             R6, [R7,#arg_0]
47CE2A:  MOV             R8, R3
47CE2C:  MOV             R5, R0
47CE2E:  CMP             R2, R6
47CE30:  BGE             loc_47CE42
47CE32:  MOV             R0, R5
47CE34:  MOV             R3, R6
47CE36:  BLX             j__Z20jpeg_fill_bit_bufferP21bitread_working_stateiii; jpeg_fill_bit_buffer(bitread_working_state *,int,int,int)
47CE3A:  CMP             R0, #0
47CE3C:  BEQ             loc_47CEBE
47CE3E:  LDRD.W          R1, R2, [R5,#8]
47CE42:  MOVS            R4, #1
47CE44:  SUBS            R2, R2, R6
47CE46:  LSLS            R4, R6
47CE48:  LDR.W           R0, [R8,R6,LSL#2]
47CE4C:  SUBS            R4, #1
47CE4E:  ASR.W           R3, R1, R2
47CE52:  ANDS            R4, R3
47CE54:  CMP             R4, R0
47CE56:  BLE             loc_47CE84
47CE58:  CMP             R2, #0
47CE5A:  BGT             loc_47CE6A
47CE5C:  MOV             R0, R5
47CE5E:  MOVS            R3, #1
47CE60:  BLX             j__Z20jpeg_fill_bit_bufferP21bitread_working_stateiii; jpeg_fill_bit_buffer(bitread_working_state *,int,int,int)
47CE64:  CBZ             R0, loc_47CEBE
47CE66:  LDRD.W          R1, R2, [R5,#8]
47CE6A:  SUBS            R2, #1
47CE6C:  ADD.W           R3, R8, R6,LSL#2
47CE70:  LSLS            R0, R4, #1
47CE72:  ADDS            R6, #1
47CE74:  LSR.W           R4, R1, R2
47CE78:  LDR             R3, [R3,#4]
47CE7A:  AND.W           R4, R4, #1
47CE7E:  ORRS            R4, R0
47CE80:  CMP             R4, R3
47CE82:  BGT             loc_47CE58
47CE84:  CMP             R6, #0x11
47CE86:  STRD.W          R1, R2, [R5,#8]
47CE8A:  BLT             loc_47CEA8
47CE8C:  LDR             R0, [R5,#0x10]
47CE8E:  MOVS            R1, #0x76 ; 'v'
47CE90:  LDR             R0, [R0]
47CE92:  STR             R1, [R0,#0x14]
47CE94:  LDR             R0, [R5,#0x10]
47CE96:  LDR             R1, [R0]
47CE98:  LDR             R2, [R1,#4]
47CE9A:  MOV.W           R1, #0xFFFFFFFF
47CE9E:  BLX             R2
47CEA0:  MOVS            R0, #0
47CEA2:  POP.W           {R8}
47CEA6:  POP             {R4-R7,PC}
47CEA8:  ADD.W           R0, R8, R6,LSL#2
47CEAC:  LDR.W           R1, [R8,#0x8C]
47CEB0:  LDR             R0, [R0,#0x48]
47CEB2:  ADD             R0, R4
47CEB4:  ADD             R0, R1
47CEB6:  LDRB            R0, [R0,#0x11]
47CEB8:  POP.W           {R8}
47CEBC:  POP             {R4-R7,PC}
47CEBE:  MOV.W           R0, #0xFFFFFFFF
47CEC2:  POP.W           {R8}
47CEC6:  POP             {R4-R7,PC}
