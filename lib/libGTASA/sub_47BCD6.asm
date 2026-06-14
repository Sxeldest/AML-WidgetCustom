; =========================================================
; Game Engine Function: sub_47BCD6
; Address            : 0x47BCD6 - 0x47BD38
; =========================================================

47BCD6:  PUSH            {R4-R7,LR}
47BCD8:  ADD             R7, SP, #0xC
47BCDA:  PUSH.W          {R11}
47BCDE:  MOV             R4, R0
47BCE0:  LDR             R6, [R4,#0x18]
47BCE2:  LDR             R0, [R6,#4]
47BCE4:  RSBS.W          R5, R0, #0x1000
47BCE8:  BEQ             loc_47BD0C
47BCEA:  LDR.W           R3, [R6,#0x14]!; s
47BCEE:  MOVS            R1, #1; size
47BCF0:  MOV             R2, R5; n
47BCF2:  LDR             R0, [R6,#4]; ptr
47BCF4:  BLX             fwrite
47BCF8:  CMP             R0, R5
47BCFA:  BEQ             loc_47BD0E
47BCFC:  LDR             R0, [R4]
47BCFE:  MOVS            R1, #0x25 ; '%'
47BD00:  STR             R1, [R0,#0x14]
47BD02:  LDR             R0, [R4]
47BD04:  LDR             R1, [R0]
47BD06:  MOV             R0, R4
47BD08:  BLX             R1
47BD0A:  B               loc_47BD0E
47BD0C:  ADDS            R6, #0x14
47BD0E:  LDR             R0, [R6]; stream
47BD10:  BLX             fflush
47BD14:  LDR             R0, [R6]; stream
47BD16:  BLX             ferror
47BD1A:  CBZ             R0, loc_47BD32
47BD1C:  LDR             R0, [R4]
47BD1E:  MOVS            R1, #0x25 ; '%'
47BD20:  STR             R1, [R0,#0x14]
47BD22:  LDR             R0, [R4]
47BD24:  LDR             R1, [R0]
47BD26:  MOV             R0, R4
47BD28:  POP.W           {R11}
47BD2C:  POP.W           {R4-R7,LR}
47BD30:  BX              R1
47BD32:  POP.W           {R11}
47BD36:  POP             {R4-R7,PC}
