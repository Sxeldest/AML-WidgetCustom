; =========================================================
; Game Engine Function: sub_159258
; Address            : 0x159258 - 0x159296
; =========================================================

159258:  PUSH            {R4,R5,R7,LR}
15925A:  ADD             R7, SP, #8
15925C:  SUB             SP, SP, #0x18
15925E:  MOV             R4, R0
159260:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN4BASS22GetAllRecordingDevicesEvE3$_0NS_9allocatorIS3_EEFbiRK15BASS_DEVICEINFOEEE - 0x15926A); `vtable for'std::__function::__func<BASS::GetAllRecordingDevices(void)::$_0,std::allocator<BASS::GetAllRecordingDevices(void)::$_0>,bool ()(int,BASS_DEVICEINFO const&)> ...
159262:  MOVS            R1, #0
159264:  MOV             R5, SP
159266:  ADD             R0, PC; `vtable for'std::__function::__func<BASS::GetAllRecordingDevices(void)::$_0,std::allocator<BASS::GetAllRecordingDevices(void)::$_0>,bool ()(int,BASS_DEVICEINFO const&)>
159268:  STRD.W          R1, R1, [R4]
15926C:  ADDS            R0, #8
15926E:  STR             R1, [R4,#8]
159270:  STR             R5, [SP,#0x20+var_10]
159272:  STR             R4, [SP,#0x20+var_1C]
159274:  STR             R0, [SP,#0x20+var_20]
159276:  MOV             R0, R5
159278:  BL              sub_15920A
15927C:  LDR             R0, [SP,#0x20+var_10]
15927E:  CMP             R5, R0
159280:  BEQ             loc_159288
159282:  CBZ             R0, loc_159292
159284:  MOVS            R1, #5
159286:  B               loc_15928A
159288:  MOVS            R1, #4
15928A:  LDR             R2, [R0]
15928C:  LDR.W           R1, [R2,R1,LSL#2]
159290:  BLX             R1
159292:  ADD             SP, SP, #0x18
159294:  POP             {R4,R5,R7,PC}
