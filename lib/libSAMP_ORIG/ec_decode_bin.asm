; =========================================================
; Game Engine Function: ec_decode_bin
; Address            : 0xB5A06 - 0xB5A2A
; =========================================================

B5A06:  PUSH            {R4,R6,R7,LR}
B5A08:  ADD             R7, SP, #8
B5A0A:  MOV             R4, R1
B5A0C:  LDRD.W          R1, R2, [R0,#0x1C]
B5A10:  LSRS            R1, R4
B5A12:  STR             R1, [R0,#0x24]
B5A14:  MOV             R0, R2
B5A16:  BLX             sub_108874
B5A1A:  MOVS            R1, #1
B5A1C:  ADDS            R0, #1
B5A1E:  LSLS            R1, R4
B5A20:  CMP             R1, R0
B5A22:  IT CC
B5A24:  MOVCC           R0, R1
B5A26:  SUBS            R0, R1, R0
B5A28:  POP             {R4,R6,R7,PC}
