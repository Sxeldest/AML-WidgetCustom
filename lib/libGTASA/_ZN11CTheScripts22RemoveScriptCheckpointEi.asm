; =========================================================
; Game Engine Function: _ZN11CTheScripts22RemoveScriptCheckpointEi
; Address            : 0x358A20 - 0x358A60
; =========================================================

358A20:  PUSH            {R4,R5,R7,LR}
358A22:  ADD             R7, SP, #8
358A24:  MOVS            R1, #3; int
358A26:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
358A2A:  ADDS            R1, R0, #1
358A2C:  IT EQ
358A2E:  POPEQ           {R4,R5,R7,PC}
358A30:  LDR             R1, =(_ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x358A38)
358A32:  MOVS            R5, #0
358A34:  ADD             R1, PC; _ZN11CTheScripts21ScriptCheckpointArrayE_ptr
358A36:  LDR             R1, [R1]; CTheScripts::ScriptCheckpointArray ...
358A38:  ADD.W           R4, R1, R0,LSL#3
358A3C:  LDR.W           R2, [R4,#4]!; unsigned __int16
358A40:  STRB.W          R5, [R1,R0,LSL#3]
358A44:  CMP             R2, #0
358A46:  ITTT NE
358A48:  LDRHNE          R1, [R2]; unsigned int
358A4A:  LDRNE           R0, [R2,#4]; this
358A4C:  BLXNE           j__ZN12CCheckpoints8DeleteCPEjt; CCheckpoints::DeleteCP(uint,ushort)
358A50:  LDR             R0, =(_ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr - 0x358A58)
358A52:  STR             R5, [R4]
358A54:  ADD             R0, PC; _ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr
358A56:  LDR             R0, [R0]; CTheScripts::NumberOfScriptCheckpoints ...
358A58:  LDRH            R1, [R0]; CTheScripts::NumberOfScriptCheckpoints
358A5A:  SUBS            R1, #1
358A5C:  STRH            R1, [R0]; CTheScripts::NumberOfScriptCheckpoints
358A5E:  POP             {R4,R5,R7,PC}
