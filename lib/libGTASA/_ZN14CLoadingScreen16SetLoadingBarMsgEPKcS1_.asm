; =========================================================
; Game Engine Function: _ZN14CLoadingScreen16SetLoadingBarMsgEPKcS1_
; Address            : 0x43B63C - 0x43B67A
; =========================================================

43B63C:  PUSH            {R4,R6,R7,LR}
43B63E:  ADD             R7, SP, #8
43B640:  MOV             R4, R1
43B642:  CBZ             R0, loc_43B660
43B644:  LDR             R1, =(_ZN14CLoadingScreen16m_LoadingGxtMsg1E_ptr - 0x43B64A)
43B646:  ADD             R1, PC; _ZN14CLoadingScreen16m_LoadingGxtMsg1E_ptr
43B648:  LDR             R1, [R1]; unsigned __int16 *
43B64A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
43B64E:  CBZ             R4, loc_43B66E
43B650:  LDR             R0, =(_ZN14CLoadingScreen16m_LoadingGxtMsg2E_ptr - 0x43B656)
43B652:  ADD             R0, PC; _ZN14CLoadingScreen16m_LoadingGxtMsg2E_ptr
43B654:  LDR             R1, [R0]; unsigned __int16 *
43B656:  MOV             R0, R4; char *
43B658:  POP.W           {R4,R6,R7,LR}
43B65C:  B.W             sub_19642C
43B660:  LDR             R0, =(_ZN14CLoadingScreen16m_LoadingGxtMsg1E_ptr - 0x43B668)
43B662:  MOVS            R1, #0
43B664:  ADD             R0, PC; _ZN14CLoadingScreen16m_LoadingGxtMsg1E_ptr
43B666:  LDR             R0, [R0]; CLoadingScreen::m_LoadingGxtMsg1 ...
43B668:  STRH            R1, [R0]; CLoadingScreen::m_LoadingGxtMsg1
43B66A:  CMP             R4, #0
43B66C:  BNE             loc_43B650
43B66E:  LDR             R0, =(_ZN14CLoadingScreen16m_LoadingGxtMsg2E_ptr - 0x43B676)
43B670:  MOVS            R1, #0
43B672:  ADD             R0, PC; _ZN14CLoadingScreen16m_LoadingGxtMsg2E_ptr
43B674:  LDR             R0, [R0]; CLoadingScreen::m_LoadingGxtMsg2 ...
43B676:  STRH            R1, [R0]; CLoadingScreen::m_LoadingGxtMsg2
43B678:  POP             {R4,R6,R7,PC}
