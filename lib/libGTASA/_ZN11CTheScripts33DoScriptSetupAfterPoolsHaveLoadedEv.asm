; =========================================================
; Game Engine Function: _ZN11CTheScripts33DoScriptSetupAfterPoolsHaveLoadedEv
; Address            : 0x48CCCC - 0x48CD22
; =========================================================

48CCCC:  PUSH            {R4-R7,LR}
48CCCE:  ADD             R7, SP, #0xC
48CCD0:  PUSH.W          {R8-R10}
48CCD4:  LDR             R0, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x48CCE0)
48CCD6:  MOVS            R4, #0
48CCD8:  MOV.W           R9, #0xFFFFFFFF
48CCDC:  ADD             R0, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
48CCDE:  LDR             R5, [R0]; CTheScripts::ScriptConnectLodsObjects ...
48CCE0:  LDR             R0, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x48CCE6)
48CCE2:  ADD             R0, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
48CCE4:  LDR.W           R10, [R0]; CTheScripts::ScriptConnectLodsObjects ...
48CCE8:  LDR             R0, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x48CCEE)
48CCEA:  ADD             R0, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
48CCEC:  LDR.W           R8, [R0]; CTheScripts::ScriptConnectLodsObjects ...
48CCF0:  LDR.W           R0, [R5,R4,LSL#3]; this
48CCF4:  ADDS            R1, R0, #1
48CCF6:  ITTT NE
48CCF8:  ADDNE.W         R6, R10, R4,LSL#3
48CCFC:  LDRNE           R1, [R6,#4]; int
48CCFE:  ADDSNE.W        R2, R1, #1; int
48CD02:  BEQ             loc_48CD16
48CD04:  BLX             j__ZN11CTheScripts25ScriptConnectLodsFunctionEii; CTheScripts::ScriptConnectLodsFunction(int,int)
48CD08:  CMP             R0, #0
48CD0A:  ITTT EQ
48CD0C:  LSLEQ           R0, R4, #1
48CD0E:  STREQ.W         R9, [R8,R0,LSL#2]
48CD12:  STREQ.W         R9, [R6,#4]
48CD16:  ADDS            R4, #1
48CD18:  CMP             R4, #0xA
48CD1A:  BNE             loc_48CCF0
48CD1C:  POP.W           {R8-R10}
48CD20:  POP             {R4-R7,PC}
