; =========================================================
; Game Engine Function: _Z16LIB_GamepadStateii
; Address            : 0x2702DC - 0x2702F0
; =========================================================

2702DC:  LDR             R2, =(gamepads_ptr - 0x2702E6)
2702DE:  ADD.W           R0, R0, R0,LSL#1
2702E2:  ADD             R2, PC; gamepads_ptr
2702E4:  LDR             R2, [R2]; gamepads
2702E6:  ADD.W           R0, R2, R0,LSL#7
2702EA:  LDR.W           R0, [R0,R1,LSL#2]
2702EE:  BX              LR
