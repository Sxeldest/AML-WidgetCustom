; =========================================================
; Game Engine Function: _ZN14CTaskSequences4LoadEv
; Address            : 0x4EEA10 - 0x4EEA92
; =========================================================

4EEA10:  PUSH            {R4-R7,LR}
4EEA12:  ADD             R7, SP, #0xC
4EEA14:  PUSH.W          {R8-R10}
4EEA18:  SUB             SP, SP, #8
4EEA1A:  LDR             R0, =(_ZN11CTheScripts23ScriptSequenceTaskArrayE_ptr - 0x4EEA24)
4EEA1C:  MOV.W           R1, #(elf_hash_bucket+4); void *
4EEA20:  ADD             R0, PC; _ZN11CTheScripts23ScriptSequenceTaskArrayE_ptr
4EEA22:  LDR             R0, [R0]; this
4EEA24:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4EEA28:  LDR             R0, =(_ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x4EEA30)
4EEA2A:  MOVS            R1, #dword_40; void *
4EEA2C:  ADD             R0, PC; _ZN14CTaskSequences12ms_bIsOpenedE_ptr
4EEA2E:  LDR             R0, [R0]; this
4EEA30:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4EEA34:  LDR             R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4EEA46)
4EEA36:  ADD.W           R10, SP, #0x20+var_1C
4EEA3A:  MOV.W           R8, #0
4EEA3E:  MOV.W           R9, #0
4EEA42:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4EEA44:  LDR             R0, [R0]; CTaskSequences::ms_taskSequence ...
4EEA46:  ADD.W           R6, R0, #0x10
4EEA4A:  MOVS            R4, #0
4EEA4C:  MOV             R0, R10; this
4EEA4E:  MOVS            R1, #byte_4; void *
4EEA50:  STR.W           R8, [SP,#0x20+var_1C]
4EEA54:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4EEA58:  LDR             R0, [SP,#0x20+var_1C]
4EEA5A:  ADDS            R0, #1; this
4EEA5C:  BEQ             loc_4EEA78
4EEA5E:  BLX             j__ZN5CTask10CreateTaskEv; CTask::CreateTask(void)
4EEA62:  MOV             R5, R0
4EEA64:  CBZ             R5, loc_4EEA78
4EEA66:  LDR.W           R0, [R6,R4,LSL#2]
4EEA6A:  CMP             R0, #0
4EEA6C:  ITTT NE
4EEA6E:  LDRNE           R1, [R0]
4EEA70:  LDRNE           R1, [R1,#4]
4EEA72:  BLXNE           R1
4EEA74:  STR.W           R5, [R6,R4,LSL#2]
4EEA78:  ADDS            R4, #1
4EEA7A:  CMP             R4, #8
4EEA7C:  BNE             loc_4EEA4C
4EEA7E:  ADD.W           R9, R9, #1
4EEA82:  ADDS            R6, #0x40 ; '@'
4EEA84:  CMP.W           R9, #0x40 ; '@'
4EEA88:  BNE             loc_4EEA4A
4EEA8A:  ADD             SP, SP, #8
4EEA8C:  POP.W           {R8-R10}
4EEA90:  POP             {R4-R7,PC}
