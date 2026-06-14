; =========================================================
; Game Engine Function: _ZN10CFormation23ReturnDestinationForPedEP4CPedR7CVector
; Address            : 0x549324 - 0x549378
; =========================================================

549324:  PUSH            {R7,LR}
549326:  MOV             R7, SP
549328:  LDR             R3, =(_ZN10CFormation6m_PedsE_ptr - 0x549330)
54932A:  MOVS            R2, #0
54932C:  ADD             R3, PC; _ZN10CFormation6m_PedsE_ptr
54932E:  LDR.W           LR, [R3]; CFormation::m_Peds ...
549332:  LDR             R3, =(_ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr - 0x549338)
549334:  ADD             R3, PC; _ZN10CFormation29m_aFinalPedLinkToDestinationsE_ptr
549336:  LDR.W           R12, [R3]; CFormation::m_aFinalPedLinkToDestinations ...
54933A:  ADD.W           R3, LR, R2,LSL#2
54933E:  LDR             R3, [R3,#4]
549340:  CMP             R3, R0
549342:  BNE             loc_54934E
549344:  LDR.W           R3, [R12,R2,LSL#2]
549348:  CMP.W           R3, #0xFFFFFFFF
54934C:  BGT             loc_54935A
54934E:  ADDS            R3, R2, #1
549350:  CMP             R2, #0x17
549352:  MOV             R2, R3
549354:  BLT             loc_54933A
549356:  MOVS            R0, #0
549358:  POP             {R7,PC}
54935A:  LDR             R0, =(_ZN10CFormation14m_DestinationsE_ptr - 0x549364)
54935C:  ADD.W           R2, R3, R3,LSL#1
549360:  ADD             R0, PC; _ZN10CFormation14m_DestinationsE_ptr
549362:  LDR             R0, [R0]; CFormation::m_Destinations ...
549364:  ADD.W           R0, R0, R2,LSL#2
549368:  VLDR            D16, [R0,#4]
54936C:  LDR             R0, [R0,#0xC]
54936E:  STR             R0, [R1,#8]
549370:  MOVS            R0, #1
549372:  VSTR            D16, [R1]
549376:  POP             {R7,PC}
