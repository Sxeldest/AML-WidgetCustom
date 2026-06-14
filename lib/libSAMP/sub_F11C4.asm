; =========================================================
; Game Engine Function: sub_F11C4
; Address            : 0xF11C4 - 0xF1200
; =========================================================

F11C4:  PUSH            {R4,R5,R7,LR}
F11C6:  ADD             R7, SP, #8
F11C8:  LDR             R5, =(dword_23DF34 - 0xF11CE)
F11CA:  ADD             R5, PC; dword_23DF34
F11CC:  LDR             R0, [R5]
F11CE:  CBZ             R0, loc_F11D2
F11D0:  POP             {R4,R5,R7,PC}
F11D2:  LDR             R0, =(aLibcSo_0 - 0xF11DA); "libc.so" ...
F11D4:  MOVS            R1, #4; mode
F11D6:  ADD             R0, PC; "libc.so"
F11D8:  BLX             dlopen
F11DC:  CBZ             R0, loc_F11F4
F11DE:  LDR             R1, =(aAndroidGetDevi - 0xF11E6); "android_get_device_api_level" ...
F11E0:  MOV             R4, R0
F11E2:  ADD             R1, PC; "android_get_device_api_level"
F11E4:  BLX             dlsym
F11E8:  CBZ             R0, loc_F11EE
F11EA:  BLX             R0
F11EC:  STR             R0, [R5]
F11EE:  MOV             R0, R4; handle
F11F0:  BLX             CloseLib_0
F11F4:  LDR             R0, [R5]
F11F6:  CMP             R0, #0
F11F8:  BGT             locret_F11D0
F11FA:  MOVS            R0, #0x13
F11FC:  STR             R0, [R5]
F11FE:  POP             {R4,R5,R7,PC}
