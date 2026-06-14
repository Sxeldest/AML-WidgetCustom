; =========================================================
; Game Engine Function: _Z19RsInputDeviceAttach17RsInputDeviceTypePF13RsEventStatus7RsEventPvE
; Address            : 0x4D4288 - 0x4D42A8
; =========================================================

4D4288:  CMP             R0, #2
4D428A:  ITT HI
4D428C:  MOVHI           R0, #0
4D428E:  BXHI            LR
4D4290:  LDR             R2, =(off_6693DC - 0x4D4298)
4D4292:  LDR             R3, =(off_6693E8 - 0x4D429A)
4D4294:  ADD             R2, PC; off_6693DC
4D4296:  ADD             R3, PC; off_6693E8
4D4298:  LDR.W           R2, [R2,R0,LSL#2]
4D429C:  LDR.W           R3, [R3,R0,LSL#2]
4D42A0:  MOVS            R0, #1
4D42A2:  STR             R1, [R2]
4D42A4:  STR             R0, [R3]
4D42A6:  BX              LR
