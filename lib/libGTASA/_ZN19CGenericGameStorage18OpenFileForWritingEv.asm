; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage18OpenFileForWritingEv
; Address            : 0x482918 - 0x482984
; =========================================================

482918:  PUSH            {R4,R6,R7,LR}
48291A:  ADD             R7, SP, #8
48291C:  LDR             R0, =(_ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr - 0x482924)
48291E:  ADR             R1, dword_482988; char *
482920:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr
482922:  LDR             R0, [R0]; this
482924:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
482928:  LDR             R1, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482930)
48292A:  CMP             R0, #0
48292C:  ADD             R1, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
48292E:  LDR             R1, [R1]; CGenericGameStorage::ms_FileHandle ...
482930:  STR             R0, [R1]; CGenericGameStorage::ms_FileHandle
482932:  BEQ             loc_482954
482934:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x48293E)
482936:  MOVS            R3, #0
482938:  LDR             R2, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482942)
48293A:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
48293C:  LDR             R1, =(_ZN19CGenericGameStorage10ms_FilePosE_ptr - 0x482946)
48293E:  ADD             R2, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482940:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
482942:  ADD             R1, PC; _ZN19CGenericGameStorage10ms_FilePosE_ptr
482944:  LDR             R2, [R2]; CGenericGameStorage::_ms_WorkBuffer ...
482946:  LDR             R1, [R1]; CGenericGameStorage::ms_FilePos ...
482948:  STR             R3, [R0]; CGenericGameStorage::ms_WorkBufferPos
48294A:  LDR             R0, [R2]; CGenericGameStorage::_ms_WorkBuffer
48294C:  STR             R3, [R1]; CGenericGameStorage::ms_FilePos
48294E:  CBZ             R0, loc_482962
482950:  MOVS            R0, #1
482952:  POP             {R4,R6,R7,PC}
482954:  LDR             R0, =(PcSaveHelper_ptr - 0x48295C)
482956:  MOVS            R1, #4
482958:  ADD             R0, PC; PcSaveHelper_ptr
48295A:  LDR             R0, [R0]; PcSaveHelper
48295C:  STR             R1, [R0]
48295E:  MOVS            R0, #0
482960:  POP             {R4,R6,R7,PC}
482962:  MOVW            R0, #0xFDE9; unsigned int
482966:  MOVW            R4, #0xFDE9
48296A:  BLX             _Znaj; operator new[](uint)
48296E:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482976)
482970:  LDR             R2, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482978)
482972:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482974:  ADD             R2, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482976:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer ...
482978:  LDR             R2, [R2]; CGenericGameStorage::ms_WorkBuffer ...
48297A:  STR             R0, [R1]; CGenericGameStorage::_ms_WorkBuffer
48297C:  STRD.W          R0, R4, [R2]; CGenericGameStorage::ms_WorkBuffer
482980:  MOVS            R0, #1
482982:  POP             {R4,R6,R7,PC}
