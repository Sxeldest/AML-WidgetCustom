; =========================================================
; Game Engine Function: sub_1593F4
; Address            : 0x1593F4 - 0x159402
; =========================================================

1593F4:  LDR             R2, =(_ZTVNSt6__ndk110__function6__funcIZN4BASS22GetAllRecordingDevicesEvE3$_0NS_9allocatorIS3_EEFbiRK15BASS_DEVICEINFOEEE - 0x1593FC); `vtable for'std::__function::__func<BASS::GetAllRecordingDevices(void)::$_0,std::allocator<BASS::GetAllRecordingDevices(void)::$_0>,bool ()(int,BASS_DEVICEINFO const&)> ...
1593F6:  LDR             R0, [R0,#4]
1593F8:  ADD             R2, PC; `vtable for'std::__function::__func<BASS::GetAllRecordingDevices(void)::$_0,std::allocator<BASS::GetAllRecordingDevices(void)::$_0>,bool ()(int,BASS_DEVICEINFO const&)>
1593FA:  ADDS            R2, #8
1593FC:  STRD.W          R2, R0, [R1]
159400:  BX              LR
