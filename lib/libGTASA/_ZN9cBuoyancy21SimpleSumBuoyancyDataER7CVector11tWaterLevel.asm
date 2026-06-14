; =========================================================
; Game Engine Function: _ZN9cBuoyancy21SimpleSumBuoyancyDataER7CVector11tWaterLevel
; Address            : 0x5706C0 - 0x570828
; =========================================================

5706C0:  PUSH            {R4,R5,R7,LR}
5706C2:  ADD             R7, SP, #8
5706C4:  MOV             R4, R0
5706C6:  LDR             R0, =(byte_A065E4 - 0x5706CE)
5706C8:  MOV             R5, R1
5706CA:  ADD             R0, PC; byte_A065E4
5706CC:  LDRB            R0, [R0]
5706CE:  DMB.W           ISH
5706D2:  TST.W           R0, #1
5706D6:  BNE             loc_5706EA
5706D8:  LDR             R0, =(byte_A065E4 - 0x5706DE)
5706DA:  ADD             R0, PC; byte_A065E4 ; __guard *
5706DC:  BLX             j___cxa_guard_acquire
5706E0:  CBZ             R0, loc_5706EA
5706E2:  LDR             R0, =(byte_A065E4 - 0x5706E8)
5706E4:  ADD             R0, PC; byte_A065E4 ; __guard *
5706E6:  BLX             j___cxa_guard_release
5706EA:  LDR             R0, =(fVolMultiplier_ptr - 0x5706FC)
5706EC:  VMOV.F32        S2, #1.0
5706F0:  VLDR            S4, [R4,#0x84]
5706F4:  VLDR            S0, [R5,#8]
5706F8:  ADD             R0, PC; fVolMultiplier_ptr
5706FA:  VSUB.F32        S0, S0, S4
5706FE:  LDR             R0, [R0]; fVolMultiplier
570700:  VLDR            S6, [R0]
570704:  LDR             R0, =(unk_A065D4 - 0x57070E)
570706:  VSUB.F32        S8, S2, S6
57070A:  ADD             R0, PC; unk_A065D4
57070C:  VABS.F32        S0, S0
570710:  VSUB.F32        S0, S0, S8
570714:  VCMPE.F32       S0, #0.0
570718:  VSTR            S0, [R0]
57071C:  VMRS            APSR_nzcv, FPSCR
570720:  BGE             loc_57072C
570722:  VLDR            S0, =0.0
570726:  VMOV            R0, S0
57072A:  POP             {R4,R5,R7,PC}
57072C:  LDRB.W          R0, [R4,#0xBA]
570730:  CBZ             R0, loc_570742
570732:  VMUL.F32        S0, S0, S6
570736:  LDR             R0, =(unk_A065D4 - 0x57073C)
570738:  ADD             R0, PC; unk_A065D4
57073A:  VMUL.F32        S0, S0, S0
57073E:  VSTR            S0, [R0]
570742:  VLDR            S8, [R4,#0xBC]
570746:  VMOV.F32        S10, #0.5
57074A:  VLDR            S6, [R4,#0xB0]
57074E:  VADD.F32        S8, S0, S8
570752:  LDR             R0, =(unk_A065D8 - 0x570758)
570754:  ADD             R0, PC; unk_A065D8
570756:  VSTR            S8, [R4,#0xBC]
57075A:  VLDR            S8, [R5,#8]
57075E:  VADD.F32        S4, S8, S4
570762:  VMUL.F32        S4, S4, S10
570766:  VMUL.F32        S4, S6, S4
57076A:  VSTR            S4, [R0,#8]
57076E:  VLDR            S6, [R4,#0xA8]
570772:  VLDR            S8, [R5]
570776:  VMUL.F32        S6, S8, S6
57077A:  VSTR            S6, [R0]
57077E:  VLDR            S8, [R4,#0xAC]
570782:  VLDR            S10, [R5,#4]
570786:  VMUL.F32        S8, S10, S8
57078A:  VSTR            S8, [R0,#4]
57078E:  LDRB.W          R0, [R4,#0xB8]
570792:  CBZ             R0, loc_5707B0
570794:  VNEG.F32        S8, S8
570798:  LDR             R0, =(unk_A065D8 - 0x5707A6)
57079A:  VNEG.F32        S6, S6
57079E:  VNEG.F32        S4, S4
5707A2:  ADD             R0, PC; unk_A065D8
5707A4:  VSTR            S6, [R0]
5707A8:  VSTR            S8, [R0,#4]
5707AC:  VSTR            S4, [R0,#8]
5707B0:  VLDR            S10, [R4,#0x88]
5707B4:  LDR             R0, =(unk_A065CC - 0x5707C0)
5707B6:  VDIV.F32        S12, S2, S10
5707BA:  LDR             R1, =(unk_A065D0 - 0x5707C2)
5707BC:  ADD             R0, PC; unk_A065CC
5707BE:  ADD             R1, PC; unk_A065D0
5707C0:  VSUB.F32        S14, S2, S12
5707C4:  VSTR            S12, [R0]
5707C8:  VADD.F32        S2, S10, S2
5707CC:  MOVS            R0, #1
5707CE:  VMUL.F32        S6, S12, S6
5707D2:  VMUL.F32        S4, S12, S4
5707D6:  VMUL.F32        S8, S12, S8
5707DA:  VSTR            S14, [R1]
5707DE:  VLDR            S12, [R4,#0xC0]
5707E2:  VLDR            S3, [R4,#0xC8]
5707E6:  VMUL.F32        S6, S6, S0
5707EA:  VLDR            S1, [R4,#0xC4]
5707EE:  VMUL.F32        S12, S14, S12
5707F2:  VSTR            S2, [R4,#0x88]
5707F6:  VMUL.F32        S3, S14, S3
5707FA:  STRB.W          R0, [R4,#0x98]
5707FE:  VMOV            R0, S0
570802:  VMUL.F32        S4, S4, S0
570806:  VMUL.F32        S8, S8, S0
57080A:  VMUL.F32        S14, S14, S1
57080E:  VADD.F32        S6, S12, S6
570812:  VADD.F32        S4, S3, S4
570816:  VADD.F32        S8, S14, S8
57081A:  VSTR            S6, [R4,#0xC0]
57081E:  VSTR            S8, [R4,#0xC4]
570822:  VSTR            S4, [R4,#0xC8]
570826:  POP             {R4,R5,R7,PC}
