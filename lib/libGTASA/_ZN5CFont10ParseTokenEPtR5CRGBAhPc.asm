; =========================================================
; Game Engine Function: _ZN5CFont10ParseTokenEPtR5CRGBAhPc
; Address            : 0x5A96DC - 0x5A9954
; =========================================================

5A96DC:  PUSH            {R4-R7,LR}
5A96DE:  ADD             R7, SP, #0xC
5A96E0:  PUSH.W          {R11}
5A96E4:  SUB             SP, SP, #8
5A96E6:  ADDS            R4, R0, #2
5A96E8:  LDRH            R0, [R0,#4]
5A96EA:  MOV             R5, R3
5A96EC:  MOV             R6, R1
5A96EE:  CMP             R0, #0x7E ; '~'
5A96F0:  BNE.W           loc_5A9940
5A96F4:  LDRH            R0, [R4]
5A96F6:  SUB.W           R1, R0, #0x3C ; '<'; switch 62 cases
5A96FA:  CMP             R1, #0x3D ; '='
5A96FC:  BHI.W           def_5A9700; jumptable 005A9700 default case, cases 61,63,64,69,73,76,90-96,101,105
5A9700:  TBH.W           [PC,R1,LSL#1]; switch jump
5A9704:  DCW 0xF3; jump table for switch statement
5A9706:  DCW 0x11F
5A9708:  DCW 0xFA
5A970A:  DCW 0x11F
5A970C:  DCW 0x11F
5A970E:  DCW 0x3E
5A9710:  DCW 0x42
5A9712:  DCW 0x4B
5A9714:  DCW 0x4F
5A9716:  DCW 0x11F
5A9718:  DCW 0x53
5A971A:  DCW 0x5C
5A971C:  DCW 0x65
5A971E:  DCW 0x11F
5A9720:  DCW 0xA5
5A9722:  DCW 0xA9
5A9724:  DCW 0x11F
5A9726:  DCW 0xAD
5A9728:  DCW 0xB1
5A972A:  DCW 0xB4
5A972C:  DCW 0xB8
5A972E:  DCW 0xC0
5A9730:  DCW 0xC4
5A9732:  DCW 0xCC
5A9734:  DCW 0xD1
5A9736:  DCW 0xD5
5A9738:  DCW 0xDA
5A973A:  DCW 0xDE
5A973C:  DCW 0xE6
5A973E:  DCW 0xEC
5A9740:  DCW 0x11F
5A9742:  DCW 0x11F
5A9744:  DCW 0x11F
5A9746:  DCW 0x11F
5A9748:  DCW 0x11F
5A974A:  DCW 0x11F
5A974C:  DCW 0x11F
5A974E:  DCW 0x3E
5A9750:  DCW 0x42
5A9752:  DCW 0x4B
5A9754:  DCW 0x4F
5A9756:  DCW 0x11F
5A9758:  DCW 0x53
5A975A:  DCW 0x5C
5A975C:  DCW 0x65
5A975E:  DCW 0x11F
5A9760:  DCW 0xA5
5A9762:  DCW 0xA9
5A9764:  DCW 0x101
5A9766:  DCW 0xAD
5A9768:  DCW 0xB1
5A976A:  DCW 0xB4
5A976C:  DCW 0xB8
5A976E:  DCW 0xC0
5A9770:  DCW 0xC4
5A9772:  DCW 0xCC
5A9774:  DCW 0xD1
5A9776:  DCW 0xD5
5A9778:  DCW 0xDA
5A977A:  DCW 0xDE
5A977C:  DCW 0xE6
5A977E:  DCW 0xEC
5A9780:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A9788); jumptable 005A9700 cases 65,97
5A9782:  MOVS            R1, #0xB
5A9784:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A9786:  B               loc_5A98D6
5A9788:  CMP             R2, #0; jumptable 005A9700 cases 66,98
5A978A:  BNE.W           loc_5A9930
5A978E:  LDR             R1, =(HudColour_ptr - 0x5A979A)
5A9790:  ADD             R0, SP, #0x18+var_14
5A9792:  LDRB            R3, [R6,#3]
5A9794:  MOVS            R2, #2
5A9796:  ADD             R1, PC; HudColour_ptr
5A9798:  B               loc_5A9912
5A979A:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A97A2); jumptable 005A9700 cases 67,99
5A979C:  MOVS            R1, #0xE
5A979E:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A97A0:  B               loc_5A98D6
5A97A2:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A97AA); jumptable 005A9700 cases 68,100
5A97A4:  MOVS            R1, #2
5A97A6:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A97A8:  B               loc_5A98D6
5A97AA:  CMP             R2, #0; jumptable 005A9700 cases 70,102
5A97AC:  BNE.W           loc_5A9930
5A97B0:  LDR             R1, =(HudColour_ptr - 0x5A97BC)
5A97B2:  ADD             R0, SP, #0x18+var_14
5A97B4:  LDRB            R3, [R6,#3]
5A97B6:  MOVS            R2, #4
5A97B8:  ADD             R1, PC; HudColour_ptr
5A97BA:  B               loc_5A9912
5A97BC:  CMP             R2, #0; jumptable 005A9700 cases 71,103
5A97BE:  BNE.W           loc_5A9930
5A97C2:  LDR             R1, =(HudColour_ptr - 0x5A97CE)
5A97C4:  ADD             R0, SP, #0x18+var_14
5A97C6:  LDRB            R3, [R6,#3]
5A97C8:  MOVS            R2, #1
5A97CA:  ADD             R1, PC; HudColour_ptr
5A97CC:  B               loc_5A9912
5A97CE:  CMP             R2, #0; jumptable 005A9700 cases 72,104
5A97D0:  BNE.W           loc_5A9930
5A97D4:  LDRB            R1, [R6]
5A97D6:  LDRB            R0, [R6,#1]
5A97D8:  AND.W           R2, R1, R0
5A97DC:  CMP             R2, #0xFF
5A97DE:  BNE             loc_5A97EA
5A97E0:  LDRB            R2, [R6,#2]
5A97E2:  MOVS            R0, #0xFF
5A97E4:  CMP             R2, #0xFF
5A97E6:  BEQ.W           loc_5A993A
5A97EA:  VMOV            S2, R1
5A97EE:  VLDR            S8, =255.0
5A97F2:  VMOV            S4, R0
5A97F6:  VCVT.F32.U32    S2, S2
5A97FA:  VCVT.F32.U32    S4, S4
5A97FE:  LDRB            R0, [R6,#2]
5A9800:  VMOV.F32        S0, #1.5
5A9804:  VMOV            S6, R0
5A9808:  VCVT.F32.U32    S6, S6
5A980C:  VMUL.F32        S2, S2, S0
5A9810:  VMUL.F32        S4, S4, S0
5A9814:  VMUL.F32        S0, S6, S0
5A9818:  VMIN.F32        D1, D1, D4
5A981C:  VMIN.F32        D2, D2, D4
5A9820:  VMIN.F32        D0, D0, D4
5A9824:  VCVT.U32.F32    S4, S4
5A9828:  VCVT.U32.F32    S2, S2
5A982C:  VCVT.U32.F32    S0, S0
5A9830:  VMOV            R0, S4
5A9834:  VMOV            R1, S2
5A9838:  VMOV            R3, S0
5A983C:  LDRB            R2, [R6,#3]
5A983E:  UXTB            R1, R1; unsigned __int8
5A9840:  STR             R2, [SP,#0x18+var_18]; unsigned __int8
5A9842:  UXTB            R2, R0; unsigned __int8
5A9844:  ADD             R0, SP, #0x18+var_14; this
5A9846:  UXTB            R3, R3; unsigned __int8
5A9848:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5A984C:  B               loc_5A9918
5A984E:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A9856); jumptable 005A9700 cases 74,106
5A9850:  MOVS            R1, #0xC
5A9852:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A9854:  B               loc_5A98D6
5A9856:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A985E); jumptable 005A9700 cases 75,107
5A9858:  MOVS            R1, #9
5A985A:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A985C:  B               loc_5A98D6
5A985E:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A9866); jumptable 005A9700 cases 77,109
5A9860:  MOVS            R1, #0xA
5A9862:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A9864:  B               loc_5A98D6
5A9866:  LDR             R0, =(_ZN5CFont7NewLineE_ptr - 0x5A986C); jumptable 005A9700 cases 78,110
5A9868:  ADD             R0, PC; _ZN5CFont7NewLineE_ptr
5A986A:  B               loc_5A98B2
5A986C:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A9874); jumptable 005A9700 cases 79,111
5A986E:  MOVS            R1, #6
5A9870:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A9872:  B               loc_5A98D6
5A9874:  CMP             R2, #0; jumptable 005A9700 cases 80,112
5A9876:  BNE             loc_5A9930
5A9878:  LDR             R1, =(HudColour_ptr - 0x5A9884)
5A987A:  ADD             R0, SP, #0x18+var_14
5A987C:  LDRB            R3, [R6,#3]
5A987E:  MOVS            R2, #8
5A9880:  ADD             R1, PC; HudColour_ptr
5A9882:  B               loc_5A9912
5A9884:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A988C); jumptable 005A9700 cases 81,113
5A9886:  MOVS            R1, #7
5A9888:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A988A:  B               loc_5A98D6
5A988C:  CMP             R2, #0; jumptable 005A9700 cases 82,114
5A988E:  BNE             loc_5A9930
5A9890:  LDR             R1, =(HudColour_ptr - 0x5A989C)
5A9892:  ADD             R0, SP, #0x18+var_14
5A9894:  LDRB            R3, [R6,#3]
5A9896:  MOVS            R2, #0
5A9898:  ADD             R1, PC; HudColour_ptr
5A989A:  B               loc_5A9912
5A989C:  CMP             R2, #0; jumptable 005A9700 cases 83,115
5A989E:  BNE             loc_5A9930
5A98A0:  LDR             R1, =(HudColour_ptr - 0x5A98A6)
5A98A2:  ADD             R1, PC; HudColour_ptr
5A98A4:  B               loc_5A98C6
5A98A6:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A98AE); jumptable 005A9700 cases 84,116
5A98A8:  MOVS            R1, #8
5A98AA:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A98AC:  B               loc_5A98D6
5A98AE:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A98B4); jumptable 005A9700 cases 85,117
5A98B0:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A98B2:  LDR             R0, [R0]; CFont::NewLine
5A98B4:  MOVS            R1, #1
5A98B6:  B               loc_5A98D8
5A98B8:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A98C0); jumptable 005A9700 cases 86,118
5A98BA:  MOVS            R1, #0xD
5A98BC:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A98BE:  B               loc_5A98D6
5A98C0:  CBNZ            R2, loc_5A9930; jumptable 005A9700 cases 87,119
5A98C2:  LDR             R1, =(HudColour_ptr - 0x5A98C8)
5A98C4:  ADD             R1, PC; HudColour_ptr
5A98C6:  LDRB            R3, [R6,#3]
5A98C8:  ADD             R0, SP, #0x18+var_14
5A98CA:  LDR             R1, [R1]; HudColour
5A98CC:  MOVS            R2, #5
5A98CE:  B               loc_5A9914
5A98D0:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A98D8); jumptable 005A9700 cases 88,120
5A98D2:  MOVS            R1, #5
5A98D4:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A98D6:  LDR             R0, [R0]; CFont::PS2Symbol ...
5A98D8:  STRB            R1, [R0]; CFont::NewLine
5A98DA:  B               loc_5A9940
5A98DC:  CBNZ            R2, loc_5A9930; jumptable 005A9700 cases 89,121
5A98DE:  LDR             R1, =(HudColour_ptr - 0x5A98EA)
5A98E0:  ADD             R0, SP, #0x18+var_14
5A98E2:  LDRB            R3, [R6,#3]
5A98E4:  MOVS            R2, #0xC
5A98E6:  ADD             R1, PC; HudColour_ptr
5A98E8:  B               loc_5A9912
5A98EA:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A98F2); jumptable 005A9700 case 60
5A98EC:  MOVS            R1, #3
5A98EE:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A98F0:  LDR             R0, [R0]; CFont::PS2Symbol ...
5A98F2:  STRB            R1, [R0]; CFont::PS2Symbol
5A98F4:  MOVS            R0, #0x3C ; '<'
5A98F6:  B               def_5A9700; jumptable 005A9700 default case, cases 61,63,64,69,73,76,90-96,101,105
5A98F8:  LDR             R0, =(_ZN5CFont9PS2SymbolE_ptr - 0x5A9900); jumptable 005A9700 case 62
5A98FA:  MOVS            R1, #4
5A98FC:  ADD             R0, PC; _ZN5CFont9PS2SymbolE_ptr
5A98FE:  LDR             R0, [R0]; CFont::PS2Symbol ...
5A9900:  STRB            R1, [R0]; CFont::PS2Symbol
5A9902:  MOVS            R0, #0x3E ; '>'
5A9904:  B               def_5A9700; jumptable 005A9700 default case, cases 61,63,64,69,73,76,90-96,101,105
5A9906:  CBNZ            R2, loc_5A9930; jumptable 005A9700 case 108
5A9908:  LDR             R1, =(HudColour_ptr - 0x5A9914)
5A990A:  ADD             R0, SP, #0x18+var_14; this
5A990C:  LDRB            R3, [R6,#3]
5A990E:  MOVS            R2, #6; unsigned __int8
5A9910:  ADD             R1, PC; HudColour_ptr
5A9912:  LDR             R1, [R1]; HudColour ; unsigned __int8
5A9914:  BLX.W           j__ZN11CHudColours6GetRGBEhh; CHudColours::GetRGB(uchar,uchar)
5A9918:  LDRB.W          R0, [SP,#0x18+var_14]
5A991C:  STRB            R0, [R6]
5A991E:  LDRB.W          R0, [SP,#0x18+var_13]
5A9922:  STRB            R0, [R6,#1]
5A9924:  LDRB.W          R0, [SP,#0x18+var_12]
5A9928:  STRB            R0, [R6,#2]
5A992A:  LDRB.W          R0, [SP,#0x18+var_11]
5A992E:  STRB            R0, [R6,#3]
5A9930:  CMP             R5, #0
5A9932:  ITT NE
5A9934:  LDRBNE          R0, [R4]
5A9936:  STRBNE          R0, [R5]
5A9938:  B               loc_5A9940
5A993A:  MOVS            R1, #0xDC
5A993C:  MOVS            R3, #0xDC
5A993E:  B               loc_5A983C
5A9940:  LDRH            R0, [R4]
5A9942:  ADDS            R4, #2; jumptable 005A9700 default case, cases 61,63,64,69,73,76,90-96,101,105
5A9944:  UXTH            R0, R0
5A9946:  CMP             R0, #0x7E ; '~'
5A9948:  BNE             loc_5A9940
5A994A:  MOV             R0, R4
5A994C:  ADD             SP, SP, #8
5A994E:  POP.W           {R11}
5A9952:  POP             {R4-R7,PC}
