; =========================================================
; Game Engine Function: _Z19jpeg_write_m_headerP20jpeg_compress_structij
; Address            : 0x476016 - 0x47605C
; =========================================================

476016:  PUSH            {R4-R7,LR}
476018:  ADD             R7, SP, #0xC
47601A:  PUSH.W          {R11}
47601E:  MOV             R6, R0
476020:  MOV             R4, R2
476022:  LDR.W           R0, [R6,#0xD0]
476026:  MOV             R5, R1
476028:  CBNZ            R0, loc_476032
47602A:  LDR             R0, [R6,#0x14]
47602C:  SUBS            R0, #0x65 ; 'e'
47602E:  CMP             R0, #3
476030:  BCC             loc_476046
476032:  LDR             R0, [R6]
476034:  MOVS            R1, #0x14
476036:  STR             R1, [R0,#0x14]
476038:  LDR             R0, [R6]
47603A:  LDR             R1, [R6,#0x14]
47603C:  STR             R1, [R0,#0x18]
47603E:  LDR             R0, [R6]
476040:  LDR             R1, [R0]
476042:  MOV             R0, R6
476044:  BLX             R1
476046:  LDR.W           R0, [R6,#0x14C]
47604A:  MOV             R1, R5
47604C:  MOV             R2, R4
47604E:  LDR             R3, [R0,#0x14]
476050:  MOV             R0, R6
476052:  POP.W           {R11}
476056:  POP.W           {R4-R7,LR}
47605A:  BX              R3
