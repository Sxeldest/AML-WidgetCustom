; =========================================================
; Game Engine Function: _ZN14CEntityScanner22ScanForEntitiesInRangeEiRK4CPed
; Address            : 0x4BA6B0 - 0x4BADBA
; =========================================================

4BA6B0:  PUSH            {R4-R7,LR}
4BA6B2:  ADD             R7, SP, #0xC
4BA6B4:  PUSH.W          {R8-R11}
4BA6B8:  SUB             SP, SP, #4
4BA6BA:  VPUSH           {D8-D12}
4BA6BE:  SUB             SP, SP, #0xF8
4BA6C0:  MOV             R4, R0
4BA6C2:  MOV             R9, R1
4BA6C4:  LDRD.W          R0, R1, [R4,#4]
4BA6C8:  MOV             R11, R2
4BA6CA:  MOV.W           R8, #0
4BA6CE:  CMP             R0, R1
4BA6D0:  MOV.W           R1, #0
4BA6D4:  IT LT
4BA6D6:  ADDLT           R1, R0, #1
4BA6D8:  CMP             R0, #0
4BA6DA:  STR             R1, [R4,#4]
4BA6DC:  BNE.W           loc_4BADAC
4BA6E0:  ADD.W           R10, R4, #0xC
4BA6E4:  MOVS            R5, #0
4BA6E6:  LDR.W           R0, [R10,R5]; this
4BA6EA:  CBZ             R0, loc_4BA6FA
4BA6EC:  ADD.W           R6, R10, R5
4BA6F0:  MOV             R1, R6; CEntity **
4BA6F2:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4BA6F6:  STR.W           R8, [R6]
4BA6FA:  ADDS            R5, #4
4BA6FC:  CMP             R5, #0x40 ; '@'
4BA6FE:  BNE             loc_4BA6E6
4BA700:  MOV             R5, R4
4BA702:  LDR.W           R0, [R5,#0x4C]!; this
4BA706:  CBZ             R0, loc_4BA712
4BA708:  MOV             R1, R5; CEntity **
4BA70A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4BA70E:  MOVS            R0, #0
4BA710:  STR             R0, [R5]
4BA712:  MOV.W           R0, #0xFFFFFFFF; int
4BA716:  STR             R5, [SP,#0x140+var_140]
4BA718:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4BA71C:  STR             R0, [SP,#0x140+var_90]
4BA71E:  ADR.W           R2, dword_4BADC0
4BA722:  LDR.W           R0, [R11,#0x440]
4BA726:  VLD1.64         {D16-D17}, [R2@128]
4BA72A:  VLDR            S0, [R0,#0xBC]
4BA72E:  VLDR            S2, [R0,#0xC0]
4BA732:  ADD             R0, SP, #0x140+var_88
4BA734:  ADD.W           R2, R0, #0x20 ; ' '
4BA738:  LDR.W           R1, [R11,#0x14]
4BA73C:  STR             R2, [SP,#0x140+var_118]
4BA73E:  VMAX.F32        D8, D0, D1
4BA742:  VST1.32         {D16-D17}, [R2]
4BA746:  ADD.W           R2, R0, #0x30 ; '0'
4BA74A:  ADD.W           R8, R1, #0x30 ; '0'
4BA74E:  CMP             R1, #0
4BA750:  VST1.32         {D16-D17}, [R2]
4BA754:  VST1.32         {D16-D17}, [R0]!
4BA758:  STR             R2, [SP,#0x140+var_130]
4BA75A:  STR             R0, [SP,#0x140+var_108]
4BA75C:  VST1.32         {D16-D17}, [R0]
4BA760:  IT EQ
4BA762:  ADDEQ.W         R8, R11, #4
4BA766:  VLDR            S18, [R8]
4BA76A:  VLDR            S22, =50.0
4BA76E:  VSUB.F32        S0, S18, S16
4BA772:  VLDR            S24, =60.0
4BA776:  VLDR            S20, [R8,#4]
4BA77A:  VDIV.F32        S0, S0, S22
4BA77E:  VADD.F32        S0, S0, S24
4BA782:  VMOV            R0, S0; x
4BA786:  BLX             floorf
4BA78A:  VSUB.F32        S0, S20, S16
4BA78E:  STR             R0, [SP,#0x140+var_8C]
4BA790:  VDIV.F32        S0, S0, S22
4BA794:  VADD.F32        S0, S0, S24
4BA798:  VMOV            R0, S0; x
4BA79C:  BLX             floorf
4BA7A0:  VADD.F32        S0, S16, S20
4BA7A4:  MOV             R6, R0
4BA7A6:  VDIV.F32        S0, S0, S22
4BA7AA:  VADD.F32        S0, S0, S24
4BA7AE:  VMOV            R0, S0; x
4BA7B2:  BLX             floorf
4BA7B6:  VMOV            S0, R0
4BA7BA:  MOVS            R5, #0x77 ; 'w'
4BA7BC:  MOVS            R1, #0
4BA7BE:  VCVT.S32.F32    S0, S0
4BA7C2:  VMOV            R0, S0
4BA7C6:  VMOV            S0, R6
4BA7CA:  CMP             R0, #0x77 ; 'w'
4BA7CC:  IT GE
4BA7CE:  MOVGE           R0, R5
4BA7D0:  STR             R0, [SP,#0x140+var_11C]
4BA7D2:  VCVT.S32.F32    S0, S0
4BA7D6:  VMOV            R6, S0
4BA7DA:  CMP             R6, #0
4BA7DC:  IT LE
4BA7DE:  MOVLE           R6, R1
4BA7E0:  LDR             R0, [SP,#0x140+var_8C]
4BA7E2:  VMOV            S0, R0
4BA7E6:  VCVT.S32.F32    S0, S0
4BA7EA:  VMOV            R0, S0
4BA7EE:  VADD.F32        S0, S16, S18
4BA7F2:  VDIV.F32        S0, S0, S22
4BA7F6:  CMP             R0, #0
4BA7F8:  IT GT
4BA7FA:  MOVGT           R1, R0
4BA7FC:  STR             R1, [SP,#0x140+var_120]
4BA7FE:  VADD.F32        S0, S0, S24
4BA802:  VMOV            R0, S0; x
4BA806:  BLX             floorf
4BA80A:  VMOV            S0, R0
4BA80E:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4BA81A)
4BA812:  VCVT.S32.F32    S0, S0
4BA816:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4BA818:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
4BA81A:  LDRH            R0, [R0]; this
4BA81C:  VMOV            R1, S0
4BA820:  CMP             R1, #0x77 ; 'w'
4BA822:  IT LT
4BA824:  MOVLT           R5, R1
4BA826:  MOVW            R1, #0xFFFF
4BA82A:  CMP             R0, R1
4BA82C:  STR             R5, [SP,#0x140+var_E0]
4BA82E:  BEQ             loc_4BA834
4BA830:  ADDS            R0, #1
4BA832:  B               loc_4BA83A
4BA834:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
4BA838:  MOVS            R0, #1
4BA83A:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4BA842)
4BA83E:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4BA840:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
4BA842:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
4BA844:  STRH.W          R0, [R11,#0x30]
4BA848:  LDR             R1, [SP,#0x140+var_11C]
4BA84A:  CMP             R6, R1
4BA84C:  BGT.W           loc_4BAD9E
4BA850:  ADD             R1, SP, #0x140+var_88
4BA852:  STR             R6, [SP,#0x140+var_F8]
4BA854:  ADD.W           R2, R1, #0x3C ; '<'
4BA858:  STR             R2, [SP,#0x140+var_13C]
4BA85A:  ADD.W           R2, R1, #0x38 ; '8'
4BA85E:  STR             R2, [SP,#0x140+var_138]
4BA860:  ADD.W           R2, R1, #0x34 ; '4'
4BA864:  STR             R2, [SP,#0x140+var_134]
4BA866:  ADD.W           R2, R1, #0x2C ; ','
4BA86A:  STR             R2, [SP,#0x140+var_12C]
4BA86C:  ADD.W           R2, R1, #0x28 ; '('
4BA870:  STR             R2, [SP,#0x140+var_128]
4BA872:  ADD.W           R2, R1, #0x24 ; '$'
4BA876:  STR             R2, [SP,#0x140+var_124]
4BA878:  ADD.W           R2, R1, #0x1C
4BA87C:  STR             R2, [SP,#0x140+var_114]
4BA87E:  ADD.W           R2, R1, #0x18
4BA882:  STR             R2, [SP,#0x140+var_110]
4BA884:  ADD.W           R2, R1, #0x14
4BA888:  STR             R2, [SP,#0x140+var_10C]
4BA88A:  ADD.W           R2, R1, #0xC
4BA88E:  STR             R2, [SP,#0x140+var_104]
4BA890:  ADD.W           R2, R1, #8
4BA894:  ADDS            R1, #4
4BA896:  STR             R1, [SP,#0x140+var_FC]
4BA898:  MOV             R3, R4
4BA89A:  LDR             R1, [SP,#0x140+var_90]
4BA89C:  VMUL.F32        S0, S16, S16
4BA8A0:  STR             R2, [SP,#0x140+var_100]
4BA8A2:  MOVS            R2, #0
4BA8A4:  CMP             R1, R11
4BA8A6:  MOV.W           R1, #0
4BA8AA:  IT EQ
4BA8AC:  MOVEQ           R1, #1
4BA8AE:  CMP.W           R9, #1
4BA8B2:  IT NE
4BA8B4:  MOVNE           R2, #1
4BA8B6:  VMOV.F32        S2, #15.0
4BA8BA:  ORR.W           R4, R2, R1
4BA8BE:  ADD.W           R1, R3, #0x48 ; 'H'
4BA8C2:  STR             R1, [SP,#0x140+var_C8]
4BA8C4:  ADD.W           R1, R3, #0x44 ; 'D'
4BA8C8:  STR             R1, [SP,#0x140+var_C4]
4BA8CA:  ADD.W           R1, R3, #0x40 ; '@'
4BA8CE:  STR             R1, [SP,#0x140+var_C0]
4BA8D0:  ADD.W           R1, R3, #0x3C ; '<'
4BA8D4:  STR             R1, [SP,#0x140+var_BC]
4BA8D6:  ADD.W           R1, R3, #0x38 ; '8'
4BA8DA:  STR             R1, [SP,#0x140+var_B8]
4BA8DC:  ADD.W           R1, R3, #0x34 ; '4'
4BA8E0:  STR             R1, [SP,#0x140+var_B0]
4BA8E2:  ADD.W           R1, R3, #0x30 ; '0'
4BA8E6:  STR             R1, [SP,#0x140+var_AC]
4BA8E8:  ADD.W           R1, R3, #0x24 ; '$'
4BA8EC:  STR             R1, [SP,#0x140+var_A8]
4BA8EE:  ADD.W           R1, R3, #0x20 ; ' '
4BA8F2:  LDR.W           R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4BA910)
4BA8F6:  ADD.W           R12, R8, #4
4BA8FA:  STR             R1, [SP,#0x140+var_A4]
4BA8FC:  ADD.W           R1, R3, #0x1C
4BA900:  STR             R1, [SP,#0x140+var_A0]
4BA902:  ADD.W           R1, R3, #0x18
4BA906:  STR             R1, [SP,#0x140+var_9C]
4BA908:  ADD.W           R1, R3, #0x14
4BA90C:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4BA90E:  STR             R1, [SP,#0x140+var_98]
4BA910:  ADD.W           R1, R3, #0x10
4BA914:  STR             R1, [SP,#0x140+var_8C]
4BA916:  LDR             R1, [R2]; CWorld::ms_aRepeatSectors ...
4BA918:  ADD.W           LR, R3, #0x2C ; ','
4BA91C:  LDR.W           R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4BA92C)
4BA920:  ADD.W           R11, R3, #0x28 ; '('
4BA924:  STR             R1, [SP,#0x140+var_EC]
4BA926:  MOVS            R6, #0
4BA928:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4BA92A:  STR             R3, [SP,#0x140+var_90]
4BA92C:  STR.W           R10, [SP,#0x140+var_CC]
4BA930:  LDR             R1, [R2]; CWorld::ms_aRepeatSectors ...
4BA932:  LDR.W           R2, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x4BA93C)
4BA936:  STR             R1, [SP,#0x140+var_F0]
4BA938:  ADD             R2, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
4BA93A:  STR.W           R9, [SP,#0x140+var_E8]
4BA93E:  LDR             R1, [R2]; CWorld::ms_aRepeatSectors ...
4BA940:  STR             R1, [SP,#0x140+var_F4]
4BA942:  STRD.W          R12, R8, [SP,#0x140+var_D4]
4BA946:  STR             R4, [SP,#0x140+var_94]
4BA948:  STRD.W          R11, LR, [SP,#0x140+var_DC]
4BA94C:  LDR             R2, [SP,#0x140+var_120]
4BA94E:  LDR             R1, [SP,#0x140+var_E0]
4BA950:  CMP             R2, R1
4BA952:  MOV             R1, R2
4BA954:  BGT.W           loc_4BAD70
4BA958:  LDR             R2, [SP,#0x140+var_F8]
4BA95A:  LSLS            R2, R2, #4
4BA95C:  UXTB            R2, R2
4BA95E:  STR             R2, [SP,#0x140+var_E4]
4BA960:  MOV             R2, R1
4BA962:  LDR             R1, [SP,#0x140+var_E4]
4BA964:  CMP.W           R9, #2
4BA968:  STR             R2, [SP,#0x140+var_B4]
4BA96A:  AND.W           R2, R2, #0xF
4BA96E:  ORR.W           R2, R2, R1
4BA972:  BEQ             loc_4BA98C
4BA974:  CMP.W           R9, #1
4BA978:  BEQ             loc_4BA99A
4BA97A:  CMP.W           R9, #0
4BA97E:  BNE             loc_4BA9A8
4BA980:  ADD.W           R2, R2, R2,LSL#1
4BA984:  LDR             R1, [SP,#0x140+var_F4]
4BA986:  ADD.W           R2, R1, R2,LSL#2
4BA98A:  B               loc_4BA9AA
4BA98C:  ADD.W           R2, R2, R2,LSL#1
4BA990:  LDR             R1, [SP,#0x140+var_EC]
4BA992:  ADD.W           R2, R1, R2,LSL#2
4BA996:  ADDS            R2, #8
4BA998:  B               loc_4BA9AA
4BA99A:  ADD.W           R2, R2, R2,LSL#1
4BA99E:  LDR             R1, [SP,#0x140+var_F0]
4BA9A0:  ADD.W           R2, R1, R2,LSL#2
4BA9A4:  ADDS            R2, #4
4BA9A6:  B               loc_4BA9AA
4BA9A8:  MOVS            R2, #0
4BA9AA:  LDR.W           R9, [R2]
4BA9AE:  B               loc_4BA9C8
4BA9B0:  DCFS 50.0
4BA9B4:  DCFS 60.0
4BA9B8:  ADD             R1, SP, #0x140+var_88
4BA9BA:  STR             R2, [R3]
4BA9BC:  ADD.W           R2, R1, R5,LSL#2
4BA9C0:  VSTR            S4, [R2]
4BA9C4:  MOVS            R2, #1
4BA9C6:  ADD             R6, R2
4BA9C8:  CMP.W           R9, #0
4BA9CC:  BEQ.W           loc_4BAD60
4BA9D0:  LDRD.W          R2, R9, [R9]
4BA9D4:  UXTH            R5, R0
4BA9D6:  LDRH            R3, [R2,#0x30]
4BA9D8:  CMP             R3, R5
4BA9DA:  BEQ             loc_4BA9C8
4BA9DC:  STRH            R0, [R2,#0x30]
4BA9DE:  CMP             R4, #0
4BA9E0:  ITT EQ
4BA9E2:  LDREQ.W         R3, [R2,#0x44C]
4BA9E6:  CMPEQ           R3, #0x37 ; '7'
4BA9E8:  BEQ             loc_4BA9C8
4BA9EA:  LDR             R3, [R2,#0x14]
4BA9EC:  VLDR            S4, [R8]
4BA9F0:  ADD.W           R5, R3, #0x30 ; '0'
4BA9F4:  CMP             R3, #0
4BA9F6:  IT EQ
4BA9F8:  ADDEQ           R5, R2, #4
4BA9FA:  VLDR            D16, [R12]
4BA9FE:  VLDR            S6, [R5]
4BAA02:  VLDR            D17, [R5,#4]
4BAA06:  VSUB.F32        S4, S6, S4
4BAA0A:  VSUB.F32        D16, D17, D16
4BAA0E:  VMUL.F32        D3, D16, D16
4BAA12:  VMUL.F32        S4, S4, S4
4BAA16:  VADD.F32        S4, S4, S6
4BAA1A:  VADD.F32        S4, S4, S7
4BAA1E:  VCMPE.F32       S4, S0
4BAA22:  VMRS            APSR_nzcv, FPSCR
4BAA26:  BGE             loc_4BA9C8
4BAA28:  LDR.W           R3, [R10]
4BAA2C:  CMP             R3, #0
4BAA2E:  BEQ.W           loc_4BABD8
4BAA32:  VLDR            S6, [SP,#0x140+var_88]
4BAA36:  VCMPE.F32       S4, S6
4BAA3A:  VMRS            APSR_nzcv, FPSCR
4BAA3E:  BLT.W           loc_4BABDE
4BAA42:  LDR             R1, [SP,#0x140+var_8C]
4BAA44:  LDR             R1, [R1]
4BAA46:  CMP             R1, #0
4BAA48:  BEQ.W           loc_4BABE8
4BAA4C:  VLDR            S6, [SP,#0x140+var_84]
4BAA50:  LDR             R4, [SP,#0x140+var_90]
4BAA52:  VCMPE.F32       S4, S6
4BAA56:  VMRS            APSR_nzcv, FPSCR
4BAA5A:  BLT.W           loc_4BABEE
4BAA5E:  LDR             R1, [SP,#0x140+var_98]
4BAA60:  LDR             R1, [R1]
4BAA62:  CMP             R1, #0
4BAA64:  BEQ.W           loc_4BABFA
4BAA68:  VLDR            S6, [SP,#0x140+var_80]
4BAA6C:  VCMPE.F32       S4, S6
4BAA70:  VMRS            APSR_nzcv, FPSCR
4BAA74:  BLT.W           loc_4BAC02
4BAA78:  LDR             R1, [SP,#0x140+var_9C]
4BAA7A:  LDR             R1, [R1]
4BAA7C:  CMP             R1, #0
4BAA7E:  BEQ.W           loc_4BAC0E
4BAA82:  VLDR            S6, [SP,#0x140+var_7C]
4BAA86:  VCMPE.F32       S4, S6
4BAA8A:  VMRS            APSR_nzcv, FPSCR
4BAA8E:  BLT.W           loc_4BAC16
4BAA92:  LDR             R1, [SP,#0x140+var_A0]
4BAA94:  LDR             R1, [R1]
4BAA96:  CMP             R1, #0
4BAA98:  BEQ.W           loc_4BAC22
4BAA9C:  VLDR            S6, [SP,#0x140+var_78]
4BAAA0:  VCMPE.F32       S4, S6
4BAAA4:  VMRS            APSR_nzcv, FPSCR
4BAAA8:  BLT.W           loc_4BAC2A
4BAAAC:  LDR             R1, [SP,#0x140+var_A4]
4BAAAE:  LDR             R1, [R1]
4BAAB0:  CMP             R1, #0
4BAAB2:  BEQ.W           loc_4BAC36
4BAAB6:  VLDR            S6, [SP,#0x140+var_74]
4BAABA:  VCMPE.F32       S4, S6
4BAABE:  VMRS            APSR_nzcv, FPSCR
4BAAC2:  BLT.W           loc_4BAC3E
4BAAC6:  LDR             R1, [SP,#0x140+var_A8]
4BAAC8:  LDR             R1, [R1]
4BAACA:  CMP             R1, #0
4BAACC:  BEQ.W           loc_4BAC4A
4BAAD0:  VLDR            S6, [SP,#0x140+var_70]
4BAAD4:  VCMPE.F32       S4, S6
4BAAD8:  VMRS            APSR_nzcv, FPSCR
4BAADC:  BLT.W           loc_4BAC52
4BAAE0:  LDR.W           R1, [R11]
4BAAE4:  CMP             R1, #0
4BAAE6:  BEQ.W           loc_4BAC5E
4BAAEA:  VLDR            S6, [SP,#0x140+var_6C]
4BAAEE:  VCMPE.F32       S4, S6
4BAAF2:  VMRS            APSR_nzcv, FPSCR
4BAAF6:  BLT.W           loc_4BAC66
4BAAFA:  LDR.W           R1, [LR]
4BAAFE:  CMP             R1, #0
4BAB00:  BEQ.W           loc_4BAC70
4BAB04:  VLDR            S6, [SP,#0x140+var_68]
4BAB08:  VCMPE.F32       S4, S6
4BAB0C:  VMRS            APSR_nzcv, FPSCR
4BAB10:  BLT.W           loc_4BAC78
4BAB14:  LDR             R1, [SP,#0x140+var_AC]
4BAB16:  LDR             R1, [R1]
4BAB18:  CMP             R1, #0
4BAB1A:  BEQ.W           loc_4BAC82
4BAB1E:  VLDR            S6, [SP,#0x140+var_64]
4BAB22:  VCMPE.F32       S4, S6
4BAB26:  VMRS            APSR_nzcv, FPSCR
4BAB2A:  BLT.W           loc_4BAC8A
4BAB2E:  LDR             R1, [SP,#0x140+var_B0]
4BAB30:  LDR             R1, [R1]
4BAB32:  CMP             R1, #0
4BAB34:  BEQ.W           loc_4BAC96
4BAB38:  VLDR            S6, [SP,#0x140+var_60]
4BAB3C:  VCMPE.F32       S4, S6
4BAB40:  VMRS            APSR_nzcv, FPSCR
4BAB44:  BLT.W           loc_4BAC9E
4BAB48:  LDR             R1, [SP,#0x140+var_B8]
4BAB4A:  LDR             R1, [R1]
4BAB4C:  CMP             R1, #0
4BAB4E:  BEQ.W           loc_4BACAA
4BAB52:  VLDR            S6, [SP,#0x140+var_5C]
4BAB56:  VCMPE.F32       S4, S6
4BAB5A:  VMRS            APSR_nzcv, FPSCR
4BAB5E:  BLT.W           loc_4BACB2
4BAB62:  LDR             R1, [SP,#0x140+var_BC]
4BAB64:  LDR             R1, [R1]
4BAB66:  CMP             R1, #0
4BAB68:  BEQ.W           loc_4BACBE
4BAB6C:  VLDR            S6, [SP,#0x140+var_58]
4BAB70:  VCMPE.F32       S4, S6
4BAB74:  VMRS            APSR_nzcv, FPSCR
4BAB78:  BLT.W           loc_4BACC6
4BAB7C:  LDR             R1, [SP,#0x140+var_C0]
4BAB7E:  LDR             R1, [R1]
4BAB80:  CMP             R1, #0
4BAB82:  BEQ.W           loc_4BACD2
4BAB86:  VLDR            S6, [SP,#0x140+var_54]
4BAB8A:  VCMPE.F32       S4, S6
4BAB8E:  VMRS            APSR_nzcv, FPSCR
4BAB92:  BLT.W           loc_4BACDA
4BAB96:  LDR             R1, [SP,#0x140+var_C4]
4BAB98:  LDR             R1, [R1]
4BAB9A:  CMP             R1, #0
4BAB9C:  BEQ.W           loc_4BACE6
4BABA0:  VLDR            S6, [SP,#0x140+var_50]
4BABA4:  LDR             R4, [SP,#0x140+var_94]
4BABA6:  VCMPE.F32       S4, S6
4BABAA:  VMRS            APSR_nzcv, FPSCR
4BABAE:  BLT.W           loc_4BACEE
4BABB2:  LDR             R1, [SP,#0x140+var_C8]
4BABB4:  LDR             R1, [R1]
4BABB6:  CMP             R1, #0
4BABB8:  BEQ.W           loc_4BAD5A
4BABBC:  VLDR            S6, [SP,#0x140+var_4C]
4BABC0:  VCMPE.F32       S4, S6
4BABC4:  VMRS            APSR_nzcv, FPSCR
4BABC8:  BGE.W           loc_4BA9C8
4BABCC:  MOVS            R5, #0xF
4BABCE:  LDR.W           R12, [SP,#0x140+var_C8]
4BABD2:  LDR.W           R8, [SP,#0x140+var_13C]
4BABD6:  B               loc_4BACF8
4BABD8:  MOVS            R5, #0
4BABDA:  MOV             R3, R10
4BABDC:  B               loc_4BA9B8
4BABDE:  ADD.W           R8, SP, #0x140+var_88
4BABE2:  MOVS            R5, #0
4BABE4:  MOV             R12, R10
4BABE6:  B               loc_4BACF8
4BABE8:  MOVS            R5, #1
4BABEA:  LDR             R3, [SP,#0x140+var_8C]
4BABEC:  B               loc_4BA9B8
4BABEE:  MOVS            R5, #1
4BABF0:  LDR.W           R12, [SP,#0x140+var_8C]
4BABF4:  LDR.W           R8, [SP,#0x140+var_FC]
4BABF8:  B               loc_4BACFA
4BABFA:  MOVS            R5, #2
4BABFC:  LDRD.W          R3, R4, [SP,#0x140+var_98]
4BAC00:  B               loc_4BA9B8
4BAC02:  MOVS            R5, #2
4BAC04:  LDR.W           R12, [SP,#0x140+var_98]
4BAC08:  LDR.W           R8, [SP,#0x140+var_100]
4BAC0C:  B               loc_4BACFA
4BAC0E:  MOVS            R5, #3
4BAC10:  LDR             R3, [SP,#0x140+var_9C]
4BAC12:  LDR             R4, [SP,#0x140+var_94]
4BAC14:  B               loc_4BA9B8
4BAC16:  MOVS            R5, #3
4BAC18:  LDR.W           R12, [SP,#0x140+var_9C]
4BAC1C:  LDR.W           R8, [SP,#0x140+var_104]
4BAC20:  B               loc_4BACFA
4BAC22:  MOVS            R5, #4
4BAC24:  LDR             R3, [SP,#0x140+var_A0]
4BAC26:  LDR             R4, [SP,#0x140+var_94]
4BAC28:  B               loc_4BA9B8
4BAC2A:  MOVS            R5, #4
4BAC2C:  LDR.W           R12, [SP,#0x140+var_A0]
4BAC30:  LDR.W           R8, [SP,#0x140+var_108]
4BAC34:  B               loc_4BACFA
4BAC36:  MOVS            R5, #5
4BAC38:  LDR             R3, [SP,#0x140+var_A4]
4BAC3A:  LDR             R4, [SP,#0x140+var_94]
4BAC3C:  B               loc_4BA9B8
4BAC3E:  MOVS            R5, #5
4BAC40:  LDR.W           R12, [SP,#0x140+var_A4]
4BAC44:  LDR.W           R8, [SP,#0x140+var_10C]
4BAC48:  B               loc_4BACFA
4BAC4A:  MOVS            R5, #6
4BAC4C:  LDR             R3, [SP,#0x140+var_A8]
4BAC4E:  LDR             R4, [SP,#0x140+var_94]
4BAC50:  B               loc_4BA9B8
4BAC52:  MOVS            R5, #6
4BAC54:  LDR.W           R12, [SP,#0x140+var_A8]
4BAC58:  LDR.W           R8, [SP,#0x140+var_110]
4BAC5C:  B               loc_4BACFA
4BAC5E:  MOVS            R5, #7
4BAC60:  MOV             R3, R11
4BAC62:  LDR             R4, [SP,#0x140+var_94]
4BAC64:  B               loc_4BA9B8
4BAC66:  MOVS            R5, #7
4BAC68:  MOV             R12, R11
4BAC6A:  LDR.W           R8, [SP,#0x140+var_114]
4BAC6E:  B               loc_4BACFA
4BAC70:  MOVS            R5, #8
4BAC72:  MOV             R3, LR
4BAC74:  LDR             R4, [SP,#0x140+var_94]
4BAC76:  B               loc_4BA9B8
4BAC78:  MOVS            R5, #8
4BAC7A:  MOV             R12, LR
4BAC7C:  LDR.W           R8, [SP,#0x140+var_118]
4BAC80:  B               loc_4BACFA
4BAC82:  MOVS            R5, #9
4BAC84:  LDR             R3, [SP,#0x140+var_AC]
4BAC86:  LDR             R4, [SP,#0x140+var_94]
4BAC88:  B               loc_4BA9B8
4BAC8A:  MOVS            R5, #9
4BAC8C:  LDR.W           R12, [SP,#0x140+var_AC]
4BAC90:  LDR.W           R8, [SP,#0x140+var_124]
4BAC94:  B               loc_4BACFA
4BAC96:  MOVS            R5, #0xA
4BAC98:  LDR             R3, [SP,#0x140+var_B0]
4BAC9A:  LDR             R4, [SP,#0x140+var_94]
4BAC9C:  B               loc_4BA9B8
4BAC9E:  MOVS            R5, #0xA
4BACA0:  LDR.W           R12, [SP,#0x140+var_B0]
4BACA4:  LDR.W           R8, [SP,#0x140+var_128]
4BACA8:  B               loc_4BACFA
4BACAA:  MOVS            R5, #0xB
4BACAC:  LDR             R3, [SP,#0x140+var_B8]
4BACAE:  LDR             R4, [SP,#0x140+var_94]
4BACB0:  B               loc_4BA9B8
4BACB2:  MOVS            R5, #0xB
4BACB4:  LDR.W           R12, [SP,#0x140+var_B8]
4BACB8:  LDR.W           R8, [SP,#0x140+var_12C]
4BACBC:  B               loc_4BACFA
4BACBE:  MOVS            R5, #0xC
4BACC0:  LDR             R3, [SP,#0x140+var_BC]
4BACC2:  LDR             R4, [SP,#0x140+var_94]
4BACC4:  B               loc_4BA9B8
4BACC6:  MOVS            R5, #0xC
4BACC8:  LDR.W           R12, [SP,#0x140+var_BC]
4BACCC:  LDR.W           R8, [SP,#0x140+var_130]
4BACD0:  B               loc_4BACFA
4BACD2:  MOVS            R5, #0xD
4BACD4:  LDR             R3, [SP,#0x140+var_C0]
4BACD6:  LDR             R4, [SP,#0x140+var_94]
4BACD8:  B               loc_4BA9B8
4BACDA:  MOVS            R5, #0xD
4BACDC:  LDR.W           R12, [SP,#0x140+var_C0]
4BACE0:  LDR.W           R8, [SP,#0x140+var_134]
4BACE4:  B               loc_4BACFA
4BACE6:  MOVS            R5, #0xE
4BACE8:  LDR             R3, [SP,#0x140+var_C4]
4BACEA:  LDR             R4, [SP,#0x140+var_94]
4BACEC:  B               loc_4BA9B8
4BACEE:  MOVS            R5, #0xE
4BACF0:  LDR.W           R12, [SP,#0x140+var_C4]
4BACF4:  LDR.W           R8, [SP,#0x140+var_138]
4BACF8:  LDR             R4, [SP,#0x140+var_90]
4BACFA:  VMOV            S6, R6
4BACFE:  VCVT.F32.S32    S6, S6
4BAD02:  VMIN.F32        D3, D3, D1
4BAD06:  VCVT.S32.F32    S6, S6
4BAD0A:  VMOV            R3, S6
4BAD0E:  CMP             R5, R3
4BAD10:  BGE             loc_4BAD36
4BAD12:  ADD             R1, SP, #0x140+var_88
4BAD14:  ADD.W           R11, R1, R3,LSL#2
4BAD18:  MOV             R10, R11
4BAD1A:  ADD.W           LR, R4, R3,LSL#2
4BAD1E:  SUBS            R3, #1
4BAD20:  CMP             R3, R5
4BAD22:  LDR.W           R1, [LR,#8]
4BAD26:  STR.W           R1, [LR,#0xC]
4BAD2A:  LDR.W           R1, [R10,#-4]!
4BAD2E:  STR.W           R1, [R11]
4BAD32:  MOV             R11, R10
4BAD34:  BGT             loc_4BAD1A
4BAD36:  STR.W           R2, [R12]
4BAD3A:  CMP             R6, #0x10
4BAD3C:  MOV.W           R2, #0
4BAD40:  VSTR            S4, [R8]
4BAD44:  IT LT
4BAD46:  MOVLT           R2, #1
4BAD48:  LDR.W           R10, [SP,#0x140+var_CC]
4BAD4C:  LDRD.W          R12, R8, [SP,#0x140+var_D4]
4BAD50:  ADD             R6, R2
4BAD52:  LDR             R4, [SP,#0x140+var_94]
4BAD54:  LDRD.W          R11, LR, [SP,#0x140+var_DC]
4BAD58:  B               loc_4BA9C8
4BAD5A:  MOVS            R5, #0xF
4BAD5C:  LDR             R3, [SP,#0x140+var_C8]
4BAD5E:  B               loc_4BA9B8
4BAD60:  LDR             R3, [SP,#0x140+var_B4]
4BAD62:  LDR             R1, [SP,#0x140+var_E0]
4BAD64:  LDR.W           R9, [SP,#0x140+var_E8]
4BAD68:  ADDS            R2, R3, #1
4BAD6A:  CMP             R3, R1
4BAD6C:  BLT.W           loc_4BA962
4BAD70:  LDR             R1, [SP,#0x140+var_F8]
4BAD72:  LDR             R2, [SP,#0x140+var_11C]
4BAD74:  MOV             R3, R1
4BAD76:  CMP             R3, R2
4BAD78:  ADD.W           R1, R3, #1
4BAD7C:  STR             R1, [SP,#0x140+var_F8]
4BAD7E:  BLT.W           loc_4BA94C
4BAD82:  LDR             R4, [SP,#0x140+var_90]
4BAD84:  CMP             R6, #1
4BAD86:  BLT             loc_4BAD9E
4BAD88:  LDR.W           R0, [R10]; this
4BAD8C:  CMP             R0, #0
4BAD8E:  ITT NE
4BAD90:  MOVNE           R1, R10; CEntity **
4BAD92:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4BAD96:  ADD.W           R10, R10, #4
4BAD9A:  SUBS            R6, #1
4BAD9C:  BNE             loc_4BAD88
4BAD9E:  LDR             R0, [R4,#0xC]; this
4BADA0:  CMP             R0, #0
4BADA2:  ITTT NE
4BADA4:  LDRNE           R1, [SP,#0x140+var_140]; CEntity **
4BADA6:  STRNE           R0, [R1]
4BADA8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4BADAC:  ADD             SP, SP, #0xF8
4BADAE:  VPOP            {D8-D12}
4BADB2:  ADD             SP, SP, #4
4BADB4:  POP.W           {R8-R11}
4BADB8:  POP             {R4-R7,PC}
