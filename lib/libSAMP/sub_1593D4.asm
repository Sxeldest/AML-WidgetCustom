; =========================================================
; Game Engine Function: sub_1593D4
; Address            : 0x1593D4 - 0x1593EE
; =========================================================

1593D4:  PUSH            {R4,R6,R7,LR}
1593D6:  ADD             R7, SP, #8
1593D8:  MOV             R4, R0
1593DA:  MOVS            R0, #8; unsigned int
1593DC:  BLX             j__Znwj; operator new(uint)
1593E0:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN4BASS22GetAllRecordingDevicesEvE3$_0NS_9allocatorIS3_EEFbiRK15BASS_DEVICEINFOEEE - 0x1593E8); `vtable for'std::__function::__func<BASS::GetAllRecordingDevices(void)::$_0,std::allocator<BASS::GetAllRecordingDevices(void)::$_0>,bool ()(int,BASS_DEVICEINFO const&)> ...
1593E2:  LDR             R2, [R4,#4]
1593E4:  ADD             R1, PC; `vtable for'std::__function::__func<BASS::GetAllRecordingDevices(void)::$_0,std::allocator<BASS::GetAllRecordingDevices(void)::$_0>,bool ()(int,BASS_DEVICEINFO const&)>
1593E6:  ADDS            R1, #8
1593E8:  STRD.W          R1, R2, [R0]
1593EC:  POP             {R4,R6,R7,PC}
