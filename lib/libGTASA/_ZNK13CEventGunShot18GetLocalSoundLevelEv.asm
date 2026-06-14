; =========================================================
; Game Engine Function: _ZNK13CEventGunShot18GetLocalSoundLevelEv
; Address            : 0x379464 - 0x379474
; =========================================================

379464:  LDRB.W          R0, [R0,#0x2C]
379468:  ADR             R1, dword_379474
37946A:  CMP             R0, #0
37946C:  IT NE
37946E:  ADDNE           R1, #4
379470:  LDR             R0, [R1]
379472:  BX              LR
