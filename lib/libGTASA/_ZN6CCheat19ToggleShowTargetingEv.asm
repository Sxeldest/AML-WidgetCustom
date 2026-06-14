; =========================================================
; Game Engine Function: _ZN6CCheat19ToggleShowTargetingEv
; Address            : 0x2FD524 - 0x2FD548
; =========================================================

2FD524:  PUSH            {R4,R5,R7,LR}
2FD526:  ADD             R7, SP, #8
2FD528:  MOV.W           R0, #0xFFFFFFFF; int
2FD52C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD530:  LDR             R0, =(_ZN10CPlayerPed16bDebugTargettingE_ptr - 0x2FD536)
2FD532:  ADD             R0, PC; _ZN10CPlayerPed16bDebugTargettingE_ptr
2FD534:  LDR             R4, [R0]; CPlayerPed::bDebugTargetting ...
2FD536:  MOV.W           R0, #0xFFFFFFFF; int
2FD53A:  LDRB            R5, [R4]; CPlayerPed::bDebugTargetting
2FD53C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD540:  EOR.W           R0, R5, #1
2FD544:  STRB            R0, [R4]; CPlayerPed::bDebugTargetting
2FD546:  POP             {R4,R5,R7,PC}
