; =========================================================
; Game Engine Function: ec_decode_bin
; Address            : 0x193C2A - 0x193C4E
; =========================================================

193C2A:  PUSH            {R4,R6,R7,LR}
193C2C:  ADD             R7, SP, #8
193C2E:  MOV             R4, R1
193C30:  LDRD.W          R1, R2, [R0,#0x1C]
193C34:  LSRS            R1, R4
193C36:  STR             R1, [R0,#0x24]
193C38:  MOV             R0, R2
193C3A:  BLX             sub_220A6C
193C3E:  MOVS            R1, #1
193C40:  ADDS            R0, #1
193C42:  LSLS            R1, R4
193C44:  CMP             R1, R0
193C46:  IT CC
193C48:  MOVCC           R0, R1
193C4A:  SUBS            R0, R1, R0
193C4C:  POP             {R4,R6,R7,PC}
