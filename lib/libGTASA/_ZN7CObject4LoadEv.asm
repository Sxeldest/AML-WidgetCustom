; =========================================================
; Game Engine Function: _ZN7CObject4LoadEv
; Address            : 0x484F3C - 0x484F64
; =========================================================

484F3C:  PUSH            {R4,R5,R7,LR}
484F3E:  ADD             R7, SP, #8
484F40:  SUB             SP, SP, #0x38
484F42:  MOV             R4, R0
484F44:  ADD             R0, SP, #0x40+var_C; this
484F46:  MOVS            R1, #byte_4; void *
484F48:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
484F4C:  MOV             R5, SP
484F4E:  MOVS            R1, #dword_34; void *
484F50:  MOV             R0, R5; this
484F52:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
484F56:  MOV             R0, R5; this
484F58:  MOV             R1, R4; CObject *
484F5A:  BLX             j__ZN20CObjectSaveStructure7ExtractEP7CObject; CObjectSaveStructure::Extract(CObject *)
484F5E:  MOVS            R0, #1
484F60:  ADD             SP, SP, #0x38 ; '8'
484F62:  POP             {R4,R5,R7,PC}
