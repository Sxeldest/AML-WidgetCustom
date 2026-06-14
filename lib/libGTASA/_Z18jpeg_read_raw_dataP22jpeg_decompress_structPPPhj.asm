; =========================================================
; Game Engine Function: _Z18jpeg_read_raw_dataP22jpeg_decompress_structPPPhj
; Address            : 0x47BBAA - 0x47BC3A
; =========================================================

47BBAA:  PUSH            {R4-R7,LR}
47BBAC:  ADD             R7, SP, #0xC
47BBAE:  PUSH.W          {R8}
47BBB2:  MOV             R4, R0
47BBB4:  MOV             R6, R2
47BBB6:  LDR             R0, [R4,#0x14]
47BBB8:  MOV             R8, R1
47BBBA:  CMP             R0, #0xCE
47BBBC:  BEQ             loc_47BBD2
47BBBE:  LDR             R0, [R4]
47BBC0:  MOVS            R1, #0x14
47BBC2:  STR             R1, [R0,#0x14]
47BBC4:  LDR             R0, [R4]
47BBC6:  LDR             R1, [R4,#0x14]
47BBC8:  STR             R1, [R0,#0x18]
47BBCA:  LDR             R0, [R4]
47BBCC:  LDR             R1, [R0]
47BBCE:  MOV             R0, R4
47BBD0:  BLX             R1
47BBD2:  LDR             R1, [R4,#0x60]
47BBD4:  LDR             R0, [R4,#0x78]
47BBD6:  CMP             R0, R1
47BBD8:  BCS             loc_47BC1E
47BBDA:  LDR             R1, [R4,#8]
47BBDC:  CBZ             R1, loc_47BBEE
47BBDE:  STR             R0, [R1,#4]
47BBE0:  LDR             R0, [R4,#8]
47BBE2:  LDR             R1, [R4,#0x60]
47BBE4:  STR             R1, [R0,#8]
47BBE6:  LDR             R0, [R4,#8]
47BBE8:  LDR             R1, [R0]
47BBEA:  MOV             R0, R4
47BBEC:  BLX             R1
47BBEE:  LDRD.W          R0, R1, [R4,#0x114]
47BBF2:  MUL.W           R5, R1, R0
47BBF6:  CMP             R5, R6
47BBF8:  BLS             loc_47BC08
47BBFA:  LDR             R0, [R4]
47BBFC:  MOVS            R1, #0x17
47BBFE:  STR             R1, [R0,#0x14]
47BC00:  LDR             R0, [R4]
47BC02:  LDR             R1, [R0]
47BC04:  MOV             R0, R4
47BC06:  BLX             R1
47BC08:  LDR.W           R0, [R4,#0x188]
47BC0C:  MOV             R1, R8
47BC0E:  LDR             R2, [R0,#0xC]
47BC10:  MOV             R0, R4
47BC12:  BLX             R2
47BC14:  CBZ             R0, loc_47BC30
47BC16:  LDR             R0, [R4,#0x78]
47BC18:  ADD             R0, R5
47BC1A:  STR             R0, [R4,#0x78]
47BC1C:  B               loc_47BC32
47BC1E:  LDR             R0, [R4]
47BC20:  MOVS            R1, #0x7B ; '{'
47BC22:  STR             R1, [R0,#0x14]
47BC24:  MOV.W           R1, #0xFFFFFFFF
47BC28:  LDR             R0, [R4]
47BC2A:  LDR             R2, [R0,#4]
47BC2C:  MOV             R0, R4
47BC2E:  BLX             R2
47BC30:  MOVS            R5, #0
47BC32:  MOV             R0, R5
47BC34:  POP.W           {R8}
47BC38:  POP             {R4-R7,PC}
