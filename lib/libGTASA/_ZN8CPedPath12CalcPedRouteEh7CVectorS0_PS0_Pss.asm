; =========================================================
; Game Engine Function: _ZN8CPedPath12CalcPedRouteEh7CVectorS0_PS0_Pss
; Address            : 0x31B5A8 - 0x31BE62
; =========================================================

31B5A8:  PUSH            {R4-R7,LR}
31B5AA:  ADD             R7, SP, #0xC
31B5AC:  PUSH.W          {R8-R11}
31B5B0:  SUB             SP, SP, #4
31B5B2:  VPUSH           {D8-D13}
31B5B6:  SUB.W           SP, SP, #0x7E00
31B5BA:  SUB             SP, SP, #0x48
31B5BC:  VMOV            S2, R1
31B5C0:  VLDR            S0, [R7,#arg_0]
31B5C4:  VLDR            S12, =23.8
31B5C8:  MOV             R9, R0
31B5CA:  VSUB.F32        S4, S0, S2
31B5CE:  LDR             R1, [R7,#arg_10]
31B5D0:  MOVS            R0, #0
31B5D2:  STRH            R0, [R1]
31B5D4:  VABS.F32        S4, S4
31B5D8:  VCMPE.F32       S4, S12
31B5DC:  VMRS            APSR_nzcv, FPSCR
31B5E0:  BGT             loc_31B618
31B5E2:  VMOV            S4, R2
31B5E6:  VLDR            S6, [R7,#arg_4]
31B5EA:  VSUB.F32        S8, S6, S4
31B5EE:  VABS.F32        S8, S8
31B5F2:  VCMPE.F32       S8, S12
31B5F6:  VMRS            APSR_nzcv, FPSCR
31B5FA:  BGT             loc_31B616
31B5FC:  VLDR            S8, [R7,#arg_8]
31B600:  VMOV            S10, R3
31B604:  VSUB.F32        S14, S8, S10
31B608:  VABS.F32        S14, S14
31B60C:  VCMPE.F32       S14, S12
31B610:  VMRS            APSR_nzcv, FPSCR
31B614:  BLE             loc_31B62A
31B616:  MOVS            R0, #0
31B618:  ADD.W           SP, SP, #0x7E00
31B61C:  ADD             SP, SP, #0x48 ; 'H'
31B61E:  VPOP            {D8-D13}
31B622:  ADD             SP, SP, #4
31B624:  POP.W           {R8-R11}
31B628:  POP             {R4-R7,PC}
31B62A:  VMOV.F32        S12, #0.5
31B62E:  VLDR            S16, =0.7
31B632:  VADD.F32        S14, S2, S0
31B636:  ADD.W           LR, SP, #0x7E98+var_7E80
31B63A:  VADD.F32        S1, S4, S6
31B63E:  ADD.W           R0, LR, #0x1A20
31B642:  VMOV.F32        S3, #-14.0
31B646:  VADD.F32        S8, S10, S8
31B64A:  VMUL.F32        S14, S14, S12
31B64E:  VMUL.F32        S1, S1, S12
31B652:  VMUL.F32        S8, S8, S12
31B656:  VADD.F32        S20, S14, S3
31B65A:  VADD.F32        S18, S1, S3
31B65E:  VSUB.F32        S0, S0, S20
31B662:  VSUB.F32        S2, S2, S20
31B666:  VSUB.F32        S6, S6, S18
31B66A:  VSUB.F32        S4, S4, S18
31B66E:  VDIV.F32        S0, S0, S16
31B672:  VDIV.F32        S2, S2, S16
31B676:  VDIV.F32        S6, S6, S16
31B67A:  VDIV.F32        S4, S4, S16
31B67E:  VCVT.S32.F32    S0, S0
31B682:  VCVT.S32.F32    S2, S2
31B686:  VSTR            S8, [R0]
31B68A:  VCVT.S32.F32    S6, S6
31B68E:  VSTR            S18, [R0,#-4]
31B692:  VCVT.S32.F32    S4, S4
31B696:  VSTR            S20, [R0,#-8]
31B69A:  MOVS            R0, #0
31B69C:  VMOV            R11, S0
31B6A0:  VMOV            LR, S2
31B6A4:  VMOV            R10, S6
31B6A8:  VMOV            R8, S4
31B6AC:  CMP             LR, R11
31B6AE:  IT EQ
31B6B0:  CMPEQ           R8, R10
31B6B2:  BEQ             loc_31B618
31B6B4:  VMOV.F32        S0, #28.0
31B6B8:  ADD.W           R2, SP, #0x7E98+var_6458
31B6BC:  MOVW            R1, #0x7FFF
31B6C0:  MOV.W           R12, #0
31B6C4:  MOVS            R6, #0
31B6C6:  VADD.F32        S24, S18, S0
31B6CA:  VADD.F32        S22, S20, S0
31B6CE:  MOVS            R5, #0
31B6D0:  MOVS            R4, #0
31B6D2:  ADDS            R3, R2, R5
31B6D4:  STRB            R0, [R2,R5]
31B6D6:  ADDS            R5, #0x10
31B6D8:  STRH            R1, [R3,#4]
31B6DA:  CMP.W           R5, #0x280
31B6DE:  STRB            R6, [R3,#1]
31B6E0:  STRB            R4, [R3,#2]
31B6E2:  ADD.W           R4, R4, #1
31B6E6:  BNE             loc_31B6D2
31B6E8:  ADD.W           R12, R12, #1
31B6EC:  ADD.W           R2, R2, #0x280
31B6F0:  ADDS            R6, #1
31B6F2:  CMP.W           R12, #0x28 ; '('
31B6F6:  BNE             loc_31B6CE
31B6F8:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x31B704)
31B6FC:  MOVW            R1, #0xFFFF
31B700:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
31B702:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
31B704:  LDRH            R0, [R0]; this
31B706:  STRD.W          R8, LR, [SP,#0x7E98+var_7E8C]
31B70A:  CMP             R0, R1
31B70C:  STRD.W          R11, R10, [SP,#0x7E98+var_7E94]
31B710:  BEQ             loc_31B718
31B712:  ADD.W           R8, R0, #1
31B716:  B               loc_31B720
31B718:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
31B71C:  MOV.W           R8, #1
31B720:  VLDR            S26, =50.0
31B724:  VDIV.F32        S0, S20, S26
31B728:  VLDR            S20, =60.0
31B72C:  VADD.F32        S0, S0, S20
31B730:  VMOV            R0, S0; x
31B734:  BLX             floorf
31B738:  VDIV.F32        S0, S18, S26
31B73C:  MOV             R5, R0
31B73E:  VADD.F32        S0, S0, S20
31B742:  VMOV            R0, S0; x
31B746:  BLX             floorf
31B74A:  VDIV.F32        S0, S24, S26
31B74E:  MOV             R6, R0
31B750:  VADD.F32        S0, S0, S20
31B754:  VDIV.F32        S2, S22, S26
31B758:  VMOV            R0, S0; x
31B75C:  VADD.F32        S18, S2, S20
31B760:  BLX             floorf
31B764:  VMOV            R1, S18
31B768:  VMOV            S18, R0
31B76C:  VMOV            S20, R5
31B770:  MOV             R0, R1; x
31B772:  BLX             floorf
31B776:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x31B786)
31B77A:  VCVT.S32.F32    S4, S20
31B77E:  VMOV            S0, R0
31B782:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
31B784:  VMOV            S2, R6
31B788:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
31B78A:  STRH.W          R8, [R1]; CWorld::ms_nCurrentScanCode
31B78E:  VCVT.S32.F32    S6, S18
31B792:  VCVT.S32.F32    S0, S0
31B796:  MOVS            R1, #0x77 ; 'w'
31B798:  VCVT.S32.F32    S2, S2
31B79C:  VMOV            R0, S6
31B7A0:  CMP             R0, #0x77 ; 'w'
31B7A2:  IT GE
31B7A4:  MOVGE           R0, R1
31B7A6:  STR             R0, [SP,#0x7E98+var_7E84]
31B7A8:  VMOV            R0, S0
31B7AC:  CMP             R0, #0x77 ; 'w'
31B7AE:  IT LT
31B7B0:  MOVLT           R1, R0
31B7B2:  MOVS            R0, #0
31B7B4:  STR             R1, [SP,#0x7E98+var_7E6C]
31B7B6:  VMOV            R1, S2
31B7BA:  CMP             R1, #0
31B7BC:  IT LE
31B7BE:  MOVLE           R1, R0
31B7C0:  STR             R1, [SP,#0x7E98+var_7E7C]
31B7C2:  VMOV            R1, S4
31B7C6:  CMP             R1, #0
31B7C8:  IT LE
31B7CA:  MOVLE           R1, R0
31B7CC:  CMP.W           R9, #1
31B7D0:  STR             R1, [SP,#0x7E98+var_7E80]
31B7D2:  BEQ             loc_31B8A6
31B7D4:  LDR             R0, [SP,#0x7E98+var_7E84]
31B7D6:  LDR             R1, [SP,#0x7E98+var_7E7C]
31B7D8:  CMP             R1, R0
31B7DA:  BGT             loc_31B8A6
31B7DC:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x31B7EC)
31B7E0:  ADD.W           LR, SP, #0x7E98+var_7E88
31B7E4:  ADD.W           R5, LR, #0x1A20
31B7E8:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
31B7EA:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
31B7EC:  STR             R0, [SP,#0x7E98+var_7E74]
31B7EE:  LDR.W           R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x31B7F6)
31B7F2:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
31B7F4:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
31B7F6:  STR             R0, [SP,#0x7E98+var_7E78]
31B7F8:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x31B800)
31B7FC:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
31B7FE:  LDR             R6, [R0]; CWorld::ms_nCurrentScanCode ...
31B800:  LDR.W           R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x31B808)
31B804:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
31B806:  LDR.W           R11, [R0]; CWorld::ms_nCurrentScanCode ...
31B80A:  LDR             R0, [SP,#0x7E98+var_7E6C]
31B80C:  LDR             R1, [SP,#0x7E98+var_7E80]
31B80E:  CMP             R1, R0
31B810:  BGT             loc_31B896
31B812:  LDR             R0, [SP,#0x7E98+var_7E7C]
31B814:  LDR.W           R10, [SP,#0x7E98+var_7E80]
31B818:  LSLS            R0, R0, #4
31B81A:  UXTB            R0, R0
31B81C:  STR             R0, [SP,#0x7E98+var_7E70]
31B81E:  LDR             R1, [SP,#0x7E98+var_7E70]
31B820:  AND.W           R0, R10, #0xF
31B824:  ORRS            R0, R1
31B826:  ADD.W           R8, R0, R0,LSL#1
31B82A:  LDR             R0, [SP,#0x7E98+var_7E74]
31B82C:  LDR.W           R9, [R0,R8,LSL#2]
31B830:  B               loc_31B83E
31B832:  STRH            R1, [R0,#0x30]
31B834:  ADD.W           R1, SP, #0x7E98+var_6458
31B838:  MOV             R2, R5
31B83A:  BLX             j__ZN8CPedPath11AddBlockadeEP7CEntityPA40_12CPedPathNodeP7CVector; CPedPath::AddBlockade(CEntity *,CPedPathNode (*)[40],CVector *)
31B83E:  CMP.W           R9, #0
31B842:  BEQ             loc_31B85C
31B844:  LDRD.W          R0, R9, [R9]
31B848:  LDRH.W          R1, [R11]; CWorld::ms_nCurrentScanCode
31B84C:  LDRH            R2, [R0,#0x30]
31B84E:  CMP             R2, R1
31B850:  ITT NE
31B852:  LDRBNE          R2, [R0,#0x1C]
31B854:  MOVSNE.W        R2, R2,LSL#31
31B858:  BEQ             loc_31B83E
31B85A:  B               loc_31B832
31B85C:  LDR             R0, [SP,#0x7E98+var_7E78]
31B85E:  ADD.W           R0, R0, R8,LSL#2
31B862:  LDR             R4, [R0,#8]
31B864:  B               loc_31B872
31B866:  STRH            R1, [R0,#0x30]
31B868:  ADD.W           R1, SP, #0x7E98+var_6458
31B86C:  MOV             R2, R5
31B86E:  BLX             j__ZN8CPedPath11AddBlockadeEP7CEntityPA40_12CPedPathNodeP7CVector; CPedPath::AddBlockade(CEntity *,CPedPathNode (*)[40],CVector *)
31B872:  CBZ             R4, loc_31B88A
31B874:  LDRD.W          R0, R4, [R4]
31B878:  LDRH            R1, [R6]; CWorld::ms_nCurrentScanCode
31B87A:  LDRH            R2, [R0,#0x30]
31B87C:  CMP             R2, R1
31B87E:  ITT NE
31B880:  LDRBNE          R2, [R0,#0x1C]
31B882:  MOVSNE.W        R2, R2,LSL#31
31B886:  BEQ             loc_31B872
31B888:  B               loc_31B866
31B88A:  LDR             R1, [SP,#0x7E98+var_7E6C]
31B88C:  ADD.W           R0, R10, #1
31B890:  CMP             R10, R1
31B892:  MOV             R10, R0
31B894:  BLT             loc_31B81E
31B896:  LDR             R0, [SP,#0x7E98+var_7E7C]
31B898:  LDR             R1, [SP,#0x7E98+var_7E84]
31B89A:  MOV             R2, R0
31B89C:  CMP             R2, R1
31B89E:  ADD.W           R0, R2, #1
31B8A2:  STR             R0, [SP,#0x7E98+var_7E7C]
31B8A4:  BLT             loc_31B80A
31B8A6:  ADD             R2, SP, #0x7E98+var_7E68
31B8A8:  MOVS            R0, #0
31B8AA:  MOVS            R3, #0
31B8AC:  ADDS            R1, R2, R0
31B8AE:  ADDS            R0, #0x10
31B8B0:  CMP.W           R0, #0x1A00
31B8B4:  STRD.W          R3, R3, [R1,#8]
31B8B8:  BNE             loc_31B8AC
31B8BA:  LDR             R0, [SP,#0x7E98+var_7E94]
31B8BC:  ADD.W           R1, SP, #0x7E98+var_6458
31B8C0:  LDR             R6, [SP,#0x7E98+var_7E90]
31B8C2:  MOVS            R3, #0
31B8C4:  MOV             R5, R1
31B8C6:  MOVW            R12, #0xFD80
31B8CA:  ADD.W           R0, R0, R0,LSL#2
31B8CE:  MOVT            R12, #0xFFFF
31B8D2:  LSLS            R1, R6, #4
31B8D4:  ADD.W           R0, R5, R0,LSL#7
31B8D8:  ADD.W           R10, R0, R6,LSL#4
31B8DC:  STR.W           R10, [SP,#0x7E98+var_7E60]
31B8E0:  STRB            R3, [R0,R1]
31B8E2:  MOVS            R0, #0
31B8E4:  STRH.W          R3, [R10,#4]
31B8E8:  STR             R0, [SP,#0x7E98+var_7E74]
31B8EA:  STRD.W          R3, R2, [R10,#8]
31B8EE:  MOVW            R3, #0x7FFF
31B8F2:  LDR             R0, [SP,#0x7E98+var_7E88]
31B8F4:  LDR             R1, [SP,#0x7E98+var_7E8C]
31B8F6:  STR.W           R10, [SP,#0x7E98+var_7E78]
31B8FA:  ADD.W           R0, R0, R0,LSL#2
31B8FE:  ADD.W           R0, R5, R0,LSL#7
31B902:  ADD.W           LR, R0, R1,LSL#4
31B906:  CMP.W           R10, #0
31B90A:  BNE             loc_31B936
31B90C:  B               loc_31BCBE
31B90E:  ALIGN 0x10
31B910:  DCFS 23.8
31B914:  DCFS 0.7
31B918:  DCFS 50.0
31B91C:  DCFS 60.0
31B920:  ADDS            R1, #1
31B922:  ADD             R0, SP, #0x7E98+var_7E68
31B924:  STR             R1, [SP,#0x7E98+var_7E74]
31B926:  ADD.W           R0, R0, R1,LSL#4
31B92A:  LDR.W           R10, [R0,#8]
31B92E:  CMP.W           R10, #0
31B932:  BEQ.W           loc_31BCBE
31B936:  LDR             R0, [SP,#0x7E98+var_7E74]
31B938:  ADD             R1, SP, #0x7E98+var_7E68
31B93A:  MOV             R2, R0
31B93C:  ADD.W           R8, R2, #7
31B940:  ADD.W           R9, R2, #5
31B944:  MOV.W           R0, R8,LSL#16
31B948:  ADD.W           R0, R1, R0,ASR#12
31B94C:  STR             R0, [SP,#0x7E98+var_7E70]
31B94E:  ADD.W           R5, R0, #8
31B952:  MOV.W           R0, R9,LSL#16
31B956:  ADD.W           R0, R1, R0,ASR#12
31B95A:  STR             R0, [SP,#0x7E98+var_7E6C]
31B95C:  ADD.W           R11, R0, #8
31B960:  CMP             R10, LR
31B962:  BEQ.W           loc_31BCCA
31B966:  LDRSB.W         R0, [R10,#1]
31B96A:  CMP             R0, #1
31B96C:  BLT.W           loc_31BAEA
31B970:  LDRB.W          R0, [R10,R12]
31B974:  CBNZ            R0, loc_31B9DE
31B976:  MOVW            R0, #0xFD84
31B97A:  SXTH.W          R1, R9
31B97E:  MOVT            R0, #0xFFFF
31B982:  LDRSH.W         R0, [R10,R0]
31B986:  CMP             R0, R1
31B988:  BLE             loc_31B9DE
31B98A:  SUB.W           R4, R10, #0x280
31B98E:  SUB.W           R6, R10, #0x27C
31B992:  SUB.W           R1, R10, #0x278
31B996:  CMP             R0, R3
31B998:  BNE             loc_31B9A0
31B99A:  SUB.W           R0, R10, #0x274
31B99E:  B               loc_31B9C2
31B9A0:  MOVW            R0, #0xFD8C
31B9A4:  LDR             R2, [R1]
31B9A6:  MOVT            R0, #0xFFFF
31B9AA:  LDR.W           R0, [R10,R0]
31B9AE:  STR             R2, [R0,#8]
31B9B0:  SUB.W           R0, R10, #0x274
31B9B4:  LDR             R2, [R1]
31B9B6:  CMP             R2, #0
31B9B8:  ITTT NE
31B9BA:  LDRNE           R3, [R0]
31B9BC:  STRNE           R3, [R2,#0xC]
31B9BE:  MOVWNE          R3, #0x7FFF
31B9C2:  LDR.W           R2, [R11]
31B9C6:  STR             R2, [R1]
31B9C8:  LDR             R1, [SP,#0x7E98+var_7E6C]
31B9CA:  STR             R1, [R0]
31B9CC:  LDR.W           R0, [R11]
31B9D0:  CMP             R0, #0
31B9D2:  IT NE
31B9D4:  STRNE           R4, [R0,#0xC]
31B9D6:  STR.W           R4, [R11]
31B9DA:  STRH.W          R9, [R6]
31B9DE:  MOV             R6, R10
31B9E0:  LDRSB.W         R0, [R6,#2]!
31B9E4:  CMP             R0, #1
31B9E6:  BLT             loc_31BA68
31B9E8:  MOV             R1, #0xFFFFFD70
31B9F0:  LDRB.W          R1, [R10,R1]
31B9F4:  CBNZ            R1, loc_31BA62
31B9F6:  MOV             R1, #0xFFFFFD74
31B9FE:  LDRSH.W         R2, [R10,R1]
31BA02:  SXTH.W          R1, R8
31BA06:  CMP             R2, R1
31BA08:  BLE             loc_31BA62
31BA0A:  SUB.W           R4, R10, #0x290
31BA0E:  SUB.W           R12, R10, #0x28C
31BA12:  SUB.W           R1, R10, #0x288
31BA16:  CMP             R2, R3
31BA18:  BNE             loc_31BA20
31BA1A:  SUB.W           R0, R10, #0x284
31BA1E:  B               loc_31BA42
31BA20:  MOVW            R0, #0xFD7C
31BA24:  LDR             R2, [R1]
31BA26:  MOVT            R0, #0xFFFF
31BA2A:  LDR.W           R0, [R10,R0]
31BA2E:  STR             R2, [R0,#8]
31BA30:  SUB.W           R0, R10, #0x284
31BA34:  LDR             R2, [R1]
31BA36:  CMP             R2, #0
31BA38:  ITTT NE
31BA3A:  LDRNE           R3, [R0]
31BA3C:  STRNE           R3, [R2,#0xC]
31BA3E:  MOVWNE          R3, #0x7FFF
31BA42:  LDR             R2, [R5]
31BA44:  STR             R2, [R1]
31BA46:  LDR             R1, [SP,#0x7E98+var_7E70]
31BA48:  STR             R1, [R0]
31BA4A:  LDR             R0, [R5]
31BA4C:  CMP             R0, #0
31BA4E:  IT NE
31BA50:  STRNE           R4, [R0,#0xC]
31BA52:  STR             R4, [R5]
31BA54:  STRH.W          R8, [R12]
31BA58:  MOVW            R12, #0xFD80
31BA5C:  LDRB            R0, [R6]
31BA5E:  MOVT            R12, #0xFFFF
31BA62:  SXTB            R0, R0
31BA64:  CMP             R0, #0x26 ; '&'
31BA66:  BGT             loc_31BAE0
31BA68:  MOV             R0, #0xFFFFFD90
31BA70:  LDRB.W          R0, [R10,R0]
31BA74:  CBNZ            R0, loc_31BAE0
31BA76:  MOV             R0, #0xFFFFFD94
31BA7E:  LDRSH.W         R2, [R10,R0]
31BA82:  SXTH.W          R0, R8
31BA86:  CMP             R2, R0
31BA88:  BLE             loc_31BAE0
31BA8A:  SUB.W           R4, R10, #0x270
31BA8E:  SUB.W           R12, R10, #0x26C
31BA92:  SUB.W           R0, R10, #0x268
31BA96:  CMP             R2, R3
31BA98:  BNE             loc_31BAA0
31BA9A:  SUB.W           R2, R10, #0x264
31BA9E:  B               loc_31BAC2
31BAA0:  MOVW            R1, #0xFD9C
31BAA4:  LDR             R2, [R0]
31BAA6:  MOVT            R1, #0xFFFF
31BAAA:  LDR.W           R1, [R10,R1]
31BAAE:  STR             R2, [R1,#8]
31BAB0:  SUB.W           R2, R10, #0x264
31BAB4:  LDR             R1, [R0]
31BAB6:  CMP             R1, #0
31BAB8:  ITTT NE
31BABA:  LDRNE           R3, [R2]
31BABC:  STRNE           R3, [R1,#0xC]
31BABE:  MOVWNE          R3, #0x7FFF
31BAC2:  LDR             R1, [R5]
31BAC4:  STR             R1, [R0]
31BAC6:  LDR             R0, [SP,#0x7E98+var_7E70]
31BAC8:  STR             R0, [R2]
31BACA:  LDR             R0, [R5]
31BACC:  CMP             R0, #0
31BACE:  IT NE
31BAD0:  STRNE           R4, [R0,#0xC]
31BAD2:  STR             R4, [R5]
31BAD4:  STRH.W          R8, [R12]
31BAD8:  MOV             R12, #0xFFFFFD80
31BAE0:  LDRSB.W         R0, [R10,#1]
31BAE4:  CMP             R0, #0x26 ; '&'
31BAE6:  BGT.W           loc_31BBFA
31BAEA:  LDRB.W          R0, [R10,#0x280]
31BAEE:  CBNZ            R0, loc_31BB42
31BAF0:  LDRSH.W         R0, [R10,#0x284]
31BAF4:  SXTH.W          R1, R9
31BAF8:  CMP             R0, R1
31BAFA:  BLE             loc_31BB42
31BAFC:  ADD.W           R1, R10, #0x280
31BB00:  CMP             R0, R3
31BB02:  BNE             loc_31BB0A
31BB04:  ADD.W           R0, R10, #0x28C
31BB08:  B               loc_31BB24
31BB0A:  LDRD.W          R0, R2, [R10,#0x288]
31BB0E:  STR             R0, [R2,#8]
31BB10:  ADD.W           R0, R10, #0x28C
31BB14:  LDR.W           R2, [R10,#0x288]
31BB18:  CMP             R2, #0
31BB1A:  ITTT NE
31BB1C:  LDRNE           R3, [R0]
31BB1E:  STRNE           R3, [R2,#0xC]
31BB20:  MOVWNE          R3, #0x7FFF
31BB24:  LDR.W           R2, [R11]
31BB28:  STR.W           R2, [R10,#0x288]
31BB2C:  LDR             R2, [SP,#0x7E98+var_7E6C]
31BB2E:  STR             R2, [R0]
31BB30:  LDR.W           R0, [R11]
31BB34:  CMP             R0, #0
31BB36:  IT NE
31BB38:  STRNE           R1, [R0,#0xC]
31BB3A:  STR.W           R1, [R11]
31BB3E:  STRH.W          R9, [R10,#0x284]
31BB42:  MOV             R6, R10
31BB44:  LDRSB.W         R0, [R6,#2]!
31BB48:  CMP             R0, #1
31BB4A:  BLT             loc_31BBA8
31BB4C:  LDRB.W          R1, [R10,#0x270]
31BB50:  CBNZ            R1, loc_31BBA2
31BB52:  LDRSH.W         R2, [R10,#0x274]
31BB56:  SXTH.W          R1, R8
31BB5A:  CMP             R2, R1
31BB5C:  BLE             loc_31BBA2
31BB5E:  ADD.W           R1, R10, #0x270
31BB62:  CMP             R2, R3
31BB64:  BNE             loc_31BB6C
31BB66:  ADD.W           R0, R10, #0x27C
31BB6A:  B               loc_31BB86
31BB6C:  LDRD.W          R0, R2, [R10,#0x278]
31BB70:  STR             R0, [R2,#8]
31BB72:  ADD.W           R0, R10, #0x27C
31BB76:  LDR.W           R2, [R10,#0x278]
31BB7A:  CMP             R2, #0
31BB7C:  ITTT NE
31BB7E:  LDRNE           R3, [R0]
31BB80:  STRNE           R3, [R2,#0xC]
31BB82:  MOVWNE          R3, #0x7FFF
31BB86:  LDR             R2, [R5]
31BB88:  STR.W           R2, [R10,#0x278]
31BB8C:  LDR             R2, [SP,#0x7E98+var_7E70]
31BB8E:  STR             R2, [R0]
31BB90:  LDR             R0, [R5]
31BB92:  CMP             R0, #0
31BB94:  IT NE
31BB96:  STRNE           R1, [R0,#0xC]
31BB98:  STR             R1, [R5]
31BB9A:  LDRB.W          R0, [R10,#2]
31BB9E:  STRH.W          R8, [R10,#0x274]
31BBA2:  SXTB            R0, R0
31BBA4:  CMP             R0, #0x26 ; '&'
31BBA6:  BGT             loc_31BBFA
31BBA8:  LDRB.W          R0, [R10,#0x290]
31BBAC:  CBNZ            R0, loc_31BBFA
31BBAE:  LDRSH.W         R0, [R10,#0x294]
31BBB2:  SXTH.W          R1, R8
31BBB6:  CMP             R0, R1
31BBB8:  BLE             loc_31BBFA
31BBBA:  ADD.W           R1, R10, #0x290
31BBBE:  CMP             R0, R3
31BBC0:  BNE             loc_31BBC8
31BBC2:  ADD.W           R0, R10, #0x29C
31BBC6:  B               loc_31BBE2
31BBC8:  LDRD.W          R0, R2, [R10,#0x298]
31BBCC:  STR             R0, [R2,#8]
31BBCE:  ADD.W           R0, R10, #0x29C
31BBD2:  LDR.W           R2, [R10,#0x298]
31BBD6:  CMP             R2, #0
31BBD8:  ITTT NE
31BBDA:  LDRNE           R3, [R0]
31BBDC:  STRNE           R3, [R2,#0xC]
31BBDE:  MOVWNE          R3, #0x7FFF
31BBE2:  LDR             R2, [R5]
31BBE4:  STR.W           R2, [R10,#0x298]
31BBE8:  LDR             R2, [SP,#0x7E98+var_7E70]
31BBEA:  STR             R2, [R0]
31BBEC:  LDR             R0, [R5]
31BBEE:  CMP             R0, #0
31BBF0:  IT NE
31BBF2:  STRNE           R1, [R0,#0xC]
31BBF4:  STR             R1, [R5]
31BBF6:  STRH.W          R8, [R10,#0x294]
31BBFA:  LDRSB.W         R0, [R6]
31BBFE:  CMP             R0, #1
31BC00:  BLT             loc_31BC5E
31BC02:  MOV             R4, R10
31BC04:  LDRB.W          R1, [R4,#-0x10]!
31BC08:  CBNZ            R1, loc_31BC58
31BC0A:  LDRSH.W         R1, [R10,#-0xC]
31BC0E:  SXTH.W          R2, R9
31BC12:  CMP             R1, R2
31BC14:  BLE             loc_31BC58
31BC16:  CMP             R1, R3
31BC18:  BNE             loc_31BC20
31BC1A:  SUB.W           R0, R10, #4
31BC1E:  B               loc_31BC38
31BC20:  MOV             R0, R10
31BC22:  LDR.W           R1, [R0,#-4]!
31BC26:  LDR.W           R2, [R0,#-4]
31BC2A:  STR             R2, [R1,#8]
31BC2C:  LDR.W           R1, [R0,#-4]
31BC30:  CMP             R1, #0
31BC32:  ITT NE
31BC34:  LDRNE           R2, [R0]
31BC36:  STRNE           R2, [R1,#0xC]
31BC38:  LDR.W           R1, [R11]
31BC3C:  STR.W           R1, [R10,#-8]
31BC40:  LDR             R1, [SP,#0x7E98+var_7E6C]
31BC42:  STR             R1, [R0]
31BC44:  LDR.W           R0, [R11]
31BC48:  CMP             R0, #0
31BC4A:  IT NE
31BC4C:  STRNE           R4, [R0,#0xC]
31BC4E:  STR.W           R4, [R11]
31BC52:  STRH.W          R9, [R10,#-0xC]
31BC56:  LDRB            R0, [R6]
31BC58:  SXTB            R0, R0
31BC5A:  CMP             R0, #0x26 ; '&'
31BC5C:  BGT             loc_31BCB2
31BC5E:  MOV             R4, R10
31BC60:  LDRB.W          R0, [R4,#0x10]!
31BC64:  CBNZ            R0, loc_31BCB2
31BC66:  LDRSH.W         R0, [R10,#0x14]
31BC6A:  SXTH.W          R1, R9
31BC6E:  CMP             R0, R1
31BC70:  BLE             loc_31BCB2
31BC72:  CMP             R0, R3
31BC74:  BNE             loc_31BC7C
31BC76:  ADD.W           R0, R10, #0x1C
31BC7A:  B               loc_31BC94
31BC7C:  MOV             R0, R10
31BC7E:  LDR.W           R1, [R0,#0x1C]!
31BC82:  LDR.W           R2, [R0,#-4]
31BC86:  STR             R2, [R1,#8]
31BC88:  LDR.W           R1, [R0,#-4]
31BC8C:  CMP             R1, #0
31BC8E:  ITT NE
31BC90:  LDRNE           R2, [R0]
31BC92:  STRNE           R2, [R1,#0xC]
31BC94:  LDR.W           R1, [R11]
31BC98:  STR.W           R1, [R10,#0x18]
31BC9C:  LDR             R1, [SP,#0x7E98+var_7E6C]
31BC9E:  STR             R1, [R0]
31BCA0:  LDR.W           R0, [R11]
31BCA4:  CMP             R0, #0
31BCA6:  IT NE
31BCA8:  STRNE           R4, [R0,#0xC]
31BCAA:  STR.W           R4, [R11]
31BCAE:  STRH.W          R9, [R10,#0x14]
31BCB2:  LDR.W           R10, [R10,#8]
31BCB6:  CMP.W           R10, #0
31BCBA:  BNE.W           loc_31B960
31BCBE:  LDR             R1, [SP,#0x7E98+var_7E74]
31BCC0:  CMP.W           R1, #0x19E
31BCC4:  BNE.W           loc_31B920
31BCC8:  B               loc_31B616
31BCCA:  LDR             R5, [R7,#arg_10]
31BCCC:  MOVS            R0, #0
31BCCE:  LDR.W           R8, [R7,#arg_14]
31BCD2:  STRH            R0, [R5]
31BCD4:  MOVS            R0, #1
31BCD6:  CMP.W           R8, #1
31BCDA:  BLT.W           loc_31B618
31BCDE:  LDR.W           R10, [SP,#0x7E98+var_7E78]
31BCE2:  ADD             R1, SP, #0x7E98+var_7E80
31BCE4:  LDR.W           R9, [R7,#arg_C]
31BCE8:  MOVW            R11, #0xFD84
31BCEC:  ADD.W           R12, R1, #0x1A20
31BCF0:  CMP             LR, R10
31BCF2:  MOVT            R11, #0xFFFF
31BCF6:  BEQ.W           loc_31B618
31BCFA:  MOVS            R2, #0
31BCFC:  LDRSB.W         R3, [LR,#1]
31BD00:  CMP             R3, #0
31BD02:  BLE             loc_31BD18
31BD04:  LDRSH.W         R1, [LR,R11]
31BD08:  LDRSH.W         R0, [LR,#4]
31BD0C:  ADDS            R1, #5
31BD0E:  CMP             R1, R0
31BD10:  BNE             loc_31BD1E
31BD12:  SUB.W           R3, LR, #0x280
31BD16:  B               loc_31BDDE
31BD18:  LDRH.W          R0, [LR,#4]
31BD1C:  B               loc_31BD24
31BD1E:  UXTH            R0, R0
31BD20:  CMP             R3, #0x26 ; '&'
31BD22:  BGT             loc_31BD36
31BD24:  LDRSH.W         R1, [LR,#0x284]
31BD28:  SXTH            R6, R0
31BD2A:  ADDS            R1, #5
31BD2C:  CMP             R1, R6
31BD2E:  BNE             loc_31BD36
31BD30:  ADD.W           R3, LR, #0x280
31BD34:  B               loc_31BDDE
31BD36:  LDRSB.W         R6, [LR,#2]
31BD3A:  CMP             R6, #0
31BD3C:  BLE             loc_31BD50
31BD3E:  LDRSH.W         R4, [LR,#-0xC]
31BD42:  SXTH            R1, R0
31BD44:  ADDS            R4, #5
31BD46:  CMP             R4, R1
31BD48:  BNE             loc_31BD54
31BD4A:  SUB.W           R3, LR, #0x10
31BD4E:  B               loc_31BDDE
31BD50:  SXTH            R1, R0
31BD52:  B               loc_31BD58
31BD54:  CMP             R6, #0x26 ; '&'
31BD56:  BGT             loc_31BD68
31BD58:  LDRSH.W         R4, [LR,#0x14]
31BD5C:  ADDS            R4, #5
31BD5E:  CMP             R4, R1
31BD60:  BNE             loc_31BD68
31BD62:  ADD.W           R3, LR, #0x10
31BD66:  B               loc_31BDDE
31BD68:  CMP             R3, #1
31BD6A:  BLT             loc_31BDAE
31BD6C:  CMP             R6, #0
31BD6E:  BLE             loc_31BD8A
31BD70:  MOV             R1, #0xFFFFFD74
31BD78:  LDRSH.W         R1, [LR,R1]
31BD7C:  ADDS            R4, R1, #7
31BD7E:  SXTH            R1, R0
31BD80:  CMP             R4, R1
31BD82:  BNE             loc_31BD8E
31BD84:  SUB.W           R3, LR, #0x290
31BD88:  B               loc_31BDDE
31BD8A:  SXTH            R1, R0
31BD8C:  B               loc_31BD92
31BD8E:  CMP             R6, #0x26 ; '&'
31BD90:  BGT             loc_31BDAA
31BD92:  MOV             R4, #0xFFFFFD94
31BD9A:  LDRSH.W         R4, [LR,R4]
31BD9E:  ADDS            R4, #7
31BDA0:  CMP             R4, R1
31BDA2:  BNE             loc_31BDAA
31BDA4:  SUB.W           R3, LR, #0x270
31BDA8:  B               loc_31BDDE
31BDAA:  CMP             R3, #0x26 ; '&'
31BDAC:  BGT             loc_31BDDC
31BDAE:  CMP             R6, #1
31BDB0:  BLT             loc_31BDC8
31BDB2:  LDRSH.W         R1, [LR,#0x274]
31BDB6:  SXTH            R3, R0
31BDB8:  ADDS            R1, #7
31BDBA:  CMP             R1, R3
31BDBC:  BNE             loc_31BDC4
31BDBE:  ADD.W           R3, LR, #0x270
31BDC2:  B               loc_31BDDE
31BDC4:  CMP             R6, #0x26 ; '&'
31BDC6:  BGT             loc_31BDDC
31BDC8:  LDRSH.W         R1, [LR,#0x294]
31BDCC:  SXTH            R0, R0
31BDCE:  MOVS            R3, #0
31BDD0:  ADDS            R1, #7
31BDD2:  CMP             R1, R0
31BDD4:  IT EQ
31BDD6:  ADDEQ.W         R3, LR, #0x290
31BDDA:  B               loc_31BDDE
31BDDC:  MOVS            R3, #0
31BDDE:  SXTH            R1, R2
31BDE0:  VLDR            D16, [R12,#-8]
31BDE4:  ADD.W           R1, R1, R1,LSL#1
31BDE8:  LDR.W           R0, [R12]
31BDEC:  ADD.W           R1, R9, R1,LSL#2
31BDF0:  STR             R0, [R1,#8]
31BDF2:  VSTR            D16, [R1]
31BDF6:  LDRSB.W         R0, [R3,#1]
31BDFA:  VMOV            S0, R0
31BDFE:  VCVT.F32.S32    S0, S0
31BE02:  LDRSH.W         R0, [R5]
31BE06:  ADD.W           R0, R0, R0,LSL#1
31BE0A:  ADD.W           R0, R9, R0,LSL#2
31BE0E:  VMUL.F32        S0, S0, S16
31BE12:  VLDR            S2, [R0]
31BE16:  VADD.F32        S0, S2, S0
31BE1A:  VSTR            S0, [R0]
31BE1E:  LDRSB.W         R0, [R3,#2]
31BE22:  VMOV            S0, R0
31BE26:  VCVT.F32.S32    S0, S0
31BE2A:  LDRSH.W         R0, [R5]
31BE2E:  ADD.W           R0, R0, R0,LSL#1
31BE32:  ADD.W           R0, R9, R0,LSL#2
31BE36:  VMUL.F32        S0, S0, S16
31BE3A:  VLDR            S2, [R0,#4]
31BE3E:  VADD.F32        S0, S2, S0
31BE42:  VSTR            S0, [R0,#4]
31BE46:  LDRH            R0, [R5]
31BE48:  ADDS            R0, #1
31BE4A:  STRH            R0, [R5]
31BE4C:  SXTH            R2, R0
31BE4E:  MOVS            R0, #1
31BE50:  CMP             R2, R8
31BE52:  BGE.W           loc_31B618
31BE56:  CMP             R3, R10
31BE58:  MOV             LR, R3
31BE5A:  BNE.W           loc_31BCFC
31BE5E:  B.W             loc_31B618
