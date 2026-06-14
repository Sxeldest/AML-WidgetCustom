; =========================================================
; Game Engine Function: inflate_blocks_free
; Address            : 0x20DD6C - 0x20DDD0
; =========================================================

20DD6C:  PUSH            {R4,R5,R7,LR}
20DD6E:  ADD             R7, SP, #8
20DD70:  MOV             R4, R0
20DD72:  MOV             R5, R1
20DD74:  LDR             R0, [R4]
20DD76:  BIC.W           R1, R0, #1
20DD7A:  CMP             R1, #4
20DD7C:  BNE             loc_20DD88
20DD7E:  LDRD.W          R2, R0, [R5,#0x24]
20DD82:  LDR             R1, [R4,#0xC]
20DD84:  BLX             R2
20DD86:  LDR             R0, [R4]
20DD88:  CMP             R0, #6
20DD8A:  BNE             loc_20DD94
20DD8C:  LDR             R0, [R4,#4]
20DD8E:  MOV             R1, R5
20DD90:  BLX             j_inflate_codes_free
20DD94:  LDR             R3, [R4,#0x38]
20DD96:  MOVS            R0, #0
20DD98:  LDR             R1, [R4,#0x28]
20DD9A:  CMP             R3, #0
20DD9C:  STR             R0, [R4]
20DD9E:  STRD.W          R0, R0, [R4,#0x1C]
20DDA2:  STRD.W          R1, R1, [R4,#0x30]
20DDA6:  BEQ             loc_20DDB6
20DDA8:  MOVS            R0, #0
20DDAA:  MOVS            R1, #0
20DDAC:  MOVS            R2, #0
20DDAE:  BLX             R3
20DDB0:  STR             R0, [R4,#0x3C]
20DDB2:  STR             R0, [R5,#0x30]
20DDB4:  LDR             R1, [R4,#0x28]
20DDB6:  LDRD.W          R2, R0, [R5,#0x24]
20DDBA:  BLX             R2
20DDBC:  LDRD.W          R2, R0, [R5,#0x24]
20DDC0:  LDR             R1, [R4,#0x24]
20DDC2:  BLX             R2
20DDC4:  LDRD.W          R2, R0, [R5,#0x24]
20DDC8:  MOV             R1, R4
20DDCA:  BLX             R2
20DDCC:  MOVS            R0, #0
20DDCE:  POP             {R4,R5,R7,PC}
