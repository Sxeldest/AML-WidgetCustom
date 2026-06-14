; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage14LoadWorkBufferEv
; Address            : 0x4837B8 - 0x4838A4
; =========================================================

4837B8:  PUSH            {R4-R7,LR}
4837BA:  ADD             R7, SP, #0xC
4837BC:  PUSH.W          {R8}
4837C0:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x4837C6)
4837C2:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
4837C4:  LDR             R0, [R0]; CGenericGameStorage::ms_bFailed ...
4837C6:  LDRB            R0, [R0]; CGenericGameStorage::ms_bFailed
4837C8:  CBZ             R0, loc_4837D2
4837CA:  MOVS            R0, #0
4837CC:  POP.W           {R8}
4837D0:  POP             {R4-R7,PC}
4837D2:  LDR             R0, =(_ZN19CGenericGameStorage10ms_FilePosE_ptr - 0x4837DE)
4837D4:  MOVW            R4, #0xFDE8
4837D8:  LDR             R1, =(_ZN19CGenericGameStorage11ms_FileSizeE_ptr - 0x4837E0)
4837DA:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_FilePosE_ptr
4837DC:  ADD             R1, PC; _ZN19CGenericGameStorage11ms_FileSizeE_ptr
4837DE:  LDR             R0, [R0]; CGenericGameStorage::ms_FilePos ...
4837E0:  LDR             R1, [R1]; CGenericGameStorage::ms_FileSize ...
4837E2:  LDR             R0, [R0]; CGenericGameStorage::ms_FilePos
4837E4:  LDR             R1, [R1]; CGenericGameStorage::ms_FileSize
4837E6:  ADDS            R2, R0, R4
4837E8:  CMP             R2, R1
4837EA:  IT HI
4837EC:  SUBHI           R4, R1, R0
4837EE:  CMP             R4, #0
4837F0:  BEQ             loc_4837CA
4837F2:  ADDS            R0, R4, #3
4837F4:  BIC.W           R0, R0, #3
4837F8:  CMP             R4, R0
4837FA:  BNE             loc_4837CA
4837FC:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x483806)
4837FE:  MOV             R2, R4; char *
483800:  LDR             R1, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x483808)
483802:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
483804:  ADD             R1, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
483806:  LDR             R6, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
483808:  LDR             R5, [R1]; CGenericGameStorage::ms_FileHandle ...
48380A:  LDR             R1, [R6]; unsigned int
48380C:  LDR             R0, [R5]; this
48380E:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
483812:  MOV             R8, R0
483814:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x48381C)
483816:  LDR             R2, [R6]; CGenericGameStorage::_ms_WorkBuffer
483818:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
48381A:  LDR             R1, [R0]; unsigned int
48381C:  LDR             R0, [R5]; this
48381E:  STRD.W          R2, R4, [R1]; CGenericGameStorage::ms_WorkBuffer
483822:  BLX             j__ZN8CFileMgr17GetErrorReadWriteEj; CFileMgr::GetErrorReadWrite(uint)
483826:  CMP             R8, R4
483828:  IT EQ
48382A:  CMPEQ           R0, #0
48382C:  BEQ             loc_48387E
48382E:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x483838)
483830:  MOVS            R2, #5
483832:  LDR             R1, =(PcSaveHelper_ptr - 0x48383A)
483834:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
483836:  ADD             R1, PC; PcSaveHelper_ptr
483838:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
48383A:  LDR             R1, [R1]; PcSaveHelper
48383C:  LDR             R0, [R0]; void *
48383E:  STR             R2, [R1]
483840:  CBZ             R0, loc_48385A
483842:  BLX             _ZdaPv; operator delete[](void *)
483846:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x483850)
483848:  MOVS            R2, #0
48384A:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x483852)
48384C:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
48384E:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
483850:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
483852:  LDR             R1, [R1]; unsigned int
483854:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
483856:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
48385A:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x483860)
48385C:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
48385E:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
483860:  LDR             R0, [R0]; this
483862:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
483866:  CBZ             R0, loc_483872
483868:  LDR             R0, =(PcSaveHelper_ptr - 0x483870)
48386A:  MOVS            R1, #6
48386C:  ADD             R0, PC; PcSaveHelper_ptr
48386E:  LDR             R0, [R0]; PcSaveHelper
483870:  STR             R1, [R0]
483872:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x48387A)
483874:  MOVS            R1, #1
483876:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
483878:  LDR             R0, [R0]; CGenericGameStorage::ms_bFailed ...
48387A:  STRB            R1, [R0]; CGenericGameStorage::ms_bFailed
48387C:  B               loc_4837CA
48387E:  LDR             R0, =(_ZN19CGenericGameStorage10ms_FilePosE_ptr - 0x483886)
483880:  LDR             R1, =(_ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr - 0x48388A)
483882:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_FilePosE_ptr
483884:  LDR             R2, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x48388C)
483886:  ADD             R1, PC; _ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr
483888:  ADD             R2, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
48388A:  LDR             R0, [R0]; CGenericGameStorage::ms_FilePos ...
48388C:  LDR             R1, [R1]; CGenericGameStorage::ms_WorkBufferSize ...
48388E:  LDR             R2, [R2]; CGenericGameStorage::ms_WorkBufferPos ...
483890:  LDR             R3, [R0]; CGenericGameStorage::ms_FilePos
483892:  STR             R4, [R1]; CGenericGameStorage::ms_WorkBufferSize
483894:  MOVS            R1, #0
483896:  STR             R1, [R2]; CGenericGameStorage::ms_WorkBufferPos
483898:  ADDS            R1, R3, R4
48389A:  STR             R1, [R0]; CGenericGameStorage::ms_FilePos
48389C:  MOVS            R0, #1
48389E:  POP.W           {R8}
4838A2:  POP             {R4-R7,PC}
