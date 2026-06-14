; =========================================================
; Game Engine Function: _ZN17CVehicleRecording27FindIndexWithFileNameNumberEi
; Address            : 0x321FF0 - 0x32201A
; =========================================================

321FF0:  MOV             R12, R0
321FF2:  LDR             R0, =(_ZN17CVehicleRecording16NumPlayBackFilesE_ptr - 0x321FF8)
321FF4:  ADD             R0, PC; _ZN17CVehicleRecording16NumPlayBackFilesE_ptr
321FF6:  LDR             R0, [R0]; CVehicleRecording::NumPlayBackFiles ...
321FF8:  LDR             R2, [R0]; CVehicleRecording::NumPlayBackFiles
321FFA:  CMP             R2, #1
321FFC:  BLT             loc_322016
321FFE:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x322004)
322000:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
322002:  LDR             R3, [R0]; CVehicleRecording::StreamingArray ...
322004:  MOVS            R0, #0
322006:  LDR             R1, [R3]; CVehicleRecording::StreamingArray
322008:  CMP             R1, R12
32200A:  IT EQ
32200C:  BXEQ            LR
32200E:  ADDS            R0, #1
322010:  ADDS            R3, #0x10
322012:  CMP             R0, R2
322014:  BLT             loc_322006
322016:  MOVS            R0, #0
322018:  BX              LR
