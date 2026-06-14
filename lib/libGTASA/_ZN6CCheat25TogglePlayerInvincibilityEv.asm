; =========================================================
; Game Engine Function: _ZN6CCheat25TogglePlayerInvincibilityEv
; Address            : 0x2FD4D4 - 0x2FD4F8
; =========================================================

2FD4D4:  PUSH            {R4,R5,R7,LR}
2FD4D6:  ADD             R7, SP, #8
2FD4D8:  MOV.W           R0, #0xFFFFFFFF; int
2FD4DC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD4E0:  LDR             R0, =(_ZN10CPlayerPed22bDebugPlayerInvincibleE_ptr - 0x2FD4E6)
2FD4E2:  ADD             R0, PC; _ZN10CPlayerPed22bDebugPlayerInvincibleE_ptr
2FD4E4:  LDR             R4, [R0]; CPlayerPed::bDebugPlayerInvincible ...
2FD4E6:  MOV.W           R0, #0xFFFFFFFF; int
2FD4EA:  LDRB            R5, [R4]; CPlayerPed::bDebugPlayerInvincible
2FD4EC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD4F0:  EOR.W           R0, R5, #1
2FD4F4:  STRB            R0, [R4]; CPlayerPed::bDebugPlayerInvincible
2FD4F6:  POP             {R4,R5,R7,PC}
