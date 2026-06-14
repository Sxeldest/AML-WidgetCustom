; =========================================================
; Game Engine Function: _ZN12CWaterCannon15Update_NewInputEP7CVectorS1_
; Address            : 0x5CB098 - 0x5CB0D8
; =========================================================

5CB098:  LDRSH.W         R3, [R0,#4]
5CB09C:  VLDR            D16, [R1]
5CB0A0:  LDR             R1, [R1,#8]
5CB0A2:  ADD.W           R3, R3, R3,LSL#1
5CB0A6:  ADD.W           R3, R0, R3,LSL#2
5CB0AA:  STR             R1, [R3,#0x14]
5CB0AC:  VSTR            D16, [R3,#0xC]
5CB0B0:  LDRSH.W         R1, [R0,#4]
5CB0B4:  VLDR            D16, [R2]
5CB0B8:  LDR             R2, [R2,#8]
5CB0BA:  ADD.W           R1, R1, R1,LSL#1
5CB0BE:  ADD.W           R1, R0, R1,LSL#2
5CB0C2:  STR.W           R2, [R1,#0x194]
5CB0C6:  VSTR            D16, [R1,#0x18C]
5CB0CA:  LDRSH.W         R1, [R0,#4]
5CB0CE:  ADD             R0, R1
5CB0D0:  MOVS            R1, #1
5CB0D2:  STRB.W          R1, [R0,#0x30C]
5CB0D6:  BX              LR
