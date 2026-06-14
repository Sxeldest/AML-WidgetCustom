; =========================================================
; Game Engine Function: _ZN14CRunningScript24GetIndexOfGlobalVariableEv
; Address            : 0x3299B4 - 0x329A22
; =========================================================

3299B4:  LDR             R2, [R0,#0x14]
3299B6:  MOV             R3, R2
3299B8:  LDRSB.W         R1, [R3],#1
3299BC:  STR             R3, [R0,#0x14]
3299BE:  CMP             R1, #7
3299C0:  BEQ             loc_3299D2
3299C2:  CMP             R1, #2
3299C4:  BNE             loc_329A1E
3299C6:  LDRH.W          R1, [R2,#1]
3299CA:  ADDS            R2, #3
3299CC:  STR             R2, [R0,#0x14]
3299CE:  UXTH            R0, R1
3299D0:  BX              LR
3299D2:  PUSH            {R7,LR}
3299D4:  MOV             R7, SP
3299D6:  LDRSH.W         R1, [R2,#5]
3299DA:  ADD.W           LR, R2, #7
3299DE:  LDRH.W          R3, [R2,#3]
3299E2:  LDRH.W          R12, [R2,#1]
3299E6:  CMP.W           R1, #0xFFFFFFFF
3299EA:  BLE             loc_329A08
3299EC:  LDR             R1, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x3299F6)
3299EE:  LDRB.W          R2, [R0,#0xFC]
3299F2:  ADD             R1, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
3299F4:  CMP             R2, #0
3299F6:  LDR             R1, [R1]; CTheScripts::LocalVariablesForCurrentMission ...
3299F8:  ADD.W           R1, R1, R3,LSL#2
3299FC:  ADD.W           R3, R0, R3,LSL#2
329A00:  IT EQ
329A02:  ADDEQ.W         R1, R3, #0x3C ; '<'
329A06:  B               loc_329A10
329A08:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329A0E)
329A0A:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329A0C:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
329A0E:  ADD             R1, R3
329A10:  LDR             R1, [R1]
329A12:  STR.W           LR, [R0,#0x14]
329A16:  ADD.W           R1, R12, R1,LSL#2
329A1A:  POP.W           {R7,LR}
329A1E:  UXTH            R0, R1
329A20:  BX              LR
