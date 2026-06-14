; =========================================================
; Game Engine Function: _ZN11CTheScripts47InitialiseSpecialAnimGroupsAttachedToCharModelsEv
; Address            : 0x339188 - 0x3391C4
; =========================================================

339188:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x339194)
33918A:  MOVS            R1, #0
33918C:  MOV.W           R2, #0xFFFFFFFF
339190:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
339192:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
339194:  STRB            R1, [R0,#(byte_81994C - 0x819948)]
339196:  STR             R2, [R0]; CTheScripts::ScriptAttachedAnimGroups
339198:  STR             R2, [R0,#(dword_81995C - 0x819948)]
33919A:  STRB            R1, [R0,#(byte_819960 - 0x819948)]
33919C:  STRB.W          R1, [R0,#(byte_819974 - 0x819948)]
3391A0:  STR             R2, [R0,#(dword_819970 - 0x819948)]
3391A2:  STR             R2, [R0,#(dword_819984 - 0x819948)]
3391A4:  STRB.W          R1, [R0,#(byte_819988 - 0x819948)]
3391A8:  STR             R2, [R0,#(dword_819998 - 0x819948)]
3391AA:  STRB.W          R1, [R0,#(byte_81999C - 0x819948)]
3391AE:  STR             R2, [R0,#(dword_8199AC - 0x819948)]
3391B0:  STRB.W          R1, [R0,#(byte_8199B0 - 0x819948)]
3391B4:  STR             R2, [R0,#(dword_8199C0 - 0x819948)]
3391B6:  STRB.W          R1, [R0,#(dword_8199C4 - 0x819948)]
3391BA:  STRB.W          R1, [R0,#(byte_8199D8 - 0x819948)]
3391BE:  STR.W           R2, [R0,#(dword_8199D4 - 0x819948)]
3391C2:  BX              LR
