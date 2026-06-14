; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware9StopSoundEst
; Address            : 0x392C0A - 0x392C30
; =========================================================

392C0A:  CMP             R1, #0
392C0C:  BLT             locret_392C2E
392C0E:  ADD.W           R3, R0, R1,LSL#1
392C12:  LDRH.W          R3, [R3,#0x4C]
392C16:  CMP             R3, R2
392C18:  IT LS
392C1A:  BXLS            LR
392C1C:  ADD             R1, R2
392C1E:  ADD.W           R0, R0, R1,LSL#2
392C22:  LDR.W           R0, [R0,#0xBCC]
392C26:  CBZ             R0, locret_392C2E
392C28:  LDR             R1, [R0]
392C2A:  LDR             R1, [R1,#0x20]
392C2C:  BX              R1
392C2E:  BX              LR
