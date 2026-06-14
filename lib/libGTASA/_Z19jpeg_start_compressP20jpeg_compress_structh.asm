; =========================================================
; Game Engine Function: _Z19jpeg_start_compressP20jpeg_compress_structh
; Address            : 0x4760B0 - 0x476114
; =========================================================

4760B0:  PUSH            {R4,R5,R7,LR}
4760B2:  ADD             R7, SP, #8
4760B4:  MOV             R4, R0
4760B6:  MOV             R5, R1
4760B8:  LDR             R0, [R4,#0x14]
4760BA:  CMP             R0, #0x64 ; 'd'
4760BC:  BEQ             loc_4760D2
4760BE:  LDR             R0, [R4]
4760C0:  MOVS            R1, #0x14
4760C2:  STR             R1, [R0,#0x14]
4760C4:  LDR             R0, [R4]
4760C6:  LDR             R1, [R4,#0x14]
4760C8:  STR             R1, [R0,#0x18]
4760CA:  LDR             R0, [R4]
4760CC:  LDR             R1, [R0]
4760CE:  MOV             R0, R4
4760D0:  BLX             R1
4760D2:  CMP             R5, #0
4760D4:  ITTT NE
4760D6:  MOVNE           R0, R4
4760D8:  MOVNE           R1, #0
4760DA:  BLXNE           j__Z20jpeg_suppress_tablesP20jpeg_compress_structh; jpeg_suppress_tables(jpeg_compress_struct *,uchar)
4760DE:  LDR             R0, [R4]
4760E0:  LDR             R1, [R0,#0x10]
4760E2:  MOV             R0, R4
4760E4:  BLX             R1
4760E6:  LDR             R0, [R4,#0x18]
4760E8:  LDR             R1, [R0,#8]
4760EA:  MOV             R0, R4
4760EC:  BLX             R1
4760EE:  MOV             R0, R4
4760F0:  BLX             j__Z21jinit_compress_masterP20jpeg_compress_struct; jinit_compress_master(jpeg_compress_struct *)
4760F4:  LDR.W           R0, [R4,#0x13C]
4760F8:  LDR             R1, [R0]
4760FA:  MOV             R0, R4
4760FC:  BLX             R1
4760FE:  LDRB.W          R1, [R4,#0xB0]
476102:  MOVS            R0, #0
476104:  STR.W           R0, [R4,#0xD0]
476108:  MOVS            R0, #0x65 ; 'e'
47610A:  CMP             R1, #0
47610C:  IT NE
47610E:  MOVNE           R0, #0x66 ; 'f'
476110:  STR             R0, [R4,#0x14]
476112:  POP             {R4,R5,R7,PC}
