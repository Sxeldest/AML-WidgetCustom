; =========================================================
; Game Engine Function: _Z14OS_GamepadAxisjj
; Address            : 0x26842C - 0x268460
; =========================================================

26842C:  SUBS            R1, #0x40 ; '@'
26842E:  VLDR            S0, =0.0
268432:  CMP             R1, #5
268434:  BHI             loc_26845A
268436:  LDR             R2, =(lastGamepadType_ptr - 0x26843C)
268438:  ADD             R2, PC; lastGamepadType_ptr
26843A:  LDR             R2, [R2]; lastGamepadType
26843C:  LDR.W           R2, [R2,R0,LSL#2]
268440:  ADDS            R2, #1
268442:  BEQ             loc_26845A
268444:  LDR             R2, =(lastGamepadAxis_ptr - 0x26844E)
268446:  ADD.W           R0, R0, R0,LSL#1
26844A:  ADD             R2, PC; lastGamepadAxis_ptr
26844C:  LDR             R2, [R2]; lastGamepadAxis
26844E:  ADD.W           R0, R2, R0,LSL#3
268452:  ADD.W           R0, R0, R1,LSL#2
268456:  VLDR            S0, [R0]
26845A:  VMOV            R0, S0
26845E:  BX              LR
