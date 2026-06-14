; =========================================================
; Game Engine Function: _ZN12CAudioEngine4SaveEv
; Address            : 0x489AD0 - 0x489CD8
; =========================================================

489AD0:  PUSH            {R4-R7,LR}
489AD2:  ADD             R7, SP, #0xC
489AD4:  PUSH.W          {R8}
489AD8:  LDR             R0, =(UseDataFence_ptr - 0x489ADE)
489ADA:  ADD             R0, PC; UseDataFence_ptr
489ADC:  LDR             R0, [R0]; UseDataFence
489ADE:  LDRB            R5, [R0]
489AE0:  CBZ             R5, loc_489B20
489AE2:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489AEE)
489AE4:  MOVS            R3, #0
489AE6:  LDR             R1, =(UseDataFence_ptr - 0x489AF0)
489AE8:  LDR             R2, =(DataFence_ptr - 0x489AF2)
489AEA:  ADD             R0, PC; currentSaveFenceCount_ptr
489AEC:  ADD             R1, PC; UseDataFence_ptr
489AEE:  ADD             R2, PC; DataFence_ptr
489AF0:  LDR             R0, [R0]; currentSaveFenceCount
489AF2:  LDR.W           R8, [R1]; UseDataFence
489AF6:  LDR             R1, [R2]; DataFence
489AF8:  LDR             R2, [R0]
489AFA:  STRB.W          R3, [R8]
489AFE:  LDRH            R1, [R1]
489B00:  ADDS            R3, R2, #1
489B02:  STR             R3, [R0]
489B04:  MOVS            R0, #2; byte_count
489B06:  ADDS            R6, R2, R1
489B08:  BLX             malloc
489B0C:  MOV             R4, R0
489B0E:  MOVS            R1, #(stderr+2); void *
489B10:  STRH            R6, [R4]
489B12:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489B16:  MOV             R0, R4; p
489B18:  BLX             free
489B1C:  STRB.W          R5, [R8]
489B20:  MOVS            R0, #0x20 ; ' '; byte_count
489B22:  BLX             malloc
489B26:  MOV             R4, R0
489B28:  LDR             R0, =(AudioEngine_ptr - 0x489B2E)
489B2A:  ADD             R0, PC; AudioEngine_ptr
489B2C:  LDR             R0, [R0]; AudioEngine
489B2E:  ADD.W           R1, R0, #0x330
489B32:  ADD.W           R0, R0, #0x340
489B36:  VLD1.32         {D16-D17}, [R1]
489B3A:  MOVS            R1, #dword_20; void *
489B3C:  VLD1.32         {D18-D19}, [R0]
489B40:  MOV             R0, R4
489B42:  VST1.8          {D16-D17}, [R0]!
489B46:  VST1.8          {D18-D19}, [R0]
489B4A:  MOV             R0, R4; this
489B4C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489B50:  MOV             R0, R4; p
489B52:  BLX             free
489B56:  LDR             R0, =(UseDataFence_ptr - 0x489B5C)
489B58:  ADD             R0, PC; UseDataFence_ptr
489B5A:  LDR             R0, [R0]; UseDataFence
489B5C:  LDRB            R5, [R0]
489B5E:  CBZ             R5, loc_489B9E
489B60:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489B6C)
489B62:  MOVS            R3, #0
489B64:  LDR             R1, =(UseDataFence_ptr - 0x489B6E)
489B66:  LDR             R2, =(DataFence_ptr - 0x489B70)
489B68:  ADD             R0, PC; currentSaveFenceCount_ptr
489B6A:  ADD             R1, PC; UseDataFence_ptr
489B6C:  ADD             R2, PC; DataFence_ptr
489B6E:  LDR             R0, [R0]; currentSaveFenceCount
489B70:  LDR.W           R8, [R1]; UseDataFence
489B74:  LDR             R1, [R2]; DataFence
489B76:  LDR             R2, [R0]
489B78:  STRB.W          R3, [R8]
489B7C:  LDRH            R1, [R1]
489B7E:  ADDS            R3, R2, #1
489B80:  STR             R3, [R0]
489B82:  MOVS            R0, #2; byte_count
489B84:  ADDS            R6, R2, R1
489B86:  BLX             malloc
489B8A:  MOV             R4, R0
489B8C:  MOVS            R1, #(stderr+2); void *
489B8E:  STRH            R6, [R4]
489B90:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489B94:  MOV             R0, R4; p
489B96:  BLX             free
489B9A:  STRB.W          R5, [R8]
489B9E:  MOVS            R0, #0x20 ; ' '; byte_count
489BA0:  BLX             malloc
489BA4:  MOV             R4, R0
489BA6:  LDR             R0, =(AudioEngine_ptr - 0x489BAC)
489BA8:  ADD             R0, PC; AudioEngine_ptr
489BAA:  LDR             R0, [R0]; AudioEngine
489BAC:  ADD.W           R1, R0, #0x350
489BB0:  ADD.W           R0, R0, #0x360
489BB4:  VLD1.32         {D16-D17}, [R1]
489BB8:  MOVS            R1, #dword_20; void *
489BBA:  VLD1.32         {D18-D19}, [R0]
489BBE:  MOV             R0, R4
489BC0:  VST1.8          {D16-D17}, [R0]!
489BC4:  VST1.8          {D18-D19}, [R0]
489BC8:  MOV             R0, R4; this
489BCA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489BCE:  MOV             R0, R4; p
489BD0:  BLX             free
489BD4:  LDR             R0, =(UseDataFence_ptr - 0x489BDA)
489BD6:  ADD             R0, PC; UseDataFence_ptr
489BD8:  LDR             R0, [R0]; UseDataFence
489BDA:  LDRB            R5, [R0]
489BDC:  CBZ             R5, loc_489C1C
489BDE:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489BEA)
489BE0:  MOVS            R3, #0
489BE2:  LDR             R1, =(UseDataFence_ptr - 0x489BEC)
489BE4:  LDR             R2, =(DataFence_ptr - 0x489BEE)
489BE6:  ADD             R0, PC; currentSaveFenceCount_ptr
489BE8:  ADD             R1, PC; UseDataFence_ptr
489BEA:  ADD             R2, PC; DataFence_ptr
489BEC:  LDR             R0, [R0]; currentSaveFenceCount
489BEE:  LDR.W           R8, [R1]; UseDataFence
489BF2:  LDR             R1, [R2]; DataFence
489BF4:  LDR             R2, [R0]
489BF6:  STRB.W          R3, [R8]
489BFA:  LDRH            R1, [R1]
489BFC:  ADDS            R3, R2, #1
489BFE:  STR             R3, [R0]
489C00:  MOVS            R0, #2; byte_count
489C02:  ADDS            R6, R2, R1
489C04:  BLX             malloc
489C08:  MOV             R4, R0
489C0A:  MOVS            R1, #(stderr+2); void *
489C0C:  STRH            R6, [R4]
489C0E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489C12:  MOV             R0, R4; p
489C14:  BLX             free
489C18:  STRB.W          R5, [R8]
489C1C:  MOVS            R0, #0x20 ; ' '; byte_count
489C1E:  BLX             malloc
489C22:  MOV             R4, R0
489C24:  LDR             R0, =(AudioEngine_ptr - 0x489C2A)
489C26:  ADD             R0, PC; AudioEngine_ptr
489C28:  LDR             R0, [R0]; AudioEngine
489C2A:  ADD.W           R1, R0, #0x370
489C2E:  ADD.W           R0, R0, #0x380
489C32:  VLD1.32         {D16-D17}, [R1]
489C36:  MOVS            R1, #dword_20; void *
489C38:  VLD1.32         {D18-D19}, [R0]
489C3C:  MOV             R0, R4
489C3E:  VST1.8          {D16-D17}, [R0]!
489C42:  VST1.8          {D18-D19}, [R0]
489C46:  MOV             R0, R4; this
489C48:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489C4C:  MOV             R0, R4; p
489C4E:  BLX             free
489C52:  LDR             R0, =(UseDataFence_ptr - 0x489C58)
489C54:  ADD             R0, PC; UseDataFence_ptr
489C56:  LDR             R0, [R0]; UseDataFence
489C58:  LDRB            R5, [R0]
489C5A:  CBZ             R5, loc_489C9A
489C5C:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489C68)
489C5E:  MOVS            R3, #0
489C60:  LDR             R1, =(UseDataFence_ptr - 0x489C6A)
489C62:  LDR             R2, =(DataFence_ptr - 0x489C6C)
489C64:  ADD             R0, PC; currentSaveFenceCount_ptr
489C66:  ADD             R1, PC; UseDataFence_ptr
489C68:  ADD             R2, PC; DataFence_ptr
489C6A:  LDR             R0, [R0]; currentSaveFenceCount
489C6C:  LDR.W           R8, [R1]; UseDataFence
489C70:  LDR             R1, [R2]; DataFence
489C72:  LDR             R2, [R0]
489C74:  STRB.W          R3, [R8]
489C78:  LDRH            R1, [R1]
489C7A:  ADDS            R3, R2, #1
489C7C:  STR             R3, [R0]
489C7E:  MOVS            R0, #2; byte_count
489C80:  ADDS            R6, R2, R1
489C82:  BLX             malloc
489C86:  MOV             R4, R0
489C88:  MOVS            R1, #(stderr+2); void *
489C8A:  STRH            R6, [R4]
489C8C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489C90:  MOV             R0, R4; p
489C92:  BLX             free
489C96:  STRB.W          R5, [R8]
489C9A:  MOVS            R0, #0x20 ; ' '; byte_count
489C9C:  BLX             malloc
489CA0:  MOV             R4, R0
489CA2:  LDR             R0, =(AudioEngine_ptr - 0x489CA8)
489CA4:  ADD             R0, PC; AudioEngine_ptr
489CA6:  LDR             R0, [R0]; AudioEngine
489CA8:  ADD.W           R1, R0, #0x390
489CAC:  ADD.W           R0, R0, #0x3A0
489CB0:  VLD1.32         {D16-D17}, [R1]
489CB4:  MOVS            R1, #dword_20; void *
489CB6:  VLD1.32         {D18-D19}, [R0]
489CBA:  MOV             R0, R4
489CBC:  VST1.8          {D16-D17}, [R0]!
489CC0:  VST1.8          {D18-D19}, [R0]
489CC4:  MOV             R0, R4; this
489CC6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489CCA:  MOV             R0, R4; p
489CCC:  POP.W           {R8}
489CD0:  POP.W           {R4-R7,LR}
489CD4:  B.W             j_free
