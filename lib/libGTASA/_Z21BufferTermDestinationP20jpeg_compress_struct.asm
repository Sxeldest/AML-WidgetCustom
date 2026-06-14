; =========================================================
; Game Engine Function: _Z21BufferTermDestinationP20jpeg_compress_struct
; Address            : 0x481CE0 - 0x481D32
; =========================================================

481CE0:  LDR             R1, =(g_tmp_buffer_offset_ptr - 0x481CE8)
481CE2:  LDR             R2, =(g_tmp_buffer_size_ptr - 0x481CEC)
481CE4:  ADD             R1, PC; g_tmp_buffer_offset_ptr
481CE6:  LDR             R0, [R0,#0x18]
481CE8:  ADD             R2, PC; g_tmp_buffer_size_ptr
481CEA:  LDR.W           R12, =(unk_9BA2B0 - 0x481CF6)
481CEE:  LDR             R1, [R1]; g_tmp_buffer_offset
481CF0:  LDR             R2, [R2]; g_tmp_buffer_size
481CF2:  ADD             R12, PC; unk_9BA2B0
481CF4:  LDR             R3, [R0]
481CF6:  LDR             R0, [R1]
481CF8:  LDR             R1, [R2]
481CFA:  SUB.W           R2, R3, R12; size_t
481CFE:  ADDS            R3, R0, R2
481D00:  CMP             R3, R1
481D02:  IT CS
481D04:  BXCS            LR
481D06:  PUSH            {R7,LR}
481D08:  MOV             R7, SP
481D0A:  LDR             R1, =(g_tmp_buffer_ptr - 0x481D10)
481D0C:  ADD             R1, PC; g_tmp_buffer_ptr
481D0E:  LDR             R1, [R1]; g_tmp_buffer
481D10:  LDR             R1, [R1]
481D12:  LDR             R3, [R1]
481D14:  LDR             R1, =(unk_9BA2B0 - 0x481D1C)
481D16:  ADD             R0, R3; void *
481D18:  ADD             R1, PC; unk_9BA2B0 ; void *
481D1A:  BLX             memcpy_1
481D1E:  LDR             R0, =(g_tmp_buffer_offset_ptr - 0x481D24)
481D20:  ADD             R0, PC; g_tmp_buffer_offset_ptr
481D22:  LDR             R0, [R0]; g_tmp_buffer_offset
481D24:  LDR             R1, [R0]
481D26:  ADD.W           R1, R1, #0x32000
481D2A:  STR             R1, [R0]
481D2C:  POP.W           {R7,LR}
481D30:  BX              LR
