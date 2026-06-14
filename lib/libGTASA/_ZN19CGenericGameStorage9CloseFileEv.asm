; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage9CloseFileEv
; Address            : 0x4829A8 - 0x4829E6
; =========================================================

4829A8:  PUSH            {R7,LR}
4829AA:  MOV             R7, SP
4829AC:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x4829B2)
4829AE:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
4829B0:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
4829B2:  LDR             R0, [R0]; void *
4829B4:  CBZ             R0, loc_4829CE
4829B6:  BLX             _ZdaPv; operator delete[](void *)
4829BA:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x4829C4)
4829BC:  MOVS            R2, #0
4829BE:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x4829C6)
4829C0:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
4829C2:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
4829C4:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
4829C6:  LDR             R1, [R1]; unsigned int
4829C8:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
4829CA:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
4829CE:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x4829D4)
4829D0:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
4829D2:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
4829D4:  LDR             R0, [R0]; this
4829D6:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4829DA:  MOVS            R1, #0
4829DC:  CMP             R0, #0
4829DE:  IT EQ
4829E0:  MOVEQ           R1, #1
4829E2:  MOV             R0, R1
4829E4:  POP             {R7,PC}
