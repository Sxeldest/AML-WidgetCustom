; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard16GetMappingStringE10HIDMappingb
; Address            : 0x2955F8 - 0x2956B8
; =========================================================

2955F8:  PUSH            {R4,R6,R7,LR}
2955FA:  ADD             R7, SP, #8
2955FC:  LDR.W           R12, [R0,#8]
295600:  CMP.W           R12, #0
295604:  BEQ             loc_295628
295606:  LDR             R0, [R0,#0xC]
295608:  MOVS            R3, #0
29560A:  ADD.W           LR, R0, #8
29560E:  LDR.W           R0, [LR,#-4]
295612:  CMP             R0, R1
295614:  ITT EQ
295616:  LDRBEQ.W        R0, [LR]
29561A:  CMPEQ           R0, R2
29561C:  BEQ             loc_295656
29561E:  ADDS            R3, #1
295620:  ADD.W           LR, LR, #0x14
295624:  CMP             R3, R12
295626:  BCC             loc_29560E
295628:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29562E)
29562A:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29562C:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29562E:  LDR             R0, [R0,#(dword_6E0030 - 0x6E002C)]
295630:  CBZ             R0, loc_295670
295632:  LDR             R1, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29563C)
295634:  MOVS            R2, #0
295636:  LDR             R3, =(aKeyUnk - 0x29563E); "KEY_UNK"
295638:  ADD             R1, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29563A:  ADD             R3, PC; "KEY_UNK"
29563C:  LDR             R1, [R1]; CHIDKeyboard::m_KeyPairs ...
29563E:  LDR             R1, [R1,#(dword_6E0034 - 0x6E002C)]
295640:  ADDS            R1, #4
295642:  LDR.W           R4, [R1,#-4]
295646:  CMP             R4, #0x64 ; 'd'
295648:  BEQ             loc_2956AA
29564A:  ADDS            R2, #1
29564C:  ADDS            R1, #0xC
29564E:  CMP             R2, R0
295650:  BCC             loc_295642
295652:  MOV             R1, R3
295654:  B               loc_2956AA
295656:  LDR.W           R4, [LR,#-8]
29565A:  CMP             R4, #0x64 ; 'd'
29565C:  BNE             loc_295676
29565E:  LDR.W           R0, [LR,#4]
295662:  CMP             R0, #5
295664:  BCS             loc_295676
295666:  LDR             R1, =(off_662520 - 0x29566C); "KEY_LMB" ...
295668:  ADD             R1, PC; off_662520
29566A:  LDR.W           R1, [R1,R0,LSL#2]
29566E:  B               loc_2956AA
295670:  LDR             R1, =(aKeyUnk - 0x295676); "KEY_UNK"
295672:  ADD             R1, PC; "KEY_UNK"
295674:  B               loc_2956AA
295676:  LDR             R0, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29567C)
295678:  ADD             R0, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29567A:  LDR             R0, [R0]; CHIDKeyboard::m_KeyPairs ...
29567C:  LDR             R0, [R0,#(dword_6E0030 - 0x6E002C)]
29567E:  CBZ             R0, loc_2956A6
295680:  LDR             R1, =(_ZN12CHIDKeyboard10m_KeyPairsE_ptr - 0x29568C)
295682:  MOVS            R3, #0
295684:  LDR.W           R12, =(aKeyUnk - 0x29568E); "KEY_UNK"
295688:  ADD             R1, PC; _ZN12CHIDKeyboard10m_KeyPairsE_ptr
29568A:  ADD             R12, PC; "KEY_UNK"
29568C:  LDR             R1, [R1]; CHIDKeyboard::m_KeyPairs ...
29568E:  LDR             R1, [R1,#(dword_6E0034 - 0x6E002C)]
295690:  ADDS            R1, #4
295692:  LDR.W           R2, [R1,#-4]
295696:  CMP             R2, R4
295698:  BEQ             loc_2956AA
29569A:  ADDS            R3, #1
29569C:  ADDS            R1, #0xC
29569E:  CMP             R3, R0
2956A0:  BCC             loc_295692
2956A2:  MOV             R1, R12
2956A4:  B               loc_2956AA
2956A6:  LDR             R1, =(aKeyUnk - 0x2956AC); "KEY_UNK"
2956A8:  ADD             R1, PC; "KEY_UNK"
2956AA:  LDR             R0, =(TheText_ptr - 0x2956B0)
2956AC:  ADD             R0, PC; TheText_ptr
2956AE:  LDR             R0, [R0]; TheText ; this
2956B0:  POP.W           {R4,R6,R7,LR}
2956B4:  B.W             j_j__ZN5CText3GetEPKc; j_CText::Get(char const*)
