; =========================================================
; Game Engine Function: _ZN17CVehicleRecording21RegisterRecordingFileEPKc
; Address            : 0x324214 - 0x32425C
; =========================================================

324214:  PUSH            {R4,R6,R7,LR}
324216:  ADD             R7, SP, #8
324218:  SUB             SP, SP, #8
32421A:  MOV             R4, R0
32421C:  MOVW            R0, #0x352
324220:  ADR             R1, aCarrecD; "carrec%d"
324222:  ADD             R2, SP, #0x10+var_C
324224:  STR             R0, [SP,#0x10+var_C]
324226:  MOV             R0, R4; s
324228:  BLX             sscanf
32422C:  CBNZ            R0, loc_324238
32422E:  ADR             R1, aCarrecD_0; "CARREC%d"
324230:  ADD             R2, SP, #0x10+var_C
324232:  MOV             R0, R4; s
324234:  BLX             sscanf
324238:  LDR             R0, =(_ZN17CVehicleRecording16NumPlayBackFilesE_ptr - 0x324240)
32423A:  LDR             R1, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x324244)
32423C:  ADD             R0, PC; _ZN17CVehicleRecording16NumPlayBackFilesE_ptr
32423E:  LDR             R3, [SP,#0x10+var_C]
324240:  ADD             R1, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
324242:  LDR             R2, [R0]; CVehicleRecording::NumPlayBackFiles ...
324244:  LDR             R1, [R1]; CVehicleRecording::StreamingArray ...
324246:  LDR             R0, [R2]; CVehicleRecording::NumPlayBackFiles
324248:  LSLS            R4, R0, #4
32424A:  STR             R3, [R1,R4]
32424C:  ADD.W           R1, R1, R0,LSL#4
324250:  MOVS            R3, #0
324252:  STR             R3, [R1,#4]
324254:  ADDS            R1, R0, #1
324256:  STR             R1, [R2]; CVehicleRecording::NumPlayBackFiles
324258:  ADD             SP, SP, #8
32425A:  POP             {R4,R6,R7,PC}
