; =========================================================
; Game Engine Function: _Z23BufferEmptyOutputBufferP20jpeg_compress_struct
; Address            : 0x481C74 - 0x481CC6
; =========================================================

481C74:  PUSH            {R4,R5,R7,LR}
481C76:  ADD             R7, SP, #8
481C78:  MOV             R4, R0
481C7A:  LDR             R0, =(g_tmp_buffer_offset_ptr - 0x481C82)
481C7C:  LDR             R1, =(g_tmp_buffer_size_ptr - 0x481C84)
481C7E:  ADD             R0, PC; g_tmp_buffer_offset_ptr
481C80:  ADD             R1, PC; g_tmp_buffer_size_ptr
481C82:  LDR             R0, [R0]; g_tmp_buffer_offset
481C84:  LDR             R1, [R1]; g_tmp_buffer_size
481C86:  LDR             R0, [R0]
481C88:  LDR             R1, [R1]
481C8A:  ADD.W           R5, R0, #0x32000
481C8E:  CMP             R5, R1
481C90:  BCS             loc_481CB2
481C92:  LDR             R1, =(g_tmp_buffer_ptr - 0x481C98)
481C94:  ADD             R1, PC; g_tmp_buffer_ptr
481C96:  LDR             R1, [R1]; g_tmp_buffer
481C98:  LDR             R1, [R1]
481C9A:  LDR             R2, [R1]
481C9C:  LDR             R1, =(unk_9BA2B0 - 0x481CA8)
481C9E:  ADD             R0, R2; void *
481CA0:  MOV.W           R2, #0x32000; size_t
481CA4:  ADD             R1, PC; unk_9BA2B0 ; void *
481CA6:  BLX             memcpy_1
481CAA:  LDR             R0, =(g_tmp_buffer_offset_ptr - 0x481CB0)
481CAC:  ADD             R0, PC; g_tmp_buffer_offset_ptr
481CAE:  LDR             R0, [R0]; g_tmp_buffer_offset
481CB0:  STR             R5, [R0]
481CB2:  LDR             R0, [R4,#0x18]
481CB4:  LDR             R1, =(unk_9BA2B0 - 0x481CBA)
481CB6:  ADD             R1, PC; unk_9BA2B0
481CB8:  STR             R1, [R0]
481CBA:  LDR             R0, [R4,#0x18]
481CBC:  MOV.W           R1, #0x32000
481CC0:  STR             R1, [R0,#4]
481CC2:  MOVS            R0, #1
481CC4:  POP             {R4,R5,R7,PC}
