; =========================================================
; Game Engine Function: _Z23jinit_c_prep_controllerP20jpeg_compress_structh
; Address            : 0x47A998 - 0x47AA44
; =========================================================

47A998:  PUSH            {R4-R7,LR}
47A99A:  ADD             R7, SP, #0xC
47A99C:  PUSH.W          {R8-R10}
47A9A0:  MOV             R9, R0
47A9A2:  CBZ             R1, loc_47A9B6
47A9A4:  LDR.W           R0, [R9]
47A9A8:  MOVS            R1, #4
47A9AA:  STR             R1, [R0,#0x14]
47A9AC:  LDR.W           R0, [R9]
47A9B0:  LDR             R1, [R0]
47A9B2:  MOV             R0, R9
47A9B4:  BLX             R1
47A9B6:  LDR.W           R0, [R9,#4]
47A9BA:  MOVS            R1, #1
47A9BC:  MOVS            R2, #0x20 ; ' '
47A9BE:  LDR             R3, [R0]
47A9C0:  MOV             R0, R9
47A9C2:  BLX             R3
47A9C4:  LDR             R1, =(sub_47AA4C+1 - 0x47A9CE)
47A9C6:  STR.W           R0, [R9,#0x144]
47A9CA:  ADD             R1, PC; sub_47AA4C
47A9CC:  STR             R1, [R0]
47A9CE:  LDR.W           R1, [R9,#0x154]
47A9D2:  LDRB            R1, [R1,#8]
47A9D4:  CBZ             R1, loc_47A9F0
47A9D6:  LDR.W           R0, [R9]
47A9DA:  MOVS            R1, #0x30 ; '0'
47A9DC:  STR             R1, [R0,#0x14]
47A9DE:  LDR.W           R0, [R9]
47A9E2:  LDR             R1, [R0]
47A9E4:  MOV             R0, R9
47A9E6:  POP.W           {R8-R10}
47A9EA:  POP.W           {R4-R7,LR}
47A9EE:  BX              R1
47A9F0:  LDR             R1, =(sub_47AA72+1 - 0x47A9F6)
47A9F2:  ADD             R1, PC; sub_47AA72
47A9F4:  STR             R1, [R0,#4]
47A9F6:  LDR.W           R1, [R9,#0x3C]
47A9FA:  CMP             R1, #1
47A9FC:  BLT             loc_47AA3E
47A9FE:  LDR.W           R1, [R9,#0x44]
47AA02:  ADD.W           R8, R0, #8
47AA06:  MOVS            R4, #0
47AA08:  ADD.W           R6, R1, #0x1C
47AA0C:  LDRD.W          R0, R10, [R9,#0xD8]
47AA10:  LDR             R1, [R6]
47AA12:  LDR.W           R5, [R9,#4]
47AA16:  MULS            R0, R1
47AA18:  LDR.W           R1, [R6,#-0x14]
47AA1C:  LSLS            R0, R0, #3
47AA1E:  BLX             __aeabi_idiv
47AA22:  LDR             R5, [R5,#8]
47AA24:  MOV             R2, R0
47AA26:  MOV             R0, R9
47AA28:  MOVS            R1, #1
47AA2A:  MOV             R3, R10
47AA2C:  BLX             R5
47AA2E:  STR.W           R0, [R8,R4,LSL#2]
47AA32:  ADDS            R6, #0x54 ; 'T'
47AA34:  ADDS            R4, #1
47AA36:  LDR.W           R0, [R9,#0x3C]
47AA3A:  CMP             R4, R0
47AA3C:  BLT             loc_47AA0C
47AA3E:  POP.W           {R8-R10}
47AA42:  POP             {R4-R7,PC}
