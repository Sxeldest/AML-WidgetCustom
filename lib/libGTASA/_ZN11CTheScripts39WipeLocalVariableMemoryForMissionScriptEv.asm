; =========================================================
; Game Engine Function: _ZN11CTheScripts39WipeLocalVariableMemoryForMissionScriptEv
; Address            : 0x32AB70 - 0x32AB84
; =========================================================

32AB70:  PUSH            {R7,LR}
32AB72:  MOV             R7, SP
32AB74:  LDR             R0, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x32AB7E)
32AB76:  MOV.W           R1, #0x1000
32AB7A:  ADD             R0, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32AB7C:  LDR             R0, [R0]; CTheScripts::LocalVariablesForCurrentMission ...
32AB7E:  BLX             j___aeabi_memclr8_0
32AB82:  POP             {R7,PC}
