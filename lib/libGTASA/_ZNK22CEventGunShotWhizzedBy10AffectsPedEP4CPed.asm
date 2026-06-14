; =========================================================
; Game Engine Function: _ZNK22CEventGunShotWhizzedBy10AffectsPedEP4CPed
; Address            : 0x377684 - 0x37779A
; =========================================================

377684:  PUSH            {R4,R5,R7,LR}
377686:  ADD             R7, SP, #8
377688:  SUB             SP, SP, #0x10
37768A:  MOV             R4, R1
37768C:  MOV             R5, R0
37768E:  MOV             R0, R4; this
377690:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
377694:  CMP             R0, #0
377696:  BNE             loc_377794
377698:  MOV             R0, R4; this
37769A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
37769E:  CMP             R0, #1
3776A0:  BNE             loc_377794
3776A2:  VLDR            S0, [R5,#0x14]
3776A6:  ADD             R0, SP, #0x18+var_14; this
3776A8:  VLDR            S6, [R5,#0x20]
3776AC:  VLDR            S2, [R5,#0x18]
3776B0:  VLDR            S8, [R5,#0x24]
3776B4:  VSUB.F32        S0, S6, S0
3776B8:  VLDR            S4, [R5,#0x1C]
3776BC:  VLDR            S10, [R5,#0x28]
3776C0:  VSUB.F32        S2, S8, S2
3776C4:  VSUB.F32        S4, S10, S4
3776C8:  VSTR            S2, [SP,#0x18+var_10]
3776CC:  VSTR            S0, [SP,#0x18+var_14]
3776D0:  VSTR            S4, [SP,#0x18+var_C]
3776D4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3776D8:  LDR             R0, [R4,#0x14]
3776DA:  VLDR            S0, [R5,#0x14]
3776DE:  ADD.W           R1, R0, #0x30 ; '0'
3776E2:  CMP             R0, #0
3776E4:  VLDR            S4, [R5,#0x18]
3776E8:  MOV.W           R0, #0
3776EC:  VLDR            S12, [R5,#0x1C]
3776F0:  IT EQ
3776F2:  ADDEQ           R1, R4, #4
3776F4:  VLDR            S2, [R1]
3776F8:  VLDR            S6, [R1,#4]
3776FC:  VSUB.F32        S3, S2, S0
377700:  VLDR            S14, [R1,#8]
377704:  VSUB.F32        S1, S6, S4
377708:  VLDR            S6, [SP,#0x18+var_14]
37770C:  VLDR            S10, [SP,#0x18+var_10]
377710:  VSUB.F32        S12, S14, S12
377714:  VLDR            S8, [SP,#0x18+var_C]
377718:  VMUL.F32        S14, S1, S10
37771C:  VMUL.F32        S1, S3, S6
377720:  VMUL.F32        S12, S12, S8
377724:  VADD.F32        S14, S1, S14
377728:  VADD.F32        S12, S14, S12
37772C:  VCMPE.F32       S12, #0.0
377730:  VMRS            APSR_nzcv, FPSCR
377734:  BLE             loc_377790
377736:  VMUL.F32        S10, S12, S10
37773A:  VMUL.F32        S6, S6, S12
37773E:  VMUL.F32        S8, S12, S8
377742:  VADD.F32        S4, S4, S10
377746:  VSTR            S10, [SP,#0x18+var_10]
37774A:  VADD.F32        S0, S0, S6
37774E:  VSTR            S6, [SP,#0x18+var_14]
377752:  VSTR            S8, [SP,#0x18+var_C]
377756:  VLDR            S6, [R1,#4]
37775A:  LDR             R1, =(_ZN22CEventGunShotWhizzedBy17ms_fThresholdDistE_ptr - 0x377760)
37775C:  ADD             R1, PC; _ZN22CEventGunShotWhizzedBy17ms_fThresholdDistE_ptr
37775E:  VSUB.F32        S4, S6, S4
377762:  VSUB.F32        S0, S2, S0
377766:  LDR             R1, [R1]; CEventGunShotWhizzedBy::ms_fThresholdDist ...
377768:  VMUL.F32        S2, S4, S4
37776C:  VLDR            S4, =0.0
377770:  VMUL.F32        S0, S0, S0
377774:  VADD.F32        S0, S0, S2
377778:  VLDR            S2, [R1]
37777C:  VMUL.F32        S2, S2, S2
377780:  VADD.F32        S0, S0, S4
377784:  VCMPE.F32       S0, S2
377788:  VMRS            APSR_nzcv, FPSCR
37778C:  IT LT
37778E:  MOVLT           R0, #1
377790:  ADD             SP, SP, #0x10
377792:  POP             {R4,R5,R7,PC}
377794:  MOVS            R0, #0
377796:  ADD             SP, SP, #0x10
377798:  POP             {R4,R5,R7,PC}
