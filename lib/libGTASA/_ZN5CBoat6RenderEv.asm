; =========================================================
; Game Engine Function: _ZN5CBoat6RenderEv
; Address            : 0x56B6F0 - 0x56BBC2
; =========================================================

56B6F0:  PUSH            {R4,R5,R7,LR}
56B6F2:  ADD             R7, SP, #8
56B6F4:  SUB             SP, SP, #0x40
56B6F6:  MOV             R4, R0
56B6F8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56B704)
56B6FC:  LDR.W           R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x56B706)
56B700:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56B702:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
56B704:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
56B706:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
56B708:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
56B70A:  ADDW            R0, R0, #0xBB8
56B70E:  STR.W           R0, [R4,#0x4E0]
56B712:  LDRB.W          R0, [R1,#(byte_796816 - 0x7967F4)]
56B716:  CMP             R0, #0
56B718:  ITT EQ
56B71A:  MOVEQ           R0, R4; this
56B71C:  BLXEQ           j__ZN8CVehicle6RenderEv; CVehicle::Render(void)
56B720:  LDRH            R0, [R4,#0x26]
56B722:  CMP.W           R0, #0x1CC
56B726:  BEQ.W           loc_56BBBE; jumptable 0056B766 cases 431-445,447-451,455-471,474-483
56B72A:  LDR.W           R0, =(dword_A02620 - 0x56B73A)
56B72E:  MOV.W           R2, #0x20000
56B732:  LDR.W           R1, =(dword_A02590 - 0x56B73C)
56B736:  ADD             R0, PC; dword_A02620
56B738:  ADD             R1, PC; dword_A02590
56B73A:  STR             R2, [R0]
56B73C:  MOV.W           R2, #0x10001
56B740:  STR             R2, [R0,#(dword_A02624 - 0xA02620)]
56B742:  MOVS            R2, #0x30002
56B748:  STR             R2, [R0,#(dword_A02628 - 0xA02620)]
56B74A:  MOV.W           R0, #0xFFFFFFFF
56B74E:  STR             R0, [R1,#(dword_A025A8 - 0xA02590)]
56B750:  STR             R0, [R1,#(dword_A025CC - 0xA02590)]
56B752:  STR             R0, [R1,#(dword_A025F0 - 0xA02590)]
56B754:  STR.W           R0, [R1,#(dword_A02614 - 0xA02590)]
56B758:  LDRSH.W         R1, [R4,#0x26]
56B75C:  SUB.W           R0, R1, #0x1AE; switch 55 cases
56B760:  CMP             R0, #0x36 ; '6'
56B762:  BHI.W           def_56B766; jumptable 0056B766 default case
56B766:  TBH.W           [PC,R0,LSL#1]; switch jump
56B76A:  DCW 0x37; jump table for switch statement
56B76C:  DCW 0x22A
56B76E:  DCW 0x22A
56B770:  DCW 0x22A
56B772:  DCW 0x22A
56B774:  DCW 0x22A
56B776:  DCW 0x22A
56B778:  DCW 0x22A
56B77A:  DCW 0x22A
56B77C:  DCW 0x22A
56B77E:  DCW 0x22A
56B780:  DCW 0x22A
56B782:  DCW 0x22A
56B784:  DCW 0x22A
56B786:  DCW 0x22A
56B788:  DCW 0x22A
56B78A:  DCW 0x73
56B78C:  DCW 0x22A
56B78E:  DCW 0x22A
56B790:  DCW 0x22A
56B792:  DCW 0x22A
56B794:  DCW 0x22A
56B796:  DCW 0x9C
56B798:  DCW 0xB9
56B79A:  DCW 0xE6
56B79C:  DCW 0x22A
56B79E:  DCW 0x22A
56B7A0:  DCW 0x22A
56B7A2:  DCW 0x22A
56B7A4:  DCW 0x22A
56B7A6:  DCW 0x22A
56B7A8:  DCW 0x22A
56B7AA:  DCW 0x22A
56B7AC:  DCW 0x22A
56B7AE:  DCW 0x22A
56B7B0:  DCW 0x22A
56B7B2:  DCW 0x22A
56B7B4:  DCW 0x22A
56B7B6:  DCW 0x22A
56B7B8:  DCW 0x22A
56B7BA:  DCW 0x22A
56B7BC:  DCW 0x22A
56B7BE:  DCW 0x107
56B7C0:  DCW 0x130
56B7C2:  DCW 0x22A
56B7C4:  DCW 0x22A
56B7C6:  DCW 0x22A
56B7C8:  DCW 0x22A
56B7CA:  DCW 0x22A
56B7CC:  DCW 0x22A
56B7CE:  DCW 0x22A
56B7D0:  DCW 0x22A
56B7D2:  DCW 0x22A
56B7D4:  DCW 0x22A
56B7D6:  DCW 0x15F
56B7D8:  LDR.W           R0, =(dword_A02590 - 0x56B7F0); jumptable 0056B766 case 430
56B7DC:  MOVW            R1, #0x3333
56B7E0:  MOVW            R2, #0x999A
56B7E4:  MOVW            R3, #0xC28F
56B7E8:  MOVW            R5, #0x999A
56B7EC:  ADD             R0, PC; dword_A02590
56B7EE:  MOVT            R1, #0x3FF3
56B7F2:  MOVT            R2, #0xBFB9
56B7F6:  MOVT            R3, #0x3F75
56B7FA:  MOVT            R5, #0x3FB9
56B7FE:  STRD.W          R2, R1, [R0]
56B802:  STR             R3, [R0,#(dword_A02598 - 0xA02590)]
56B804:  STRD.W          R5, R1, [R0,#(dword_A025B4 - 0xA02590)]
56B808:  MOVS            R1, #0
56B80A:  STR             R3, [R0,#(dword_A025BC - 0xA02590)]
56B80C:  MOVT            R1, #0xC070
56B810:  B               loc_56BA70
56B812:  MOVW            R0, #0x253; jumptable 0056B766 default case
56B816:  CMP             R1, R0
56B818:  BNE.W           loc_56BBBE; jumptable 0056B766 cases 431-445,447-451,455-471,474-483
56B81C:  LDR.W           R0, =(dword_A02590 - 0x56B82C)
56B820:  MOVS            R1, #0
56B822:  MOVS            R2, #0
56B824:  MOVW            R3, #0x999A
56B828:  ADD             R0, PC; dword_A02590
56B82A:  MOVT            R1, #0x4020
56B82E:  MOVT            R2, #0xBF80
56B832:  MOVT            R3, #0x3E99
56B836:  MOV.W           R5, #0x3F800000
56B83A:  STRD.W          R2, R1, [R0]
56B83E:  STR             R3, [R0,#(dword_A02598 - 0xA02590)]
56B840:  STRD.W          R5, R1, [R0,#(dword_A025B4 - 0xA02590)]
56B844:  MOVW            R1, #0xCCCD
56B848:  STR             R3, [R0,#(dword_A025BC - 0xA02590)]
56B84A:  MOVT            R1, #0xC0AC
56B84E:  B               loc_56BA70
56B850:  LDR             R0, =(dword_A02590 - 0x56B862); jumptable 0056B766 case 446
56B852:  MOVW            R1, #0x4189
56B856:  MOVW            R2, #0x6A7F
56B85A:  MOVT            R1, #0x4000
56B85E:  ADD             R0, PC; dword_A02590
56B860:  MOVT            R2, #0xBF9C
56B864:  MOVW            R3, #0x5A1D
56B868:  MOVW            R5, #0x9375
56B86C:  STRD.W          R2, R1, [R0]
56B870:  MOVW            R2, #0x6A7F
56B874:  MOVT            R3, #0x3FB4
56B878:  MOVT            R2, #0x3F9C
56B87C:  STR             R3, [R0,#(dword_A02598 - 0xA02590)]
56B87E:  MOVT            R5, #0x3F58
56B882:  STRD.W          R2, R1, [R0,#(dword_A025B4 - 0xA02590)]
56B886:  MOVW            R1, #0xF9DB
56B88A:  MOVW            R2, #0xB852
56B88E:  STR             R3, [R0,#(dword_A025BC - 0xA02590)]
56B890:  MOVW            R3, #0xB852
56B894:  MOVT            R1, #0xBFAE
56B898:  MOVT            R2, #0xBF9E
56B89C:  MOVT            R3, #0x3F9E
56B8A0:  B               loc_56BA1A
56B8A2:  LDR             R0, =(dword_A02590 - 0x56B8B8); jumptable 0056B766 case 452
56B8A4:  MOVW            R1, #0xA3D
56B8A8:  MOVW            R2, #0x3333
56B8AC:  MOVW            R3, #0xD70A
56B8B0:  MOVW            R5, #0x3333
56B8B4:  ADD             R0, PC; dword_A02590
56B8B6:  MOVT            R1, #0x4067
56B8BA:  MOVT            R2, #0xBF93
56B8BE:  MOVT            R3, #0x3F83
56B8C2:  MOVT            R5, #0x3F93
56B8C6:  STRD.W          R2, R1, [R0]
56B8CA:  STR             R3, [R0,#(dword_A02598 - 0xA02590)]
56B8CC:  STRD.W          R5, R1, [R0,#(dword_A025B4 - 0xA02590)]
56B8D0:  MOVW            R1, #0xC28F
56B8D4:  STR             R3, [R0,#(dword_A025BC - 0xA02590)]
56B8D6:  MOVT            R1, #0x3D75
56B8DA:  B               loc_56BA70
56B8DC:  LDR             R0, =(dword_A02590 - 0x56B8EE); jumptable 0056B766 case 453
56B8DE:  MOVW            R1, #0x1EB8
56B8E2:  MOVW            R2, #0x3333
56B8E6:  MOVW            R3, #0x3333
56B8EA:  ADD             R0, PC; dword_A02590
56B8EC:  MOVT            R1, #0x4035
56B8F0:  MOVT            R2, #0xBFF3
56B8F4:  MOVT            R3, #0x3FF3
56B8F8:  MOV.W           R5, #0x3F800000
56B8FC:  STRD.W          R2, R1, [R0,#(dword_A025D8 - 0xA02590)]
56B900:  MOVW            R2, #0x7AE1
56B904:  STR             R5, [R0,#(dword_A025E0 - 0xA02590)]
56B906:  STRD.W          R3, R1, [R0,#(dword_A025FC - 0xA02590)]
56B90A:  MOV             R1, #0xC08F5C29
56B912:  MOVT            R2, #0xBFD4
56B916:  MOVW            R3, #0x7AE1
56B91A:  STR             R5, [R0,#(dword_A02604 - 0xA02590)]
56B91C:  STRD.W          R2, R1, [R0]
56B920:  MOVW            R2, #0x7AE1
56B924:  MOVT            R3, #0x3F54
56B928:  MOVT            R2, #0x3FD4
56B92C:  STR             R3, [R0,#(dword_A02598 - 0xA02590)]
56B92E:  STRD.W          R2, R1, [R0,#(dword_A025B4 - 0xA02590)]
56B932:  STR             R3, [R0,#(dword_A025BC - 0xA02590)]
56B934:  B               loc_56BA7C
56B936:  LDR             R0, =(dword_A02590 - 0x56B94C); jumptable 0056B766 case 454
56B938:  MOVW            R1, #0x353F
56B93C:  MOVW            R2, #0x6873
56B940:  MOVW            R3, #0x78D5
56B944:  MOVW            R5, #0x6873
56B948:  ADD             R0, PC; dword_A02590
56B94A:  MOVT            R1, #0xC016
56B94E:  MOVT            R2, #0xBFF1
56B952:  MOVT            R3, #0x3F49
56B956:  MOVT            R5, #0x3FF1
56B95A:  STRD.W          R2, R1, [R0]
56B95E:  STR             R3, [R0,#(dword_A02598 - 0xA02590)]
56B960:  STRD.W          R5, R1, [R0,#(dword_A025B4 - 0xA02590)]
56B964:  MOVW            R1, #0x70A4
56B968:  STR             R3, [R0,#(dword_A025BC - 0xA02590)]
56B96A:  MOVW            R3, #0x8D50
56B96E:  MOVT            R1, #0xC095
56B972:  MOVT            R3, #0x3F57
56B976:  B               loc_56BA70
56B978:  LDR             R0, =(dword_A02590 - 0x56B98A); jumptable 0056B766 case 472
56B97A:  MOVW            R1, #0x28F6
56B97E:  MOVW            R2, #0xBA5E
56B982:  MOVT            R1, #0x4064
56B986:  ADD             R0, PC; dword_A02590
56B988:  MOVT            R2, #0xBF29
56B98C:  MOVW            R3, #0x9581
56B990:  MOVW            R5, #0x126F
56B994:  STRD.W          R2, R1, [R0]
56B998:  MOVW            R2, #0xBA5E
56B99C:  MOVT            R3, #0x3EC3
56B9A0:  MOVT            R2, #0x3F29
56B9A4:  STR             R3, [R0,#(dword_A02598 - 0xA02590)]
56B9A6:  MOVT            R5, #0x3EC3
56B9AA:  STRD.W          R2, R1, [R0,#(dword_A025B4 - 0xA02590)]
56B9AE:  MOVW            R1, #0xBC6A
56B9B2:  MOVW            R2, #0x22D1
56B9B6:  STR             R3, [R0,#(dword_A025BC - 0xA02590)]
56B9B8:  MOVW            R3, #0x22D1
56B9BC:  MOVT            R1, #0x3F54
56B9C0:  MOVT            R2, #0xBF8B
56B9C4:  MOVT            R3, #0x3F8B
56B9C8:  B               loc_56BA1A
56B9CA:  LDR             R0, =(dword_A02590 - 0x56B9DC); jumptable 0056B766 case 473
56B9CC:  MOVW            R1, #0xC4A
56B9D0:  MOVW            R2, #0x831
56B9D4:  MOVT            R1, #0x3FD2
56B9D8:  ADD             R0, PC; dword_A02590
56B9DA:  MOVT            R2, #0xBF4C
56B9DE:  MOVW            R3, #0xB021
56B9E2:  MOVW            R5, #0x4DD3
56B9E6:  STRD.W          R2, R1, [R0]
56B9EA:  MOVW            R2, #0x831
56B9EE:  MOVT            R3, #0x3F12
56B9F2:  MOVT            R2, #0x3F4C
56B9F6:  STR             R3, [R0,#(dword_A02598 - 0xA02590)]
56B9F8:  MOVT            R5, #0x3F02
56B9FC:  STRD.W          R2, R1, [R0,#(dword_A025B4 - 0xA02590)]
56BA00:  MOVW            R1, #0xD4FE
56BA04:  MOVW            R2, #0x70A4
56BA08:  STR             R3, [R0,#(dword_A025BC - 0xA02590)]
56BA0A:  MOVW            R3, #0x70A4
56BA0E:  MOVT            R1, #0xBFB8
56BA12:  MOVT            R2, #0xBF5D
56BA16:  MOVT            R3, #0x3F5D
56BA1A:  STRD.W          R3, R1, [R0,#(dword_A025FC - 0xA02590)]
56BA1E:  STR             R5, [R0,#(dword_A02604 - 0xA02590)]
56BA20:  STRD.W          R2, R1, [R0,#(dword_A025D8 - 0xA02590)]
56BA24:  STR             R5, [R0,#(dword_A025E0 - 0xA02590)]
56BA26:  B               loc_56BA7C
56BA28:  LDR             R0, =(dword_A02590 - 0x56BA3A); jumptable 0056B766 case 484
56BA2A:  MOVW            R1, #0xBE77
56BA2E:  MOVW            R2, #0x7CEE
56BA32:  MOVT            R1, #0xBFAF
56BA36:  ADD             R0, PC; dword_A02590
56BA38:  MOVT            R2, #0xBF9F
56BA3C:  MOVW            R3, #0x78D5
56BA40:  MOVW            R5, #0xF1AA
56BA44:  STRD.W          R2, R1, [R0]
56BA48:  MOVW            R2, #0x7CEE
56BA4C:  MOVT            R3, #0x3F49
56BA50:  MOVT            R2, #0x3F9F
56BA54:  STR             R3, [R0,#(dword_A02598 - 0xA02590)]
56BA56:  MOVT            R5, #0x3F82
56BA5A:  STRD.W          R2, R1, [R0,#(dword_A025B4 - 0xA02590)]
56BA5E:  MOVW            R1, #0x4DD3
56BA62:  MOVW            R2, #0xF1AA
56BA66:  STR             R3, [R0,#(dword_A025BC - 0xA02590)]
56BA68:  MOVT            R1, #0xC0AA
56BA6C:  MOVT            R2, #0xBF82
56BA70:  STRD.W          R5, R1, [R0,#(dword_A025FC - 0xA02590)]
56BA74:  STR             R3, [R0,#(dword_A02604 - 0xA02590)]
56BA76:  STRD.W          R2, R1, [R0,#(dword_A025D8 - 0xA02590)]
56BA7A:  STR             R3, [R0,#(dword_A025E0 - 0xA02590)]
56BA7C:  LDR             R0, =(gpWaterTex_ptr - 0x56BA8A)
56BA7E:  MOVS            R2, #0
56BA80:  LDR             R1, =(dword_A02590 - 0x56BA8C)
56BA82:  MOV.W           R3, #0x3F800000
56BA86:  ADD             R0, PC; gpWaterTex_ptr
56BA88:  ADD             R1, PC; dword_A02590
56BA8A:  LDR             R0, [R0]; gpWaterTex
56BA8C:  STRD.W          R2, R2, [R1,#(dword_A025AC - 0xA02590)]
56BA90:  LDR             R0, [R0]
56BA92:  STRD.W          R3, R2, [R1,#(dword_A025D0 - 0xA02590)]
56BA96:  STRD.W          R2, R3, [R1,#(dword_A025F4 - 0xA02590)]
56BA9A:  STRD.W          R3, R3, [R1,#(dword_A02618 - 0xA02590)]
56BA9E:  LDR             R1, [R0]
56BAA0:  MOVS            R0, #1
56BAA2:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
56BAA6:  MOVS            R0, #0xC
56BAA8:  MOVS            R1, #1
56BAAA:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
56BAAE:  MOVS            R0, #0xE
56BAB0:  MOVS            R1, #0
56BAB2:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
56BAB6:  MOVS            R0, #0xA
56BAB8:  MOVS            R1, #1
56BABA:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
56BABE:  MOVS            R0, #0xB
56BAC0:  MOVS            R1, #2
56BAC2:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
56BAC6:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x56BACC)
56BAC8:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
56BACA:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
56BACC:  LDRB.W          R0, [R0,#(byte_796816 - 0x7967F4)]
56BAD0:  CBNZ            R0, loc_56BAFC
56BAD2:  LDR             R0, [R4,#0x14]
56BAD4:  MOV             R5, SP
56BAD6:  MOV             R1, R5
56BAD8:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
56BADC:  LDR             R0, =(dword_A02590 - 0x56BAE8)
56BADE:  MOVS            R1, #4
56BAE0:  MOV             R2, R5
56BAE2:  MOVS            R3, #1
56BAE4:  ADD             R0, PC; dword_A02590
56BAE6:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
56BAEA:  CBZ             R0, loc_56BAFC
56BAEC:  LDR             R1, =(dword_A02620 - 0x56BAF6)
56BAEE:  MOVS            R0, #3
56BAF0:  MOVS            R2, #6
56BAF2:  ADD             R1, PC; dword_A02620
56BAF4:  BLX             j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
56BAF8:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
56BAFC:  LDRH            R0, [R4,#0x26]
56BAFE:  CMP.W           R0, #0x1D8
56BB02:  BNE             loc_56BBA6
56BB04:  LDR             R1, =(dword_A02590 - 0x56BB1A)
56BB06:  ADR             R2, dword_56BBD0
56BB08:  LDR.W           R12, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x56BB28)
56BB0C:  MOVW            R3, #0x22D1
56BB10:  VLD1.64         {D16-D17}, [R2@128]
56BB14:  ADR             R2, dword_56BBE0
56BB16:  ADD             R1, PC; dword_A02590
56BB18:  MOVW            R5, #0x126F
56BB1C:  VLD1.64         {D18-D19}, [R2@128]
56BB20:  MOVW            R2, #0xBC6A
56BB24:  ADD             R12, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
56BB26:  MOVT            R2, #0x3F54
56BB2A:  MOVT            R3, #0xBF8B
56BB2E:  MOVW            LR, #0x872B
56BB32:  STRD.W          R3, R2, [R1]
56BB36:  MOVW            R3, #0x6A7F
56BB3A:  MOVT            R5, #0x3EC3
56BB3E:  MOV.W           R0, #0x3F800000
56BB42:  MOVS            R2, #0
56BB44:  STR             R5, [R1,#(dword_A02598 - 0xA02590)]
56BB46:  STR             R5, [R1,#(dword_A025BC - 0xA02590)]
56BB48:  MOVT            LR, #0xC03E
56BB4C:  STR             R5, [R1,#(dword_A025E0 - 0xA02590)]
56BB4E:  MOVT            R3, #0x3F8C
56BB52:  STRD.W          R2, R0, [R1,#(dword_A025F4 - 0xA02590)]
56BB56:  LDR.W           R2, [R12]; CCheat::m_aCheatsActive ...
56BB5A:  STRD.W          R3, LR, [R1,#(dword_A025FC - 0xA02590)]
56BB5E:  ADD.W           R3, R1, #0x40 ; '@'
56BB62:  STR             R5, [R1,#(dword_A02604 - 0xA02590)]
56BB64:  STR.W           R0, [R1,#(dword_A0261C - 0xA02590)]
56BB68:  VST1.32         {D18-D19}, [R3]
56BB6C:  STR.W           R0, [R1,#(dword_A02618 - 0xA02590)]
56BB70:  ADDS            R1, #0x1C
56BB72:  LDRB.W          R0, [R2,#(byte_796816 - 0x7967F4)]
56BB76:  VST1.32         {D16-D17}, [R1]
56BB7A:  CBNZ            R0, loc_56BBA6
56BB7C:  LDR             R0, [R4,#0x14]
56BB7E:  MOV             R4, SP
56BB80:  MOV             R1, R4
56BB82:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
56BB86:  LDR             R0, =(dword_A02590 - 0x56BB92)
56BB88:  MOVS            R1, #4
56BB8A:  MOV             R2, R4
56BB8C:  MOVS            R3, #1
56BB8E:  ADD             R0, PC; dword_A02590
56BB90:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
56BB94:  CBZ             R0, loc_56BBA6
56BB96:  LDR             R1, =(dword_A02620 - 0x56BBA0)
56BB98:  MOVS            R0, #3
56BB9A:  MOVS            R2, #6
56BB9C:  ADD             R1, PC; dword_A02620
56BB9E:  BLX             j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
56BBA2:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
56BBA6:  MOVS            R0, #0xE
56BBA8:  MOVS            R1, #1
56BBAA:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
56BBAE:  MOVS            R0, #0xA
56BBB0:  MOVS            R1, #5
56BBB2:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
56BBB6:  MOVS            R0, #0xB
56BBB8:  MOVS            R1, #6
56BBBA:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
56BBBE:  ADD             SP, SP, #0x40 ; '@'; jumptable 0056B766 cases 431-445,447-451,455-471,474-483
56BBC0:  POP             {R4,R5,R7,PC}
