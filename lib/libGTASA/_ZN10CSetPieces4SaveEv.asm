; =========================================================
; Game Engine Function: _ZN10CSetPieces4SaveEv
; Address            : 0x48E0E0 - 0x48E132
; =========================================================

48E0E0:  PUSH            {R4,R6,R7,LR}
48E0E2:  ADD             R7, SP, #8
48E0E4:  MOVS            R0, #4; byte_count
48E0E6:  BLX             malloc
48E0EA:  MOV             R4, R0
48E0EC:  LDR             R0, =(_ZN10CSetPieces12NumSetPiecesE_ptr - 0x48E0F4)
48E0EE:  MOVS            R1, #byte_4; void *
48E0F0:  ADD             R0, PC; _ZN10CSetPieces12NumSetPiecesE_ptr
48E0F2:  LDR             R0, [R0]; CSetPieces::NumSetPieces ...
48E0F4:  LDR             R0, [R0]; CSetPieces::NumSetPieces
48E0F6:  STR             R0, [R4]
48E0F8:  MOV             R0, R4; this
48E0FA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E0FE:  MOV             R0, R4; p
48E100:  BLX             free
48E104:  MOV.W           R0, #0x1A40; byte_count
48E108:  BLX             malloc
48E10C:  MOV             R4, R0
48E10E:  LDR             R0, =(_ZN10CSetPieces10aSetPiecesE_ptr - 0x48E118)
48E110:  MOV.W           R2, #0x1A40; size_t
48E114:  ADD             R0, PC; _ZN10CSetPieces10aSetPiecesE_ptr
48E116:  LDR             R1, [R0]; void *
48E118:  MOV             R0, R4; void *
48E11A:  BLX             memcpy_1
48E11E:  MOV             R0, R4; this
48E120:  MOV.W           R1, #(elf_hash_bucket+0x1944); void *
48E124:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E128:  MOV             R0, R4; p
48E12A:  BLX             free
48E12E:  MOVS            R0, #1
48E130:  POP             {R4,R6,R7,PC}
