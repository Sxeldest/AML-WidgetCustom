; =========================================================
; Game Engine Function: _ZN17CStuntJumpManager4SaveEv
; Address            : 0x48E9BC - 0x48EA32
; =========================================================

48E9BC:  PUSH            {R4-R7,LR}
48E9BE:  ADD             R7, SP, #0xC
48E9C0:  PUSH.W          {R8,R9,R11}
48E9C4:  MOVS            R0, #4; byte_count
48E9C6:  BLX             malloc
48E9CA:  MOV             R4, R0
48E9CC:  LDR             R0, =(_ZN17CStuntJumpManager11m_iNumJumpsE_ptr - 0x48E9D4)
48E9CE:  MOVS            R1, #byte_4; void *
48E9D0:  ADD             R0, PC; _ZN17CStuntJumpManager11m_iNumJumpsE_ptr
48E9D2:  LDR             R0, [R0]; CStuntJumpManager::m_iNumJumps ...
48E9D4:  LDR             R0, [R0]; CStuntJumpManager::m_iNumJumps
48E9D6:  STR             R0, [R4]
48E9D8:  MOV             R0, R4; this
48E9DA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48E9DE:  MOV             R0, R4; p
48E9E0:  BLX             free
48E9E4:  LDR             R0, =(_ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr - 0x48E9EE)
48E9E6:  MOVS            R5, #0
48E9E8:  MOVS            R6, #0
48E9EA:  ADD             R0, PC; _ZN17CStuntJumpManager17mp_poolStuntJumpsE_ptr
48E9EC:  LDR.W           R8, [R0]; CStuntJumpManager::mp_poolStuntJumps ...
48E9F0:  LDR.W           R0, [R8]; CStuntJumpManager::mp_poolStuntJumps
48E9F4:  LDR             R1, [R0,#4]
48E9F6:  LDRSB           R1, [R1,R6]
48E9F8:  CMP             R1, #0
48E9FA:  BLT             loc_48EA20
48E9FC:  LDR.W           R9, [R0]
48EA00:  MOVS            R0, #0x44 ; 'D'; byte_count
48EA02:  BLX             malloc
48EA06:  ADD.W           R1, R9, R5; void *
48EA0A:  MOVS            R2, #0x44 ; 'D'; size_t
48EA0C:  MOV             R4, R0
48EA0E:  BLX             memcpy_1
48EA12:  MOV             R0, R4; this
48EA14:  MOVS            R1, #dword_44; void *
48EA16:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48EA1A:  MOV             R0, R4; p
48EA1C:  BLX             free
48EA20:  ADDS            R6, #1
48EA22:  ADDS            R5, #0x44 ; 'D'
48EA24:  CMP.W           R6, #0x100
48EA28:  BNE             loc_48E9F0
48EA2A:  MOVS            R0, #1
48EA2C:  POP.W           {R8,R9,R11}
48EA30:  POP             {R4-R7,PC}
