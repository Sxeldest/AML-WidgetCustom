; =========================================================
; Game Engine Function: _ZN6CTimer7SuspendEv
; Address            : 0x420F14 - 0x420F4A
; =========================================================

420F14:  LDR             R0, =(byte_96B524 - 0x420F1A)
420F16:  ADD             R0, PC; byte_96B524
420F18:  LDRB            R0, [R0]
420F1A:  CMP             R0, #1
420F1C:  BNE             locret_420F48
420F1E:  LDR             R0, =(dword_96B520 - 0x420F24)
420F20:  ADD             R0, PC; dword_96B520
420F22:  LDR             R1, [R0]
420F24:  ADDS            R1, #1
420F26:  STR             R1, [R0]
420F28:  CMP             R1, #1
420F2A:  IT HI
420F2C:  BXHI            LR
420F2E:  PUSH            {R7,LR}
420F30:  MOV             R7, SP
420F32:  LDR             R0, =(timerDef_ptr - 0x420F38)
420F34:  ADD             R0, PC; timerDef_ptr
420F36:  LDR             R0, [R0]; timerDef
420F38:  LDR             R0, [R0]
420F3A:  BLX             R0
420F3C:  LDR             R2, =(dword_96B530 - 0x420F42)
420F3E:  ADD             R2, PC; dword_96B530
420F40:  STRD.W          R0, R1, [R2]
420F44:  POP.W           {R7,LR}
420F48:  BX              LR
