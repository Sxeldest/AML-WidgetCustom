; =========================================================
; Game Engine Function: _ZN14CRunningScript25GetPointerToLocalVariableEj
; Address            : 0x328ED8 - 0x328EF6
; =========================================================

328ED8:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x328EE6)
328EDA:  LDRB.W          R3, [R0,#0xFC]
328EDE:  ADD.W           R0, R0, R1,LSL#2
328EE2:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
328EE4:  CMP             R3, #0
328EE6:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
328EE8:  ADD.W           R2, R2, R1,LSL#2
328EEC:  IT EQ
328EEE:  ADDEQ.W         R2, R0, #0x3C ; '<'
328EF2:  MOV             R0, R2
328EF4:  BX              LR
