; =========================================================
; Game Engine Function: _ZN6CCheat21ToggleShowTapToTargetEv
; Address            : 0x2FD4FC - 0x2FD520
; =========================================================

2FD4FC:  PUSH            {R4,R5,R7,LR}
2FD4FE:  ADD             R7, SP, #8
2FD500:  MOV.W           R0, #0xFFFFFFFF; int
2FD504:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD508:  LDR             R0, =(_ZN10CPlayerPed17bDebugTapToTargetE_ptr - 0x2FD50E)
2FD50A:  ADD             R0, PC; _ZN10CPlayerPed17bDebugTapToTargetE_ptr
2FD50C:  LDR             R4, [R0]; CPlayerPed::bDebugTapToTarget ...
2FD50E:  MOV.W           R0, #0xFFFFFFFF; int
2FD512:  LDRB            R5, [R4]; CPlayerPed::bDebugTapToTarget
2FD514:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD518:  EOR.W           R0, R5, #1
2FD51C:  STRB            R0, [R4]; CPlayerPed::bDebugTapToTarget
2FD51E:  POP             {R4,R5,R7,PC}
