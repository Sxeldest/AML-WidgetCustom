; =========================================================
; Game Engine Function: _ZN11CTheScripts26InitialiseSpecialAnimGroupEt
; Address            : 0x339168 - 0x339184
; =========================================================

339168:  LDR             R1, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x339176)
33916A:  ADD.W           R0, R0, R0,LSL#2
33916E:  MOV.W           R2, #0xFFFFFFFF
339172:  ADD             R1, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
339174:  LDR             R1, [R1]; CTheScripts::ScriptAttachedAnimGroups ...
339176:  STR.W           R2, [R1,R0,LSL#2]
33917A:  ADD.W           R0, R1, R0,LSL#2
33917E:  MOVS            R1, #0
339180:  STRB            R1, [R0,#4]
339182:  BX              LR
