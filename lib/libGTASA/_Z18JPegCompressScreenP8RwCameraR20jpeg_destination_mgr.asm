; =========================================================
; Game Engine Function: _Z18JPegCompressScreenP8RwCameraR20jpeg_destination_mgr
; Address            : 0x481DCC - 0x481E88
; =========================================================

481DCC:  PUSH            {R4-R7,LR}
481DCE:  ADD             R7, SP, #0xC
481DD0:  PUSH.W          {R8,R9,R11}
481DD4:  SUB             SP, SP, #0x1F8
481DD6:  MOV             R8, R1
481DD8:  LDR             R1, =(__stack_chk_guard_ptr - 0x481DDE)
481DDA:  ADD             R1, PC; __stack_chk_guard_ptr
481DDC:  LDR             R1, [R1]; __stack_chk_guard
481DDE:  LDR             R1, [R1]
481DE0:  STR             R1, [SP,#0x210+var_1C]
481DE2:  BLX             j__Z12RsGrabScreenP8RwCamera; RsGrabScreen(RwCamera *)
481DE6:  MOV             R4, R0
481DE8:  ADD             R0, SP, #0x210+var_20C
481DEA:  BLX             j__Z14jpeg_std_errorP14jpeg_error_mgr; jpeg_std_error(jpeg_error_mgr *)
481DEE:  ADD             R6, SP, #0x210+var_188
481DF0:  STR             R0, [SP,#0x210+var_188]
481DF2:  MOVS            R1, #0x3E ; '>'
481DF4:  MOV.W           R2, #0x168
481DF8:  MOV             R0, R6
481DFA:  BLX             j__Z19jpeg_CreateCompressP20jpeg_compress_structij; jpeg_CreateCompress(jpeg_compress_struct *,int,uint)
481DFE:  MOVS            R5, #2
481E00:  MOV             R0, R6
481E02:  STR             R5, [SP,#0x210+var_160]
481E04:  BLX             j__Z17jpeg_set_defaultsP20jpeg_compress_struct; jpeg_set_defaults(jpeg_compress_struct *)
481E08:  LDR             R0, [R4,#4]
481E0A:  MOVS            R1, #4
481E0C:  STR             R0, [SP,#0x210+var_16C]
481E0E:  LDR             R0, [R4,#8]
481E10:  STRD.W          R0, R1, [SP,#0x210+var_168]
481E14:  MOV             R0, R6
481E16:  MOVS            R1, #1
481E18:  STR             R5, [SP,#0x210+var_D0]
481E1A:  STR.W           R8, [SP,#0x210+var_170]
481E1E:  BLX             j__Z19jpeg_start_compressP20jpeg_compress_structh; jpeg_start_compress(jpeg_compress_struct *,uchar)
481E22:  LDR             R5, [R4,#0x14]
481E24:  LDR             R0, [SP,#0x210+var_168]
481E26:  LDR             R1, [SP,#0x210+var_B8]
481E28:  STR             R5, [SP,#0x210+var_210]
481E2A:  CMP             R1, R0
481E2C:  BCS             loc_481E56
481E2E:  MOVS            R6, #0
481E30:  ADD.W           R8, SP, #0x210+var_188
481E34:  MOV             R9, SP
481E36:  LDR             R0, [R4,#4]
481E38:  MOV             R1, R9
481E3A:  MOVS            R2, #1
481E3C:  MLA.W           R0, R6, R0, R5
481E40:  STR             R0, [SP,#0x210+var_210]
481E42:  MOV             R0, R8
481E44:  BLX             j__Z20jpeg_write_scanlinesP20jpeg_compress_structPPhj; jpeg_write_scanlines(jpeg_compress_struct *,uchar **,uint)
481E48:  CMP             R0, #1
481E4A:  BNE             loc_481E56
481E4C:  LDR             R0, [SP,#0x210+var_168]
481E4E:  ADDS            R6, #4
481E50:  LDR             R1, [SP,#0x210+var_B8]
481E52:  CMP             R1, R0
481E54:  BCC             loc_481E36
481E56:  ADD             R5, SP, #0x210+var_188
481E58:  MOV             R0, R5
481E5A:  BLX             j__Z20jpeg_finish_compressP20jpeg_compress_struct; jpeg_finish_compress(jpeg_compress_struct *)
481E5E:  MOV             R0, R5
481E60:  BLX             j__Z21jpeg_destroy_compressP20jpeg_compress_struct; jpeg_destroy_compress(jpeg_compress_struct *)
481E64:  CMP             R4, #0
481E66:  ITT NE
481E68:  MOVNE           R0, R4
481E6A:  BLXNE           j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
481E6E:  LDR             R0, =(__stack_chk_guard_ptr - 0x481E76)
481E70:  LDR             R1, [SP,#0x210+var_1C]
481E72:  ADD             R0, PC; __stack_chk_guard_ptr
481E74:  LDR             R0, [R0]; __stack_chk_guard
481E76:  LDR             R0, [R0]
481E78:  SUBS            R0, R0, R1
481E7A:  ITTT EQ
481E7C:  ADDEQ           SP, SP, #0x1F8
481E7E:  POPEQ.W         {R8,R9,R11}
481E82:  POPEQ           {R4-R7,PC}
481E84:  BLX             __stack_chk_fail
