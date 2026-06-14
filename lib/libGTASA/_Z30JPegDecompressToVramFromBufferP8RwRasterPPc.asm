; =========================================================
; Game Engine Function: _Z30JPegDecompressToVramFromBufferP8RwRasterPPc
; Address            : 0x481EEC - 0x481F52
; =========================================================

481EEC:  PUSH            {R4-R7,LR}
481EEE:  ADD             R7, SP, #0xC
481EF0:  PUSH.W          {R11}
481EF4:  SUB             SP, SP, #0x20
481EF6:  MOV             R4, R0
481EF8:  MOVS            R0, #0
481EFA:  CBZ             R1, loc_481F4A
481EFC:  LDR             R1, =(FrontEndMenuManager_ptr - 0x481F04)
481EFE:  LDR             R2, =(dword_9EC2B0 - 0x481F08)
481F00:  ADD             R1, PC; FrontEndMenuManager_ptr
481F02:  LDR             R6, =(unk_9BA2B0 - 0x481F0C)
481F04:  ADD             R2, PC; dword_9EC2B0
481F06:  LDR             R1, [R1]; FrontEndMenuManager
481F08:  ADD             R6, PC; unk_9BA2B0
481F0A:  STR             R0, [R2]
481F0C:  MOV.W           R2, #0x32000; size_t
481F10:  MOV             R0, R6; void *
481F12:  LDR             R1, [R1,#(dword_98F154 - 0x98F0F8)]; void *
481F14:  BLX             memcpy_1
481F18:  LDR             R0, =(_Z10InitSourceP22jpeg_decompress_struct_ptr - 0x481F24)
481F1A:  ADD.W           R12, SP, #0x30+var_24
481F1E:  LDR             R1, =(_Z21BufferFillInputBufferP22jpeg_decompress_struct_ptr - 0x481F2A)
481F20:  ADD             R0, PC; _Z10InitSourceP22jpeg_decompress_struct_ptr
481F22:  LDR             R2, =(_Z19BufferSkipInputDataP22jpeg_decompress_structl_ptr - 0x481F2E)
481F24:  LDR             R3, =(_Z22jpeg_resync_to_restartP22jpeg_decompress_structi_ptr - 0x481F30)
481F26:  ADD             R1, PC; _Z21BufferFillInputBufferP22jpeg_decompress_struct_ptr
481F28:  LDR             R5, =(_Z10TermSourceP22jpeg_decompress_struct_ptr - 0x481F34)
481F2A:  ADD             R2, PC; _Z19BufferSkipInputDataP22jpeg_decompress_structl_ptr
481F2C:  ADD             R3, PC; _Z22jpeg_resync_to_restartP22jpeg_decompress_structi_ptr
481F2E:  LDR             R0, [R0]; InitSource(jpeg_decompress_struct *)
481F30:  ADD             R5, PC; _Z10TermSourceP22jpeg_decompress_struct_ptr
481F32:  LDR             R1, [R1]; BufferFillInputBuffer(jpeg_decompress_struct *)
481F34:  LDR             R2, [R2]; BufferSkipInputData(jpeg_decompress_struct *,long)
481F36:  LDR             R3, [R3]; jpeg_resync_to_restart(jpeg_decompress_struct *,int)
481F38:  LDR             R5, [R5]; TermSource(jpeg_decompress_struct *)
481F3A:  STM.W           R12, {R0-R3,R5}
481F3E:  ADD             R1, SP, #0x30+var_2C
481F40:  MOV             R0, R4
481F42:  STR             R6, [SP,#0x30+var_2C]
481F44:  BLX             j__Z22JPegDecompressToRasterP8RwRasterR15jpeg_source_mgr; JPegDecompressToRaster(RwRaster *,jpeg_source_mgr &)
481F48:  MOVS            R0, #1
481F4A:  ADD             SP, SP, #0x20 ; ' '
481F4C:  POP.W           {R11}
481F50:  POP             {R4-R7,PC}
