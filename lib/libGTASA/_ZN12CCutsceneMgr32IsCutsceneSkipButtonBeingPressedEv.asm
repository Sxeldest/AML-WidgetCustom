; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr32IsCutsceneSkipButtonBeingPressedEv
; Address            : 0x3900E8 - 0x3901A4
; =========================================================

3900E8:  PUSH            {R4,R6,R7,LR}
3900EA:  ADD             R7, SP, #8
3900EC:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x3900F2)
3900EE:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
3900F0:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
3900F2:  LDR             R0, [R0]; CTheScripts::pActiveScripts
3900F4:  CBZ             R0, loc_39012C
3900F6:  ADD.W           R4, R0, #8
3900FA:  ADR             R1, aCat3; "cat3"
3900FC:  MOV             R0, R4; char *
3900FE:  BLX             strcmp
390102:  CBZ             R0, loc_39014E
390104:  ADR             R1, aCat4; "cat4"
390106:  MOV             R0, R4; char *
390108:  BLX             strcmp
39010C:  CBZ             R0, loc_39014E
39010E:  ADR             R1, aZero1; "zero1"
390110:  MOV             R0, R4; char *
390112:  BLX             strcmp
390116:  CBZ             R0, loc_39014E
390118:  ADR             R1, aLa1fin1; "la1fin1"
39011A:  MOV             R0, R4; char *
39011C:  BLX             strcmp
390120:  CBZ             R0, loc_39014E
390122:  ADR             R1, aBcrash1; "bcrash1"
390124:  MOV             R0, R4; char *
390126:  BLX             strcmp
39012A:  CBZ             R0, loc_39014E
39012C:  MOVS            R0, #0; this
39012E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
390132:  LDRH            R1, [R0,#0x20]; int
390134:  CBZ             R1, loc_39013C
390136:  LDRH.W          R0, [R0,#0x50]
39013A:  CBZ             R0, loc_39014A
39013C:  MOVS            R0, #0; this
39013E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
390142:  MOVS            R0, #0x35 ; '5'
390144:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
390148:  CBZ             R0, loc_390152
39014A:  MOVS            R0, #1
39014C:  POP             {R4,R6,R7,PC}
39014E:  MOVS            R0, #0
390150:  POP             {R4,R6,R7,PC}
390152:  MOVS            R0, #0; this
390154:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
390158:  MOVS            R0, #0x20 ; ' '
39015A:  BLX             j__Z13RsKeyToOSWKey10RsKeyCodes; RsKeyToOSWKey(RsKeyCodes)
39015E:  CMP             R0, #0x64 ; 'd'
390160:  BEQ             loc_39016A
390162:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
390166:  CMP             R0, #0
390168:  BNE             loc_39014A
39016A:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x390170)
39016C:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
39016E:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
390170:  LDR.W           R0, [R0,#(dword_6F3838 - 0x6F3794)]
390174:  CBZ             R0, loc_390184
390176:  MOVS            R0, #0x29 ; ')'
390178:  MOVS            R1, #0
39017A:  MOVS            R2, #3
39017C:  POP.W           {R4,R6,R7,LR}
390180:  B.W             sub_18D4F0
390184:  MOVS            R0, #0; this
390186:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
39018A:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x390190)
39018C:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
39018E:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
390190:  LDRB            R0, [R0]; CPad::NewMouseControllerState
390192:  CMP             R0, #0
390194:  BEQ             loc_390176
390196:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x39019C)
390198:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
39019A:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
39019C:  LDRB            R0, [R0]; CPad::OldMouseControllerState
39019E:  CMP             R0, #0
3901A0:  BEQ             loc_39014A
3901A2:  B               loc_390176
