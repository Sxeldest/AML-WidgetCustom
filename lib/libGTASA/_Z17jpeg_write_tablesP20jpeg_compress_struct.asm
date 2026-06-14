; =========================================================
; Game Engine Function: _Z17jpeg_write_tablesP20jpeg_compress_struct
; Address            : 0x476064 - 0x4760B0
; =========================================================

476064:  PUSH            {R4,R6,R7,LR}
476066:  ADD             R7, SP, #8
476068:  MOV             R4, R0
47606A:  LDR             R0, [R4,#0x14]
47606C:  CMP             R0, #0x64 ; 'd'
47606E:  BEQ             loc_476084
476070:  LDR             R0, [R4]
476072:  MOVS            R1, #0x14
476074:  STR             R1, [R0,#0x14]
476076:  LDR             R0, [R4]
476078:  LDR             R1, [R4,#0x14]
47607A:  STR             R1, [R0,#0x18]
47607C:  LDR             R0, [R4]
47607E:  LDR             R1, [R0]
476080:  MOV             R0, R4
476082:  BLX             R1
476084:  LDR             R0, [R4]
476086:  LDR             R1, [R0,#0x10]
476088:  MOV             R0, R4
47608A:  BLX             R1
47608C:  LDR             R0, [R4,#0x18]
47608E:  LDR             R1, [R0,#8]
476090:  MOV             R0, R4
476092:  BLX             R1
476094:  MOV             R0, R4
476096:  BLX             j__Z19jinit_marker_writerP20jpeg_compress_struct; jinit_marker_writer(jpeg_compress_struct *)
47609A:  LDR.W           R0, [R4,#0x14C]
47609E:  LDR             R1, [R0,#0x10]
4760A0:  MOV             R0, R4
4760A2:  BLX             R1
4760A4:  LDR             R0, [R4,#0x18]
4760A6:  LDR             R1, [R0,#0x10]
4760A8:  MOV             R0, R4
4760AA:  POP.W           {R4,R6,R7,LR}
4760AE:  BX              R1
