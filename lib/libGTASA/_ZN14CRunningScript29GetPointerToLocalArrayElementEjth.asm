; =========================================================
; Game Engine Function: _ZN14CRunningScript29GetPointerToLocalArrayElementEjth
; Address            : 0x328EFC - 0x328F22
; =========================================================

328EFC:  LDR.W           R12, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x328F0C)
328F00:  MLA.W           R2, R3, R2, R1
328F04:  LDRB.W          R3, [R0,#0xFC]
328F08:  ADD             R12, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
328F0A:  CMP             R3, #0
328F0C:  LDR.W           R1, [R12]; CTheScripts::LocalVariablesForCurrentMission ...
328F10:  ADD.W           R1, R1, R2,LSL#2
328F14:  ADD.W           R0, R0, R2,LSL#2
328F18:  IT EQ
328F1A:  ADDEQ.W         R1, R0, #0x3C ; '<'
328F1E:  MOV             R0, R1
328F20:  BX              LR
