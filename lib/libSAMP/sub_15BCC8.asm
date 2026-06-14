; =========================================================
; Game Engine Function: sub_15BCC8
; Address            : 0x15BCC8 - 0x15BD1E
; =========================================================

15BCC8:  PUSH            {R4-R7,LR}
15BCCA:  ADD             R7, SP, #0xC
15BCCC:  PUSH.W          {R8,R9,R11}
15BCD0:  MOV             R6, R0
15BCD2:  LDR             R0, [R0]
15BCD4:  MOV             R8, R3
15BCD6:  MOV             R4, R2
15BCD8:  CMP             R0, R1
15BCDA:  BLS             loc_15BD06
15BCDC:  MOV             R5, R1
15BCDE:  ADD             R1, R4
15BCE0:  CMP             R1, R0
15BCE2:  BLS             loc_15BD08
15BCE4:  LDR             R1, [R6,#8]
15BCE6:  SUB.W           R9, R0, R5
15BCEA:  MOV             R0, R8; dest
15BCEC:  ADD             R1, R5; src
15BCEE:  MOV             R2, R9; n
15BCF0:  BLX             j_memcpy
15BCF4:  SUB.W           R4, R4, R9
15BCF8:  LDR             R1, [R6,#8]; src
15BCFA:  ADD.W           R0, R8, R9; dest
15BCFE:  MOV             R2, R4; n
15BD00:  BLX             j_memcpy
15BD04:  B               loc_15BD16
15BD06:  MOVS            R5, #0
15BD08:  LDR             R0, [R6,#8]
15BD0A:  MOV             R2, R4; n
15BD0C:  ADDS            R1, R0, R5; src
15BD0E:  MOV             R0, R8; dest
15BD10:  BLX             j_memcpy
15BD14:  ADD             R4, R5
15BD16:  MOV             R0, R4
15BD18:  POP.W           {R8,R9,R11}
15BD1C:  POP             {R4-R7,PC}
