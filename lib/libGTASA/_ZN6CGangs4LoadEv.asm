; =========================================================
; Game Engine Function: _ZN6CGangs4LoadEv
; Address            : 0x48DD04 - 0x48DD74
; =========================================================

48DD04:  PUSH            {R4,R6,R7,LR}
48DD06:  ADD             R7, SP, #8
48DD08:  LDR             R0, =(_ZN6CGangs4GangE_ptr - 0x48DD10)
48DD0A:  MOVS            R1, #word_10; void *
48DD0C:  ADD             R0, PC; _ZN6CGangs4GangE_ptr
48DD0E:  LDR             R4, [R0]; CGangs::Gang ...
48DD10:  MOV             R0, R4; this
48DD12:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD16:  ADD.W           R0, R4, #0x10; this
48DD1A:  MOVS            R1, #word_10; void *
48DD1C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD20:  ADD.W           R0, R4, #0x20 ; ' '; this
48DD24:  MOVS            R1, #word_10; void *
48DD26:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD2A:  ADD.W           R0, R4, #0x30 ; '0'; this
48DD2E:  MOVS            R1, #word_10; void *
48DD30:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD34:  ADD.W           R0, R4, #0x40 ; '@'; this
48DD38:  MOVS            R1, #word_10; void *
48DD3A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD3E:  ADD.W           R0, R4, #0x50 ; 'P'; this
48DD42:  MOVS            R1, #word_10; void *
48DD44:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD48:  ADD.W           R0, R4, #0x60 ; '`'; this
48DD4C:  MOVS            R1, #word_10; void *
48DD4E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD52:  ADD.W           R0, R4, #0x70 ; 'p'; this
48DD56:  MOVS            R1, #word_10; void *
48DD58:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD5C:  ADD.W           R0, R4, #0x80; this
48DD60:  MOVS            R1, #word_10; void *
48DD62:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD66:  ADD.W           R0, R4, #0x90; this
48DD6A:  MOVS            R1, #word_10; void *
48DD6C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DD70:  MOVS            R0, #1
48DD72:  POP             {R4,R6,R7,PC}
