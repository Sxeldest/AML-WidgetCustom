; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage14SaveWorkBufferEb
; Address            : 0x4829F8 - 0x482B24
; =========================================================

4829F8:  PUSH            {R4,R5,R7,LR}
4829FA:  ADD             R7, SP, #8
4829FC:  LDR             R1, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x482A02)
4829FE:  ADD             R1, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
482A00:  LDR             R1, [R1]; CGenericGameStorage::ms_bFailed ...
482A02:  LDRB            R1, [R1]; CGenericGameStorage::ms_bFailed
482A04:  CMP             R1, #0
482A06:  ITT NE
482A08:  MOVNE           R0, #0
482A0A:  POPNE           {R4,R5,R7,PC}
482A0C:  LDR             R1, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x482A12)
482A0E:  ADD             R1, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
482A10:  LDR             R1, [R1]; CGenericGameStorage::ms_WorkBufferPos ...
482A12:  LDR             R2, [R1]; CGenericGameStorage::ms_WorkBufferPos
482A14:  CMP             R2, #0
482A16:  BEQ             loc_482ABA
482A18:  LDR             R3, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482A22)
482A1A:  MOVS            R4, #0
482A1C:  LDR             R1, =(_ZN19CGenericGameStorage11ms_CheckSumE_ptr - 0x482A24)
482A1E:  ADD             R3, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482A20:  ADD             R1, PC; _ZN19CGenericGameStorage11ms_CheckSumE_ptr
482A22:  LDR             R3, [R3]; CGenericGameStorage::_ms_WorkBuffer ...
482A24:  LDR             R1, [R1]; CGenericGameStorage::ms_CheckSum ...
482A26:  LDR.W           R12, [R3]; CGenericGameStorage::_ms_WorkBuffer
482A2A:  LDR             R3, =(_ZN19CGenericGameStorage11ms_CheckSumE_ptr - 0x482A32)
482A2C:  LDR             R1, [R1]; CGenericGameStorage::ms_CheckSum
482A2E:  ADD             R3, PC; _ZN19CGenericGameStorage11ms_CheckSumE_ptr
482A30:  LDR.W           LR, [R3]; CGenericGameStorage::ms_CheckSum ...
482A34:  LDRB.W          R3, [R12,R4]
482A38:  ADDS            R4, #1
482A3A:  CMP             R4, R2
482A3C:  ADD             R1, R3; bool
482A3E:  STR.W           R1, [LR]; CGenericGameStorage::ms_CheckSum
482A42:  BCC             loc_482A34
482A44:  CBZ             R0, loc_482A7A
482A46:  MOVW            R0, #0xFDE5
482A4A:  CMP             R2, R0
482A4C:  BCC             loc_482A5C
482A4E:  MOVS            R0, #0; this
482A50:  BLX             j__ZN19CGenericGameStorage14SaveWorkBufferEb; CGenericGameStorage::SaveWorkBuffer(bool)
482A54:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x482A5A)
482A56:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
482A58:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
482A5A:  LDR             R2, [R0]; CGenericGameStorage::ms_WorkBufferPos
482A5C:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482A64)
482A5E:  LDR             R1, =(_ZN19CGenericGameStorage11ms_CheckSumE_ptr - 0x482A68)
482A60:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482A62:  LDR             R3, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x482A6C)
482A64:  ADD             R1, PC; _ZN19CGenericGameStorage11ms_CheckSumE_ptr
482A66:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482A68:  ADD             R3, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
482A6A:  LDR             R1, [R1]; CGenericGameStorage::ms_CheckSum ...
482A6C:  LDR             R3, [R3]; int
482A6E:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer
482A70:  LDR             R1, [R1]; CGenericGameStorage::ms_CheckSum
482A72:  STR             R1, [R0,R2]
482A74:  LDR             R0, [R3]; CGenericGameStorage::ms_WorkBufferPos
482A76:  ADDS            R2, R0, #4; char *
482A78:  STR             R2, [R3]; CGenericGameStorage::ms_WorkBufferPos
482A7A:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482A82)
482A7C:  LDR             R1, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482A84)
482A7E:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482A80:  ADD             R1, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482A82:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
482A84:  LDR             R5, [R1]; CGenericGameStorage::ms_FileHandle ...
482A86:  LDR             R1, [R0]; unsigned int
482A88:  LDR             R0, [R5]; this
482A8A:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
482A8E:  MOV             R4, R0
482A90:  LDR             R0, [R5]; this
482A92:  BLX             j__ZN8CFileMgr17GetErrorReadWriteEj; CFileMgr::GetErrorReadWrite(uint)
482A96:  CBNZ            R0, loc_482ABE
482A98:  LDR             R0, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x482A9E)
482A9A:  ADD             R0, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
482A9C:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos ...
482A9E:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBufferPos
482AA0:  CMP             R4, R0
482AA2:  BNE             loc_482ABE
482AA4:  LDR             R0, =(_ZN19CGenericGameStorage10ms_FilePosE_ptr - 0x482AAE)
482AA6:  MOVS            R3, #0
482AA8:  LDR             R1, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x482AB0)
482AAA:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_FilePosE_ptr
482AAC:  ADD             R1, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
482AAE:  LDR             R0, [R0]; CGenericGameStorage::ms_FilePos ...
482AB0:  LDR             R1, [R1]; CGenericGameStorage::ms_WorkBufferPos ...
482AB2:  LDR             R2, [R0]; CGenericGameStorage::ms_FilePos
482AB4:  STR             R3, [R1]; CGenericGameStorage::ms_WorkBufferPos
482AB6:  ADDS            R1, R2, R4
482AB8:  STR             R1, [R0]; CGenericGameStorage::ms_FilePos
482ABA:  MOVS            R0, #1
482ABC:  POP             {R4,R5,R7,PC}
482ABE:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482AC8)
482AC0:  MOVS            R2, #0xB
482AC2:  LDR             R1, =(PcSaveHelper_ptr - 0x482ACA)
482AC4:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482AC6:  ADD             R1, PC; PcSaveHelper_ptr
482AC8:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
482ACA:  LDR             R1, [R1]; PcSaveHelper
482ACC:  LDR             R0, [R0]; void *
482ACE:  STR             R2, [R1]
482AD0:  CBZ             R0, loc_482AEA
482AD2:  BLX             _ZdaPv; operator delete[](void *)
482AD6:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482AE0)
482AD8:  MOVS            R2, #0
482ADA:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482AE2)
482ADC:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482ADE:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482AE0:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482AE2:  LDR             R1, [R1]; unsigned int
482AE4:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
482AE6:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
482AEA:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482AF0)
482AEC:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482AEE:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
482AF0:  LDR             R0, [R0]; this
482AF2:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
482AF6:  CBZ             R0, loc_482B02
482AF8:  LDR             R0, =(PcSaveHelper_ptr - 0x482B00)
482AFA:  MOVS            R1, #6
482AFC:  ADD             R0, PC; PcSaveHelper_ptr
482AFE:  LDR             R0, [R0]; PcSaveHelper
482B00:  STR             R1, [R0]
482B02:  LDR             R0, =(_ZN19CGenericGameStorage24ms_SaveFileNameJustSavedE_ptr - 0x482B0E)
482B04:  MOVW            R2, #0x103; size_t
482B08:  LDR             R1, =(_ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr - 0x482B10)
482B0A:  ADD             R0, PC; _ZN19CGenericGameStorage24ms_SaveFileNameJustSavedE_ptr
482B0C:  ADD             R1, PC; _ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr
482B0E:  LDR             R0, [R0]; char *
482B10:  LDR             R1, [R1]; char *
482B12:  BLX             strncpy
482B16:  LDR             R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x482B1E)
482B18:  MOVS            R1, #1
482B1A:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
482B1C:  LDR             R0, [R0]; CGenericGameStorage::ms_bFailed ...
482B1E:  STRB            R1, [R0]; CGenericGameStorage::ms_bFailed
482B20:  MOVS            R0, #0
482B22:  POP             {R4,R5,R7,PC}
