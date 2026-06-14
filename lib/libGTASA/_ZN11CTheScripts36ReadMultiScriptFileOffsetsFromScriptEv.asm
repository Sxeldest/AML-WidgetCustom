; =========================================================
; Game Engine Function: _ZN11CTheScripts36ReadMultiScriptFileOffsetsFromScriptEv
; Address            : 0x34E0C0 - 0x34E13A
; =========================================================

34E0C0:  PUSH            {R4,R5,R7,LR}
34E0C2:  ADD             R7, SP, #8
34E0C4:  LDR             R0, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x34E0CC)
34E0C6:  LDR             R2, =(_ZN11CTheScripts14MainScriptSizeE_ptr - 0x34E0D0)
34E0C8:  ADD             R0, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
34E0CA:  LDR             R3, =(_ZN11CTheScripts24LargestMissionScriptSizeE_ptr - 0x34E0D8)
34E0CC:  ADD             R2, PC; _ZN11CTheScripts14MainScriptSizeE_ptr
34E0CE:  LDR.W           R12, =(_ZN11CTheScripts22NumberOfMissionScriptsE_ptr - 0x34E0DE)
34E0D2:  LDR             R0, [R0]; CTheScripts::ScriptSpace ...
34E0D4:  ADD             R3, PC; _ZN11CTheScripts24LargestMissionScriptSizeE_ptr
34E0D6:  LDR.W           LR, =(_ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr - 0x34E0E6)
34E0DA:  ADD             R12, PC; _ZN11CTheScripts22NumberOfMissionScriptsE_ptr
34E0DC:  LDR             R2, [R2]; CTheScripts::MainScriptSize ...
34E0DE:  LDR.W           R1, [R0,#(dword_7BD797 - 0x7BD794)]
34E0E2:  ADD             LR, PC; _ZN11CTheScripts31NumberOfExclusiveMissionScriptsE_ptr
34E0E4:  LDR             R5, =(_ZN11CTheScripts42LargestNumberOfMissionScriptLocalVariablesE_ptr - 0x34E0EE)
34E0E6:  ADD             R1, R0
34E0E8:  LDR             R3, [R3]; CTheScripts::LargestMissionScriptSize ...
34E0EA:  ADD             R5, PC; _ZN11CTheScripts42LargestNumberOfMissionScriptLocalVariablesE_ptr
34E0EC:  LDR.W           R4, [LR]; CTheScripts::NumberOfExclusiveMissionScripts ...
34E0F0:  LDR.W           R1, [R1,#3]
34E0F4:  ADD             R1, R0
34E0F6:  LDR             R0, [R1,#8]
34E0F8:  STR             R0, [R2]; CTheScripts::MainScriptSize
34E0FA:  LDR.W           R2, [R12]; CTheScripts::NumberOfMissionScripts ...
34E0FE:  LDR             R0, [R1,#0xC]
34E100:  LDRSH.W         R12, [R1,#0x10]
34E104:  STR             R0, [R3]; CTheScripts::LargestMissionScriptSize
34E106:  LDR             R0, [R5]; CTheScripts::LargestNumberOfMissionScriptLocalVariables ...
34E108:  CMP.W           R12, #1
34E10C:  STRH.W          R12, [R2]; CTheScripts::NumberOfMissionScripts
34E110:  LDRH            R2, [R1,#0x12]
34E112:  STRH            R2, [R4]; CTheScripts::NumberOfExclusiveMissionScripts
34E114:  LDR             R2, [R1,#0x14]
34E116:  STR             R2, [R0]; CTheScripts::LargestNumberOfMissionScriptLocalVariables
34E118:  IT LT
34E11A:  POPLT           {R4,R5,R7,PC}
34E11C:  LDR             R0, =(_ZN11CTheScripts16MultiScriptArrayE_ptr - 0x34E126)
34E11E:  ADDS            R1, #0x18
34E120:  MOVS            R2, #0
34E122:  ADD             R0, PC; _ZN11CTheScripts16MultiScriptArrayE_ptr
34E124:  LDR             R3, [R0]; CTheScripts::MultiScriptArray ...
34E126:  MOVS            R0, #0
34E128:  ADDS            R0, #1
34E12A:  LDR.W           R5, [R1],#4
34E12E:  STR.W           R5, [R3,R2,LSL#2]
34E132:  UXTH            R2, R0
34E134:  CMP             R2, R12
34E136:  BLT             loc_34E128
34E138:  POP             {R4,R5,R7,PC}
