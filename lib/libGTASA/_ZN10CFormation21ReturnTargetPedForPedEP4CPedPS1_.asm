; =========================================================
; Game Engine Function: _ZN10CFormation21ReturnTargetPedForPedEP4CPedPS1_
; Address            : 0x5492C4 - 0x549314
; =========================================================

5492C4:  PUSH            {R4,R6,R7,LR}
5492C6:  ADD             R7, SP, #8
5492C8:  LDR             R2, =(_ZN10CFormation6m_PedsE_ptr - 0x5492CE)
5492CA:  ADD             R2, PC; _ZN10CFormation6m_PedsE_ptr
5492CC:  LDR             R2, [R2]; CFormation::m_Peds ...
5492CE:  LDR.W           R12, [R2]; CFormation::m_Peds
5492D2:  CMP.W           R12, #1
5492D6:  IT LT
5492D8:  POPLT           {R4,R6,R7,PC}
5492DA:  LDR             R2, =(_ZN10CFormation6m_PedsE_ptr - 0x5492E4)
5492DC:  MOVS            R3, #0
5492DE:  LDR             R4, =(_ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr - 0x5492E6)
5492E0:  ADD             R2, PC; _ZN10CFormation6m_PedsE_ptr
5492E2:  ADD             R4, PC; _ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr
5492E4:  LDR             R2, [R2]; CFormation::m_Peds ...
5492E6:  LDR.W           LR, [R4]; CFormation::m_aFinalPedLinkToDestinations ...
5492EA:  ADD.W           R4, R2, R3,LSL#2
5492EE:  LDR             R4, [R4,#4]
5492F0:  CMP             R4, R0
5492F2:  BNE             loc_5492FC
5492F4:  LDR.W           R4, [LR,R3,LSL#2]
5492F8:  CMP             R4, #0
5492FA:  BGE             loc_549304
5492FC:  ADDS            R3, #1
5492FE:  CMP             R3, R12
549300:  BLT             loc_5492EA
549302:  POP             {R4,R6,R7,PC}
549304:  LDR             R0, =(_ZN10CFormation17m_DestinationPedsE_ptr - 0x54930A)
549306:  ADD             R0, PC; _ZN10CFormation17m_DestinationPedsE_ptr
549308:  LDR             R0, [R0]; CFormation::m_DestinationPeds ...
54930A:  ADD.W           R0, R0, R4,LSL#2
54930E:  LDR             R0, [R0,#4]
549310:  STR             R0, [R1]
549312:  POP             {R4,R6,R7,PC}
