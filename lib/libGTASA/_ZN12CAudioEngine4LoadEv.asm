; =========================================================
; Game Engine Function: _ZN12CAudioEngine4LoadEv
; Address            : 0x48A8A4 - 0x48A9D4
; =========================================================

48A8A4:  PUSH            {R4-R7,LR}
48A8A6:  ADD             R7, SP, #0xC
48A8A8:  PUSH.W          {R11}
48A8AC:  SUB             SP, SP, #0x20
48A8AE:  LDR             R0, =(UseDataFence_ptr - 0x48A8B4)
48A8B0:  ADD             R0, PC; UseDataFence_ptr
48A8B2:  LDR             R0, [R0]; UseDataFence
48A8B4:  LDRB            R4, [R0]
48A8B6:  CBZ             R4, loc_48A8CC
48A8B8:  LDR             R0, =(UseDataFence_ptr - 0x48A8C0)
48A8BA:  MOVS            R1, #(stderr+2); void *
48A8BC:  ADD             R0, PC; UseDataFence_ptr
48A8BE:  LDR             R5, [R0]; UseDataFence
48A8C0:  MOVS            R0, #0
48A8C2:  STRB            R0, [R5]
48A8C4:  MOV             R0, SP; this
48A8C6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A8CA:  STRB            R4, [R5]
48A8CC:  MOV             R4, SP
48A8CE:  MOVS            R1, #dword_20; void *
48A8D0:  MOV             R0, R4; this
48A8D2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A8D6:  LDR             R1, =(UseDataFence_ptr - 0x48A8E0)
48A8D8:  MOV             R2, R4
48A8DA:  LDR             R0, =(AudioEngine_ptr - 0x48A8E6)
48A8DC:  ADD             R1, PC; UseDataFence_ptr
48A8DE:  VLD1.64         {D16-D17}, [R2]!
48A8E2:  ADD             R0, PC; AudioEngine_ptr
48A8E4:  LDR             R1, [R1]; UseDataFence
48A8E6:  LDR             R0, [R0]; AudioEngine
48A8E8:  VLD1.64         {D18-D19}, [R2]
48A8EC:  ADD.W           R2, R0, #0x340; int
48A8F0:  ADD.W           R0, R0, #0x330
48A8F4:  LDRB            R5, [R1]
48A8F6:  VST1.32         {D18-D19}, [R2]
48A8FA:  CMP             R5, #0
48A8FC:  VST1.32         {D16-D17}, [R0]
48A900:  BEQ             loc_48A916
48A902:  LDR             R0, =(UseDataFence_ptr - 0x48A90A)
48A904:  MOVS            R1, #(stderr+2); void *
48A906:  ADD             R0, PC; UseDataFence_ptr
48A908:  LDR             R6, [R0]; UseDataFence
48A90A:  MOVS            R0, #0
48A90C:  STRB            R0, [R6]
48A90E:  MOV             R0, SP; this
48A910:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A914:  STRB            R5, [R6]
48A916:  MOV             R0, R4; this
48A918:  MOVS            R1, #dword_20; void *
48A91A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A91E:  LDR             R1, =(UseDataFence_ptr - 0x48A928)
48A920:  MOV             R2, R4
48A922:  LDR             R0, =(AudioEngine_ptr - 0x48A92E)
48A924:  ADD             R1, PC; UseDataFence_ptr
48A926:  VLD1.64         {D16-D17}, [R2]!
48A92A:  ADD             R0, PC; AudioEngine_ptr
48A92C:  LDR             R1, [R1]; UseDataFence
48A92E:  LDR             R0, [R0]; AudioEngine
48A930:  VLD1.64         {D18-D19}, [R2]
48A934:  ADD.W           R2, R0, #0x360; int
48A938:  ADD.W           R0, R0, #0x350
48A93C:  LDRB            R5, [R1]
48A93E:  VST1.32         {D18-D19}, [R2]
48A942:  CMP             R5, #0
48A944:  VST1.32         {D16-D17}, [R0]
48A948:  BEQ             loc_48A95E
48A94A:  LDR             R0, =(UseDataFence_ptr - 0x48A952)
48A94C:  MOVS            R1, #(stderr+2); void *
48A94E:  ADD             R0, PC; UseDataFence_ptr
48A950:  LDR             R6, [R0]; UseDataFence
48A952:  MOVS            R0, #0
48A954:  STRB            R0, [R6]
48A956:  MOV             R0, SP; this
48A958:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A95C:  STRB            R5, [R6]
48A95E:  MOV             R0, R4; this
48A960:  MOVS            R1, #dword_20; void *
48A962:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A966:  LDR             R1, =(UseDataFence_ptr - 0x48A970)
48A968:  MOV             R2, R4
48A96A:  LDR             R0, =(AudioEngine_ptr - 0x48A976)
48A96C:  ADD             R1, PC; UseDataFence_ptr
48A96E:  VLD1.64         {D16-D17}, [R2]!
48A972:  ADD             R0, PC; AudioEngine_ptr
48A974:  LDR             R1, [R1]; UseDataFence
48A976:  LDR             R0, [R0]; AudioEngine
48A978:  VLD1.64         {D18-D19}, [R2]
48A97C:  ADD.W           R2, R0, #0x380; int
48A980:  ADD.W           R0, R0, #0x370
48A984:  LDRB            R5, [R1]
48A986:  VST1.32         {D18-D19}, [R2]
48A98A:  CMP             R5, #0
48A98C:  VST1.32         {D16-D17}, [R0]
48A990:  BEQ             loc_48A9A6
48A992:  LDR             R0, =(UseDataFence_ptr - 0x48A99A)
48A994:  MOVS            R1, #(stderr+2); void *
48A996:  ADD             R0, PC; UseDataFence_ptr
48A998:  LDR             R6, [R0]; UseDataFence
48A99A:  MOVS            R0, #0
48A99C:  STRB            R0, [R6]
48A99E:  MOV             R0, SP; this
48A9A0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A9A4:  STRB            R5, [R6]
48A9A6:  MOV             R0, R4; this
48A9A8:  MOVS            R1, #dword_20; void *
48A9AA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A9AE:  LDR             R0, =(AudioEngine_ptr - 0x48A9B8)
48A9B0:  VLD1.64         {D16-D17}, [R4]!
48A9B4:  ADD             R0, PC; AudioEngine_ptr
48A9B6:  VLD1.64         {D18-D19}, [R4]
48A9BA:  LDR             R0, [R0]; AudioEngine
48A9BC:  ADD.W           R1, R0, #0x3A0
48A9C0:  ADD.W           R0, R0, #0x390
48A9C4:  VST1.32         {D18-D19}, [R1]
48A9C8:  VST1.32         {D16-D17}, [R0]
48A9CC:  ADD             SP, SP, #0x20 ; ' '
48A9CE:  POP.W           {R11}
48A9D2:  POP             {R4-R7,PC}
