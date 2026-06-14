; =========================================================
; Game Engine Function: _Z24JPegCompressScreenToFileP8RwCameraPKc
; Address            : 0x4821A8 - 0x4821F2
; =========================================================

4821A8:  PUSH            {R4,R6,R7,LR}
4821AA:  ADD             R7, SP, #8
4821AC:  SUB             SP, SP, #0x18
4821AE:  ADR             R2, dword_4821F4; char *
4821B0:  MOV             R4, R0
4821B2:  MOV             R0, R1; this
4821B4:  MOV             R1, R2; char *
4821B6:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
4821BA:  LDR             R1, =(dword_9EC2B4 - 0x4821C2)
4821BC:  CMP             R0, #0
4821BE:  ADD             R1, PC; dword_9EC2B4
4821C0:  STR             R0, [R1]
4821C2:  BEQ             loc_4821EE
4821C4:  LDR             R0, =(_Z19HDEmptyOutputBufferP20jpeg_compress_struct_ptr - 0x4821CC)
4821C6:  LDR             R1, =(_Z15InitDestinationP20jpeg_compress_struct_ptr - 0x4821D0)
4821C8:  ADD             R0, PC; _Z19HDEmptyOutputBufferP20jpeg_compress_struct_ptr
4821CA:  LDR             R2, =(_Z17HDTermDestinationP20jpeg_compress_struct_ptr - 0x4821D4)
4821CC:  ADD             R1, PC; _Z15InitDestinationP20jpeg_compress_struct_ptr
4821CE:  LDR             R0, [R0]; HDEmptyOutputBuffer(jpeg_compress_struct *)
4821D0:  ADD             R2, PC; _Z17HDTermDestinationP20jpeg_compress_struct_ptr
4821D2:  LDR             R1, [R1]; InitDestination(jpeg_compress_struct *)
4821D4:  LDR             R2, [R2]; HDTermDestination(jpeg_compress_struct *)
4821D6:  STRD.W          R1, R0, [SP,#0x20+var_14]
4821DA:  ADD             R1, SP, #0x20+var_1C
4821DC:  MOV             R0, R4
4821DE:  STR             R2, [SP,#0x20+var_C]
4821E0:  BLX             j__Z18JPegCompressScreenP8RwCameraR20jpeg_destination_mgr; JPegCompressScreen(RwCamera *,jpeg_destination_mgr &)
4821E4:  LDR             R0, =(dword_9EC2B4 - 0x4821EA)
4821E6:  ADD             R0, PC; dword_9EC2B4
4821E8:  LDR             R0, [R0]; this
4821EA:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4821EE:  ADD             SP, SP, #0x18
4821F0:  POP             {R4,R6,R7,PC}
