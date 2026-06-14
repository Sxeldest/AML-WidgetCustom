; =========================================================
; Game Engine Function: _ZN9CPathFind15UpdateStreamingEb
; Address            : 0x3195A4 - 0x319B96
; =========================================================

3195A4:  PUSH            {R4-R7,LR}
3195A6:  ADD             R7, SP, #0xC
3195A8:  PUSH.W          {R8-R11}
3195AC:  SUB             SP, SP, #4
3195AE:  VPUSH           {D8-D11}
3195B2:  SUB             SP, SP, #0x18
3195B4:  CMP             R1, #0
3195B6:  STR             R0, [SP,#0x58+var_54]
3195B8:  BNE             loc_3195E2
3195BA:  LDR.W           R0, =(byte_7AEE04 - 0x3195C2)
3195BE:  ADD             R0, PC; byte_7AEE04
3195C0:  LDRB            R0, [R0]
3195C2:  CBNZ            R0, loc_3195E2
3195C4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3195D0)
3195C8:  LDR.W           R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x3195D2)
3195CC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3195CE:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
3195D0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3195D2:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
3195D4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3195D6:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
3195D8:  EORS            R0, R1
3195DA:  CMP.W           R0, #0x200
3195DE:  BCC.W           loc_319B88
3195E2:  LDR.W           R0, =(ToBeStreamed_ptr - 0x3195F2)
3195E6:  VMOV.I32        Q8, #0
3195EA:  LDR.W           R1, =(ToBeStreamedForScript_ptr - 0x3195F4)
3195EE:  ADD             R0, PC; ToBeStreamed_ptr
3195F0:  ADD             R1, PC; ToBeStreamedForScript_ptr
3195F2:  LDR             R0, [R0]; ToBeStreamed
3195F4:  LDR             R1, [R1]; ToBeStreamedForScript
3195F6:  ADD.W           R2, R0, #0x30 ; '0'
3195FA:  VST1.8          {D16-D17}, [R2]
3195FE:  ADD.W           R2, R0, #0x20 ; ' '
319602:  VST1.8          {D16-D17}, [R2]
319606:  VST1.8          {D16-D17}, [R0]!
31960A:  VST1.8          {D16-D17}, [R0]
31960E:  ADD.W           R0, R1, #0x30 ; '0'
319612:  VST1.8          {D16-D17}, [R0]
319616:  ADD.W           R0, R1, #0x20 ; ' '
31961A:  VST1.8          {D16-D17}, [R0]
31961E:  MOV.W           R0, #0xFFFFFFFF; int
319622:  VST1.8          {D16-D17}, [R1]!
319626:  VST1.8          {D16-D17}, [R1]
31962A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31962E:  CMP             R0, #0
319630:  BEQ.W           loc_31973A
319634:  ADD             R0, SP, #0x58+var_4C; int
319636:  MOV.W           R1, #0xFFFFFFFF
31963A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
31963E:  VLDR            S0, =-350.0
319642:  MOVS            R1, #0
319644:  VLDR            S2, [SP,#0x58+var_4C]
319648:  MOVS            R0, #7
31964A:  VLDR            S4, [SP,#0x58+var_48]
31964E:  MOV.W           R9, #7
319652:  VLDR            S8, =350.0
319656:  VADD.F32        S6, S2, S0
31965A:  VADD.F32        S0, S4, S0
31965E:  VLDR            S10, =3000.0
319662:  VADD.F32        S2, S2, S8
319666:  VADD.F32        S8, S4, S8
31966A:  VADD.F32        S4, S6, S10
31966E:  VLDR            S6, =750.0
319672:  VADD.F32        S0, S0, S10
319676:  VADD.F32        S2, S2, S10
31967A:  VADD.F32        S8, S8, S10
31967E:  VDIV.F32        S4, S4, S6
319682:  VDIV.F32        S2, S2, S6
319686:  VDIV.F32        S8, S8, S6
31968A:  VDIV.F32        S0, S0, S6
31968E:  VCVT.S32.F32    S4, S4
319692:  VCVT.S32.F32    S2, S2
319696:  VCVT.S32.F32    S6, S8
31969A:  VCVT.S32.F32    S0, S0
31969E:  VMOV            R3, S4
3196A2:  VMOV            R4, S2
3196A6:  VMOV            R10, S6
3196AA:  VMOV            R2, S0
3196AE:  CMP.W           R10, #0
3196B2:  IT LE
3196B4:  MOVLE           R10, R1
3196B6:  CMP.W           R10, #7
3196BA:  IT GE
3196BC:  MOVGE           R10, R0
3196BE:  CMP             R2, #0
3196C0:  IT LE
3196C2:  MOVLE           R2, R1
3196C4:  CMP             R2, #7
3196C6:  IT LT
3196C8:  MOVLT           R9, R2
3196CA:  CMP             R4, #0
3196CC:  IT LE
3196CE:  MOVLE           R4, R1
3196D0:  CMP             R4, #7
3196D2:  IT GE
3196D4:  MOVGE           R4, R0
3196D6:  CMP             R3, #0
3196D8:  IT GT
3196DA:  MOVGT           R1, R3
3196DC:  CMP             R1, #7
3196DE:  IT LT
3196E0:  MOVLT           R0, R1
3196E2:  CMP             R0, R4
3196E4:  BGT             loc_31973A
3196E6:  LDR.W           R3, =(ToBeStreamed_ptr - 0x3196FA)
3196EA:  CMP             R9, R10
3196EC:  MOV             R6, R10
3196EE:  MVN.W           R2, R2
3196F2:  IT GT
3196F4:  MOVGT           R6, R9
3196F6:  ADD             R3, PC; ToBeStreamed_ptr
3196F8:  MOV             R5, #0xFFFFFFF8
3196FC:  CMN.W           R2, #8
319700:  IT LS
319702:  MOVLS           R2, R5
319704:  MVNS            R1, R1
319706:  CMN.W           R1, #8
31970A:  ADD             R2, R6
31970C:  IT GT
31970E:  MOVGT           R5, R1
319710:  LDR             R1, [R3]; ToBeStreamed
319712:  ADD.W           R8, R2, #2
319716:  MOV             R2, #0xFFFFFFFE
31971A:  ADD.W           R0, R1, R0,LSL#3
31971E:  SUBS            R6, R2, R5
319720:  ADD.W           R5, R0, R9
319724:  CMP             R9, R10
319726:  BGT             loc_319732
319728:  MOV             R0, R5
31972A:  MOV             R1, R8
31972C:  MOVS            R2, #1
31972E:  BLX             j___aeabi_memset8
319732:  ADDS            R6, #1
319734:  ADDS            R5, #8
319736:  CMP             R6, R4
319738:  BLT             loc_319724
31973A:  LDR.W           R0, =(byte_7AEE04 - 0x319742)
31973E:  ADD             R0, PC; byte_7AEE04
319740:  LDRB            R0, [R0]
319742:  CMP             R0, #1
319744:  BNE.W           loc_319852
319748:  LDR.W           R0, =(unk_7AEDF8 - 0x31975C)
31974C:  MOV.W           R8, #0
319750:  VLDR            S0, =-300.0
319754:  MOV.W           R10, #7
319758:  ADD             R0, PC; unk_7AEDF8
31975A:  VLDR            S8, =300.0
31975E:  VLDR            S10, =3000.0
319762:  VLDR            S2, [R0]
319766:  VLDR            S4, [R0,#4]
31976A:  MOVS            R0, #7
31976C:  VADD.F32        S6, S2, S0
319770:  VADD.F32        S2, S2, S8
319774:  VADD.F32        S8, S4, S8
319778:  VADD.F32        S0, S4, S0
31977C:  VADD.F32        S4, S6, S10
319780:  VLDR            S6, =750.0
319784:  VADD.F32        S2, S2, S10
319788:  VADD.F32        S8, S8, S10
31978C:  VADD.F32        S0, S0, S10
319790:  VDIV.F32        S4, S4, S6
319794:  VDIV.F32        S2, S2, S6
319798:  VDIV.F32        S8, S8, S6
31979C:  VDIV.F32        S0, S0, S6
3197A0:  VCVT.S32.F32    S4, S4
3197A4:  VCVT.S32.F32    S2, S2
3197A8:  VCVT.S32.F32    S6, S8
3197AC:  VCVT.S32.F32    S0, S0
3197B0:  VMOV            R2, S4
3197B4:  VMOV            R4, S2
3197B8:  VMOV            R11, S6
3197BC:  VMOV            R1, S0
3197C0:  CMP.W           R11, #0
3197C4:  IT LE
3197C6:  MOVLE           R11, R8
3197C8:  CMP.W           R11, #7
3197CC:  IT GE
3197CE:  MOVGE           R11, R0
3197D0:  CMP             R1, #0
3197D2:  IT LE
3197D4:  MOVLE           R1, R8
3197D6:  CMP             R1, #7
3197D8:  IT LT
3197DA:  MOVLT           R10, R1
3197DC:  CMP             R4, #0
3197DE:  IT LE
3197E0:  MOVLE           R4, R8
3197E2:  CMP             R4, #7
3197E4:  IT GE
3197E6:  MOVGE           R4, R0
3197E8:  CMP             R2, #0
3197EA:  IT LE
3197EC:  MOVLE           R2, R8
3197EE:  CMP             R2, #7
3197F0:  IT LT
3197F2:  MOVLT           R0, R2
3197F4:  CMP             R0, R4
3197F6:  BGT             loc_31984A
3197F8:  CMP             R10, R11
3197FA:  MOV             R6, R11
3197FC:  LDR.W           R3, =(ToBeStreamed_ptr - 0x319812)
319800:  IT GT
319802:  MOVGT           R6, R10
319804:  MVNS            R1, R1
319806:  MOV             R5, #0xFFFFFFF8
31980A:  CMN.W           R1, #8
31980E:  ADD             R3, PC; ToBeStreamed_ptr
319810:  IT LS
319812:  MOVLS           R1, R5
319814:  ADD             R1, R6
319816:  ADD.W           R9, R1, #2
31981A:  MVNS            R1, R2
31981C:  CMN.W           R1, #8
319820:  MOV             R2, #0xFFFFFFFE
319824:  IT GT
319826:  MOVGT           R5, R1
319828:  LDR             R1, [R3]; ToBeStreamed
31982A:  SUBS            R6, R2, R5
31982C:  ADD.W           R0, R1, R0,LSL#3
319830:  ADD.W           R5, R0, R10
319834:  CMP             R10, R11
319836:  BGT             loc_319842
319838:  MOV             R0, R5
31983A:  MOV             R1, R9
31983C:  MOVS            R2, #1
31983E:  BLX             j___aeabi_memset8
319842:  ADDS            R6, #1
319844:  ADDS            R5, #8
319846:  CMP             R6, R4
319848:  BLT             loc_319834
31984A:  LDR             R0, =(byte_7AEE04 - 0x319850)
31984C:  ADD             R0, PC; byte_7AEE04
31984E:  STRB.W          R8, [R0]
319852:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x319858)
319854:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
319856:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
319858:  LDR             R6, [R0]; CPools::ms_pVehiclePool
31985A:  LDR             R5, [R6,#8]
31985C:  CMP             R5, #0
31985E:  BEQ.W           loc_3199EE
319862:  LDR             R0, =(ToBeStreamed_ptr - 0x319870)
319864:  MOVW            R12, #0xA2C
319868:  VLDR            S16, =-300.0
31986C:  ADD             R0, PC; ToBeStreamed_ptr
31986E:  VLDR            S18, =300.0
319872:  VLDR            S20, =3000.0
319876:  VLDR            S22, =750.0
31987A:  LDR             R0, [R0]; ToBeStreamed
31987C:  STR             R0, [SP,#0x58+var_58]
31987E:  B               loc_3199C0
319880:  LDRB.W          R1, [R0,#0x4A8]
319884:  CMP             R1, #2
319886:  BNE.W           loc_3199EA
31988A:  LDR             R1, [R0,#0x14]
31988C:  MOVS            R3, #0
31988E:  MOV.W           R11, #7
319892:  ADD.W           R2, R1, #0x30 ; '0'
319896:  CMP             R1, #0
319898:  IT EQ
31989A:  ADDEQ           R2, R0, #4
31989C:  MOVS            R1, #7
31989E:  VLDR            S0, [R2]
3198A2:  VLDR            S2, [R2,#4]
3198A6:  MOVS            R2, #0
3198A8:  VADD.F32        S4, S0, S16
3198AC:  VADD.F32        S6, S2, S18
3198B0:  VADD.F32        S0, S0, S18
3198B4:  VADD.F32        S2, S2, S16
3198B8:  VADD.F32        S4, S4, S20
3198BC:  VADD.F32        S6, S6, S20
3198C0:  VADD.F32        S0, S0, S20
3198C4:  VADD.F32        S2, S2, S20
3198C8:  VDIV.F32        S4, S4, S22
3198CC:  VDIV.F32        S0, S0, S22
3198D0:  VDIV.F32        S6, S6, S22
3198D4:  VDIV.F32        S2, S2, S22
3198D8:  VCVT.S32.F32    S4, S4
3198DC:  VCVT.S32.F32    S0, S0
3198E0:  VCVT.S32.F32    S6, S6
3198E4:  VCVT.S32.F32    S2, S2
3198E8:  VMOV            R10, S0
3198EC:  VMOV            R8, S6
3198F0:  VMOV            R0, S2
3198F4:  CMP.W           R8, #0
3198F8:  IT LE
3198FA:  MOVLE           R8, R3
3198FC:  CMP.W           R8, #7
319900:  IT GE
319902:  MOVGE           R8, R1
319904:  CMP             R0, #0
319906:  IT GT
319908:  MOVGT           R2, R0
31990A:  CMP             R2, #7
31990C:  IT LT
31990E:  MOVLT           R11, R2
319910:  CMP.W           R10, #0
319914:  IT LE
319916:  MOVLE           R10, R3
319918:  CMP.W           R10, #7
31991C:  IT GE
31991E:  MOVGE           R10, R1
319920:  VMOV            R1, S4
319924:  CMP             R1, #0
319926:  IT LE
319928:  MOVLE           R1, R3
31992A:  MOVS            R3, #7
31992C:  CMP             R1, #7
31992E:  IT LT
319930:  MOVLT           R3, R1
319932:  CMP             R3, R10
319934:  BGT             loc_3199EA
319936:  CMP             R11, R8
319938:  MOV             R3, R8
31993A:  IT GT
31993C:  MOVGT           R3, R11
31993E:  MVNS            R2, R2
319940:  CMN.W           R2, #8
319944:  MOV             R4, #0xFFFFFFF8
319948:  IT LS
31994A:  MOVLS           R2, R4
31994C:  CMP             R0, #0
31994E:  ADD             R2, R3
319950:  MVN.W           R1, R1
319954:  ADD.W           R2, R2, #2
319958:  STR             R2, [SP,#0x58+var_50]
31995A:  MOV.W           R2, #0xFFFFFFFF
31995E:  IT GT
319960:  MVNGT           R2, R0
319962:  CMN.W           R2, #8
319966:  IT LE
319968:  MOVLE           R2, R4
31996A:  CMN.W           R1, #8
31996E:  RSB.W           R0, R2, #0
319972:  IT LE
319974:  MOVLE           R1, R4
319976:  LDR             R2, [SP,#0x58+var_58]
319978:  SUB.W           R0, R0, R1,LSL#3
31997C:  ADD             R0, R2
31997E:  SUB.W           R4, R0, #9
319982:  MOV             R0, #0xFFFFFFFE
319986:  SUB.W           R9, R0, R1
31998A:  CMP             R11, R8
31998C:  BGT             loc_31999C
31998E:  LDR             R1, [SP,#0x58+var_50]
319990:  MOV             R0, R4
319992:  MOVS            R2, #1
319994:  BLX             j___aeabi_memset8
319998:  MOVW            R12, #0xA2C
31999C:  ADD.W           R9, R9, #1
3199A0:  ADDS            R4, #8
3199A2:  CMP             R9, R10
3199A4:  BLT             loc_31998A
3199A6:  B               loc_3199EA
3199A8:  DCFS -350.0
3199AC:  DCFS 350.0
3199B0:  DCFS 3000.0
3199B4:  DCFS 750.0
3199B8:  DCFS -300.0
3199BC:  DCFS 300.0
3199C0:  LDR             R0, [R6,#4]
3199C2:  SUBS            R5, #1
3199C4:  LDRSB           R0, [R0,R5]
3199C6:  CMP             R0, #0
3199C8:  BLT             loc_3199EA
3199CA:  LDR             R0, [R6]
3199CC:  MLA.W           R0, R5, R12, R0
3199D0:  CBZ             R0, loc_3199EA
3199D2:  LDR.W           R1, [R0,#0x5A4]
3199D6:  CMP             R1, #8
3199D8:  BHI.W           loc_319880
3199DC:  MOVS            R2, #1
3199DE:  LSL.W           R1, R2, R1
3199E2:  TST.W           R1, #0x178
3199E6:  BEQ.W           loc_319880
3199EA:  CMP             R5, #0
3199EC:  BNE             loc_3199C0
3199EE:  LDR             R1, [SP,#0x58+var_54]
3199F0:  MOVW            R0, #0x3CAC
3199F4:  LDRB            R0, [R1,R0]
3199F6:  CMP             R0, #0
3199F8:  BEQ.W           loc_319B1C
3199FC:  LDR             R3, [SP,#0x58+var_54]
3199FE:  MOVW            R1, #0x3CB0
319A02:  MOVW            R2, #0x3CBC
319A06:  MOVW            R0, #0x3CB8
319A0A:  ADD             R1, R3
319A0C:  VLDR            S0, =3000.0
319A10:  ADD             R0, R3
319A12:  VLDR            S10, =750.0
319A16:  VLDR            S2, [R1]
319A1A:  MOVW            R1, #0x3CB4
319A1E:  ADD             R1, R3
319A20:  VLDR            S8, [R0]
319A24:  VADD.F32        S2, S2, S0
319A28:  MOVS            R0, #7
319A2A:  VLDR            S4, [R1]
319A2E:  ADDS            R1, R3, R2
319A30:  MOV.W           R10, #7
319A34:  VLDR            S6, [R1]
319A38:  VADD.F32        S4, S4, S0
319A3C:  MOVS            R1, #0
319A3E:  VADD.F32        S6, S6, S0
319A42:  VADD.F32        S0, S8, S0
319A46:  VDIV.F32        S2, S2, S10
319A4A:  VDIV.F32        S4, S4, S10
319A4E:  VDIV.F32        S6, S6, S10
319A52:  VDIV.F32        S0, S0, S10
319A56:  VCVT.S32.F32    S2, S2
319A5A:  VCVT.S32.F32    S4, S4
319A5E:  VCVT.S32.F32    S6, S6
319A62:  VCVT.S32.F32    S0, S0
319A66:  VMOV            R3, S2
319A6A:  VMOV            R11, S4
319A6E:  VMOV            R9, S6
319A72:  VMOV            R2, S0
319A76:  CMP.W           R9, #0
319A7A:  IT LE
319A7C:  MOVLE           R9, R1
319A7E:  CMP.W           R9, #7
319A82:  IT GE
319A84:  MOVGE           R9, R0
319A86:  CMP             R2, #0
319A88:  IT LE
319A8A:  MOVLE           R2, R1
319A8C:  CMP             R2, #7
319A8E:  IT LT
319A90:  MOVLT           R10, R2
319A92:  CMP.W           R11, #0
319A96:  IT LE
319A98:  MOVLE           R11, R1
319A9A:  CMP.W           R11, #7
319A9E:  IT GE
319AA0:  MOVGE           R11, R0
319AA2:  CMP             R3, #0
319AA4:  IT GT
319AA6:  MOVGT           R1, R3
319AA8:  CMP             R1, #7
319AAA:  IT LT
319AAC:  MOVLT           R0, R1
319AAE:  CMP             R0, R11
319AB0:  BGT             loc_319B1C
319AB2:  LDR             R3, =(ToBeStreamed_ptr - 0x319AD6)
319AB4:  CMP             R10, R9
319AB6:  LDR             R6, =(ToBeStreamedForScript_ptr - 0x319AD8)
319AB8:  MOV             R5, R9
319ABA:  IT GT
319ABC:  MOVGT           R5, R10
319ABE:  MVNS            R2, R2
319AC0:  MOV             R4, #0xFFFFFFF8
319AC4:  CMN.W           R2, #8
319AC8:  IT LS
319ACA:  MOVLS           R2, R4
319ACC:  MVNS            R1, R1
319ACE:  CMN.W           R1, #8
319AD2:  ADD             R3, PC; ToBeStreamed_ptr
319AD4:  ADD             R6, PC; ToBeStreamedForScript_ptr
319AD6:  ADD             R2, R5
319AD8:  IT GT
319ADA:  MOVGT           R4, R1
319ADC:  MOV             R1, #0xFFFFFFFE
319AE0:  ADD.W           R8, R2, #2
319AE4:  LDR             R2, [R6]; ToBeStreamedForScript
319AE6:  SUBS            R5, R1, R4
319AE8:  LDR             R1, [R3]; ToBeStreamed
319AEA:  ADD.W           R2, R2, R0,LSL#3
319AEE:  ADD.W           R0, R1, R0,LSL#3
319AF2:  ADD.W           R6, R2, R10
319AF6:  ADD.W           R4, R0, R10
319AFA:  CMP             R10, R9
319AFC:  BGT             loc_319B12
319AFE:  MOV             R0, R4
319B00:  MOV             R1, R8
319B02:  MOVS            R2, #1
319B04:  BLX             j___aeabi_memset8
319B08:  MOV             R0, R6
319B0A:  MOV             R1, R8
319B0C:  MOVS            R2, #1
319B0E:  BLX             j___aeabi_memset8
319B12:  ADDS            R5, #1
319B14:  ADDS            R6, #8
319B16:  ADDS            R4, #8
319B18:  CMP             R5, R11
319B1A:  BLT             loc_319AFA
319B1C:  LDR             R0, =(ToBeStreamed_ptr - 0x319B28)
319B1E:  MOVW            R10, #(elf_hash_bucket+0x62AB)
319B22:  LDR             R1, =(ToBeStreamedForScript_ptr - 0x319B2C)
319B24:  ADD             R0, PC; ToBeStreamed_ptr
319B26:  LDR             R2, [SP,#0x58+var_54]
319B28:  ADD             R1, PC; ToBeStreamedForScript_ptr
319B2A:  LDR             R6, [R0]; ToBeStreamed
319B2C:  ADDW            R8, R2, #0x804
319B30:  LDR.W           R11, [R1]; ToBeStreamedForScript
319B34:  MOVS            R2, #0; int
319B36:  MOVS            R5, #0
319B38:  MOV             R9, R8
319B3A:  MOV             R4, R10
319B3C:  STR             R2, [SP,#0x58+var_50]
319B3E:  LDRB            R1, [R6,R5]; int
319B40:  LDR.W           R0, [R9]
319B44:  CBZ             R1, loc_319B5C
319B46:  CBNZ            R0, loc_319B66
319B48:  LDRB.W          R0, [R11,R5]
319B4C:  CMP             R0, #0
319B4E:  MOV             R0, R4; this
319B50:  ITE EQ
319B52:  MOVEQ           R1, #8
319B54:  MOVNE           R1, #4; int
319B56:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
319B5A:  B               loc_319B66
319B5C:  CMP             R0, #0
319B5E:  ITT NE
319B60:  MOVNE           R0, R4; this
319B62:  BLXNE           j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
319B66:  ADDS            R5, #1
319B68:  ADD.W           R9, R9, #0x20 ; ' '
319B6C:  ADDS            R4, #8
319B6E:  CMP             R5, #8
319B70:  BNE             loc_319B3E
319B72:  LDR             R2, [SP,#0x58+var_50]
319B74:  ADD.W           R11, R11, #8
319B78:  ADDS            R6, #8
319B7A:  ADD.W           R8, R8, #4
319B7E:  ADDS            R2, #1
319B80:  ADD.W           R10, R10, #1
319B84:  CMP             R2, #8
319B86:  BNE             loc_319B36
319B88:  ADD             SP, SP, #0x18
319B8A:  VPOP            {D8-D11}
319B8E:  ADD             SP, SP, #4
319B90:  POP.W           {R8-R11}
319B94:  POP             {R4-R7,PC}
