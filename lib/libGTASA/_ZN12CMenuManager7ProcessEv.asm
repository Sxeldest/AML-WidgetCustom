; =========================================================
; Game Engine Function: _ZN12CMenuManager7ProcessEv
; Address            : 0x431AEC - 0x431B1C
; =========================================================

431AEC:  PUSH            {R4,R6,R7,LR}
431AEE:  ADD             R7, SP, #8
431AF0:  MOVS            R1, #0; bool
431AF2:  MOV             R4, R0
431AF4:  BLX             j__ZN12CMenuManager33InitialiseChangedLanguageSettingsEb; CMenuManager::InitialiseChangedLanguageSettings(bool)
431AF8:  MOV             R0, R4; this
431AFA:  BLX             j__ZN12CMenuManager9UserInputEv; CMenuManager::UserInput(void)
431AFE:  MOV             R0, R4; this
431B00:  BLX             j__ZN12CMenuManager18ProcessFileActionsEv; CMenuManager::ProcessFileActions(void)
431B04:  LDRB.W          R0, [R4,#0x121]
431B08:  CMP             R0, #0x32 ; '2'
431B0A:  IT NE
431B0C:  POPNE           {R4,R6,R7,PC}
431B0E:  ADR             R0, aHttpWwwRocksta; "http://www.rockstarwarehouse.com/"
431B10:  BLX             j__Z18OS_ServiceOpenLinkPKc; OS_ServiceOpenLink(char const*)
431B14:  MOVS            R0, #0x2B ; '+'
431B16:  STRB.W          R0, [R4,#0x121]
431B1A:  POP             {R4,R6,R7,PC}
