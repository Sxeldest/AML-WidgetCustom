; =========================================================
; Game Engine Function: _ZN17CVehicleRecording26HasRecordingFileBeenLoadedEi
; Address            : 0x32427C - 0x3242B8
; =========================================================

32427C:  LDR             R1, =(_ZN17CVehicleRecording16NumPlayBackFilesE_ptr - 0x324282)
32427E:  ADD             R1, PC; _ZN17CVehicleRecording16NumPlayBackFilesE_ptr
324280:  LDR             R1, [R1]; CVehicleRecording::NumPlayBackFiles ...
324282:  LDR.W           R12, [R1]; CVehicleRecording::NumPlayBackFiles
324286:  CMP.W           R12, #1
32428A:  BLT             loc_3242A2
32428C:  LDR             R1, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x324292)
32428E:  ADD             R1, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
324290:  LDR             R3, [R1]; CVehicleRecording::StreamingArray ...
324292:  MOVS            R1, #0
324294:  LDR             R2, [R3]; CVehicleRecording::StreamingArray
324296:  CMP             R2, R0
324298:  BEQ             loc_3242A4
32429A:  ADDS            R1, #1
32429C:  ADDS            R3, #0x10
32429E:  CMP             R1, R12
3242A0:  BLT             loc_324294
3242A2:  MOVS            R1, #0
3242A4:  LDR             R0, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x3242AA)
3242A6:  ADD             R0, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
3242A8:  LDR             R0, [R0]; CVehicleRecording::StreamingArray ...
3242AA:  ADD.W           R0, R0, R1,LSL#4
3242AE:  LDR             R0, [R0,#4]
3242B0:  CMP             R0, #0
3242B2:  IT NE
3242B4:  MOVNE           R0, #1
3242B6:  BX              LR
