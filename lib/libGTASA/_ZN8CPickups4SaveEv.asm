; =========================================================
; Game Engine Function: _ZN8CPickups4SaveEv
; Address            : 0x48CF90 - 0x48D032
; =========================================================

48CF90:  PUSH            {R4-R7,LR}
48CF92:  ADD             R7, SP, #0xC
48CF94:  PUSH.W          {R8}
48CF98:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x48CFA0)
48CF9A:  MOVS            R5, #0
48CF9C:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
48CF9E:  LDR.W           R8, [R0]; CPickups::aPickUps ...
48CFA2:  MOVS            R0, #0x20 ; ' '; byte_count
48CFA4:  ADD.W           R6, R8, R5
48CFA8:  BLX             malloc
48CFAC:  VLD1.8          {D16-D17}, [R6]!
48CFB0:  MOV             R4, R0
48CFB2:  MOVS            R1, #dword_20; void *
48CFB4:  VLD1.8          {D18-D19}, [R6]
48CFB8:  VST1.8          {D16-D17}, [R0]!
48CFBC:  VST1.8          {D18-D19}, [R0]
48CFC0:  MOV             R0, R4; this
48CFC2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CFC6:  MOV             R0, R4; p
48CFC8:  BLX             free
48CFCC:  ADDS            R5, #0x20 ; ' '
48CFCE:  CMP.W           R5, #0x4D80
48CFD2:  BNE             loc_48CFA2
48CFD4:  MOVS            R0, #2; byte_count
48CFD6:  BLX             malloc
48CFDA:  MOV             R4, R0
48CFDC:  LDR             R0, =(_ZN8CPickups20CollectedPickUpIndexE_ptr - 0x48CFE4)
48CFDE:  MOVS            R1, #(stderr+2); void *
48CFE0:  ADD             R0, PC; _ZN8CPickups20CollectedPickUpIndexE_ptr
48CFE2:  LDR             R0, [R0]; CPickups::CollectedPickUpIndex ...
48CFE4:  LDRH            R0, [R0]; CPickups::CollectedPickUpIndex
48CFE6:  STRH            R0, [R4]
48CFE8:  MOV             R0, R4; this
48CFEA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48CFEE:  MOV             R0, R4; p
48CFF0:  BLX             free
48CFF4:  LDR             R0, =(_ZN8CPickups18DisplayHelpMessageE_ptr - 0x48CFFC)
48CFF6:  MOVS            R1, #(stderr+1); void *
48CFF8:  ADD             R0, PC; _ZN8CPickups18DisplayHelpMessageE_ptr
48CFFA:  LDR             R0, [R0]; this
48CFFC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D000:  LDR             R0, =(_ZN8CPickups17aPickUpsCollectedE_ptr - 0x48D008)
48D002:  MOVS            R5, #0
48D004:  ADD             R0, PC; _ZN8CPickups17aPickUpsCollectedE_ptr
48D006:  LDR             R6, [R0]; CPickups::aPickUpsCollected ...
48D008:  MOVS            R0, #4; byte_count
48D00A:  BLX             malloc
48D00E:  MOV             R4, R0
48D010:  LDR.W           R0, [R6,R5,LSL#2]
48D014:  STR             R0, [R4]
48D016:  MOV             R0, R4; this
48D018:  MOVS            R1, #byte_4; void *
48D01A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D01E:  MOV             R0, R4; p
48D020:  BLX             free
48D024:  ADDS            R5, #1
48D026:  CMP             R5, #0x14
48D028:  BNE             loc_48D008
48D02A:  MOVS            R0, #1
48D02C:  POP.W           {R8}
48D030:  POP             {R4-R7,PC}
