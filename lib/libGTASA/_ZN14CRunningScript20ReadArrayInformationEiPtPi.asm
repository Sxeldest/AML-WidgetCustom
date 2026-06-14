; =========================================================
; Game Engine Function: _ZN14CRunningScript20ReadArrayInformationEiPtPi
; Address            : 0x328F28 - 0x328F7A
; =========================================================

328F28:  PUSH            {R4,R6,R7,LR}
328F2A:  ADD             R7, SP, #8
328F2C:  LDR.W           R12, [R0,#0x14]
328F30:  LDRH.W          LR, [R12]
328F34:  STRH.W          LR, [R2]
328F38:  LDRSH.W         R2, [R12,#4]
328F3C:  LDRH.W          LR, [R12,#2]
328F40:  CMP.W           R2, #0xFFFFFFFF
328F44:  BLE             loc_328F62
328F46:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x328F50)
328F48:  LDRB.W          R4, [R0,#0xFC]
328F4C:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
328F4E:  CMP             R4, #0
328F50:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
328F52:  ADD.W           R2, R2, LR,LSL#2
328F56:  ADD.W           LR, R0, LR,LSL#2
328F5A:  IT EQ
328F5C:  ADDEQ.W         R2, LR, #0x3C ; '<'
328F60:  B               loc_328F6A
328F62:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x328F68)
328F64:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
328F66:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
328F68:  ADD             R2, LR
328F6A:  LDR             R2, [R2]
328F6C:  CMP             R1, #0
328F6E:  STR             R2, [R3]
328F70:  ITT NE
328F72:  ADDNE.W         R1, R12, #6
328F76:  STRNE           R1, [R0,#0x14]
328F78:  POP             {R4,R6,R7,PC}
