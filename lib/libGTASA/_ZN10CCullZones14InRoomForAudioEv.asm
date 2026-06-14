; =========================================================
; Game Engine Function: _ZN10CCullZones14InRoomForAudioEv
; Address            : 0x5D03C0 - 0x5D03CE
; =========================================================

5D03C0:  LDR             R0, =(_ZN10CCullZones19CurrentFlags_CameraE_ptr - 0x5D03C6)
5D03C2:  ADD             R0, PC; _ZN10CCullZones19CurrentFlags_CameraE_ptr
5D03C4:  LDR             R0, [R0]; CCullZones::CurrentFlags_Camera ...
5D03C6:  LDRB            R0, [R0,#(byte_A7D3A1 - 0xA7D3A0)]
5D03C8:  UBFX.W          R0, R0, #1, #1
5D03CC:  BX              LR
