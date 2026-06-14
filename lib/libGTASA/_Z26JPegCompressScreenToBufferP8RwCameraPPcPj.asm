; =========================================================
; Game Engine Function: _Z26JPegCompressScreenToBufferP8RwCameraPPcPj
; Address            : 0x481D4C - 0x481DB4
; =========================================================

481D4C:  PUSH            {R4-R7,LR}
481D4E:  ADD             R7, SP, #0xC
481D50:  PUSH.W          {R8-R10}
481D54:  SUB             SP, SP, #0x18
481D56:  MOV             R10, R2
481D58:  LDR             R2, =(g_tmp_buffer_ptr - 0x481D60)
481D5A:  LDR             R3, =(g_tmp_buffer_size_ptr - 0x481D66)
481D5C:  ADD             R2, PC; g_tmp_buffer_ptr
481D5E:  LDR.W           R12, =(_Z23BufferEmptyOutputBufferP20jpeg_compress_struct_ptr - 0x481D6E)
481D62:  ADD             R3, PC; g_tmp_buffer_size_ptr
481D64:  LDR.W           R9, =(g_tmp_buffer_offset_ptr - 0x481D74)
481D68:  LDR             R2, [R2]; g_tmp_buffer
481D6A:  ADD             R12, PC; _Z23BufferEmptyOutputBufferP20jpeg_compress_struct_ptr
481D6C:  LDR.W           LR, =(_Z21BufferInitDestinationP20jpeg_compress_struct_ptr - 0x481D7C)
481D70:  ADD             R9, PC; g_tmp_buffer_offset_ptr
481D72:  LDR.W           R8, =(_Z21BufferTermDestinationP20jpeg_compress_struct_ptr - 0x481D80)
481D76:  LDR             R3, [R3]; g_tmp_buffer_size
481D78:  ADD             LR, PC; _Z21BufferInitDestinationP20jpeg_compress_struct_ptr
481D7A:  STR             R1, [R2]
481D7C:  ADD             R8, PC; _Z21BufferTermDestinationP20jpeg_compress_struct_ptr
481D7E:  LDR.W           R1, [R10]
481D82:  MOVS            R2, #0
481D84:  LDR.W           R5, [R12]; BufferEmptyOutputBuffer(jpeg_compress_struct *)
481D88:  LDR.W           R4, [R9]; g_tmp_buffer_offset
481D8C:  STR             R1, [R3]
481D8E:  ADD             R1, SP, #0x30+var_2C
481D90:  LDR.W           R6, [LR]; BufferInitDestination(jpeg_compress_struct *)
481D94:  LDR.W           R12, [R8]; BufferTermDestination(jpeg_compress_struct *)
481D98:  STR             R2, [R4]
481D9A:  STRD.W          R6, R5, [SP,#0x30+var_24]
481D9E:  STR.W           R12, [SP,#0x30+var_1C]
481DA2:  BLX             j__Z18JPegCompressScreenP8RwCameraR20jpeg_destination_mgr; JPegCompressScreen(RwCamera *,jpeg_destination_mgr &)
481DA6:  LDR             R0, [R4]
481DA8:  STR.W           R0, [R10]
481DAC:  ADD             SP, SP, #0x18
481DAE:  POP.W           {R8-R10}
481DB2:  POP             {R4-R7,PC}
