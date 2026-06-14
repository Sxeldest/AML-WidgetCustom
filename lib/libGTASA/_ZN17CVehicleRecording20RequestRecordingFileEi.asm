; =========================================================
; Game Engine Function: _ZN17CVehicleRecording20RequestRecordingFileEi
; Address            : 0x322024 - 0x322058
; =========================================================

322024:  LDR             R1, =(_ZN17CVehicleRecording16NumPlayBackFilesE_ptr - 0x32202A)
322026:  ADD             R1, PC; _ZN17CVehicleRecording16NumPlayBackFilesE_ptr
322028:  LDR             R1, [R1]; CVehicleRecording::NumPlayBackFiles ...
32202A:  LDR.W           R12, [R1]; CVehicleRecording::NumPlayBackFiles
32202E:  CMP.W           R12, #1
322032:  BLT             loc_32204A
322034:  LDR             R1, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x32203A)
322036:  ADD             R1, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
322038:  LDR             R3, [R1]; CVehicleRecording::StreamingArray ...
32203A:  MOVS            R1, #0
32203C:  LDR             R2, [R3]; int
32203E:  CMP             R2, R0
322040:  BEQ             loc_32204C
322042:  ADDS            R1, #1
322044:  ADDS            R3, #0x10
322046:  CMP             R1, R12
322048:  BLT             loc_32203C
32204A:  MOVS            R1, #0
32204C:  MOVW            R0, #0x649B
322050:  ADD             R0, R1; this
322052:  MOVS            R1, #0xC; int
322054:  B.W             j_j__ZN10CStreaming12RequestModelEii; j_CStreaming::RequestModel(int,int)
