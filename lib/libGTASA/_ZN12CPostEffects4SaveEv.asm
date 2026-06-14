; =========================================================
; Game Engine Function: _ZN12CPostEffects4SaveEv
; Address            : 0x48FF48 - 0x48FF9C
; =========================================================

48FF48:  PUSH            {R4,R5,R7,LR}
48FF4A:  ADD             R7, SP, #8
48FF4C:  SUB             SP, SP, #0x160
48FF4E:  MOV             R4, SP
48FF50:  MOVS            R1, #0; bool
48FF52:  MOV             R0, R4; this
48FF54:  BLX             j__ZN25CPostEffectsSaveStructure10CopyValuesEb; CPostEffectsSaveStructure::CopyValues(bool)
48FF58:  MOVS            R0, #4; byte_count
48FF5A:  BLX             malloc
48FF5E:  MOV             R5, R0
48FF60:  MOV.W           R0, #0x15C
48FF64:  STR             R0, [R5]
48FF66:  MOV             R0, R5; this
48FF68:  MOVS            R1, #byte_4; void *
48FF6A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FF6E:  MOV             R0, R5; p
48FF70:  BLX             free
48FF74:  MOV.W           R0, #0x15C; byte_count
48FF78:  BLX             malloc
48FF7C:  MOV             R1, R4; void *
48FF7E:  MOV.W           R2, #0x15C; size_t
48FF82:  MOV             R5, R0
48FF84:  BLX             memcpy_1
48FF88:  MOV             R0, R5; this
48FF8A:  MOV.W           R1, #(elf_hash_bucket+0x60); void *
48FF8E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48FF92:  MOV             R0, R5; p
48FF94:  BLX             free
48FF98:  ADD             SP, SP, #0x160
48FF9A:  POP             {R4,R5,R7,PC}
