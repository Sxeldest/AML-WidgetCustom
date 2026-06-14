; =========================================================
; Game Engine Function: _ZN10CSetPieces4LoadEv
; Address            : 0x48E13C - 0x48E15E
; =========================================================

48E13C:  PUSH            {R7,LR}
48E13E:  MOV             R7, SP
48E140:  LDR             R0, =(_ZN10CSetPieces12NumSetPiecesE_ptr - 0x48E148)
48E142:  MOVS            R1, #byte_4; void *
48E144:  ADD             R0, PC; _ZN10CSetPieces12NumSetPiecesE_ptr
48E146:  LDR             R0, [R0]; this
48E148:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E14C:  LDR             R0, =(_ZN10CSetPieces10aSetPiecesE_ptr - 0x48E156)
48E14E:  MOV.W           R1, #(elf_hash_bucket+0x1944); void *
48E152:  ADD             R0, PC; _ZN10CSetPieces10aSetPiecesE_ptr
48E154:  LDR             R0, [R0]; this
48E156:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E15A:  MOVS            R0, #1
48E15C:  POP             {R7,PC}
