; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware21RescaleChannelVolumesEv
; Address            : 0x3926EC - 0x392A58
; =========================================================

3926EC:  PUSH            {R4-R7,LR}
3926EE:  ADD             R7, SP, #0xC
3926F0:  PUSH.W          {R8-R11}
3926F4:  SUB             SP, SP, #4
3926F6:  VPUSH           {D8-D15}
3926FA:  SUB             SP, SP, #8
3926FC:  MOV             R10, R0
3926FE:  LDRH.W          R0, [R10,#0x4A]
392702:  CBZ             R0, loc_392780
392704:  VLDR            S16, =0.0
392708:  MOVW            R8, #0
39270C:  ADD.W           R11, R10, #6
392710:  ADD.W           R5, R10, #0x88
392714:  VMOV            D9, D8
392718:  ADDW            R6, R10, #0xBCC
39271C:  MOVS            R0, #0
39271E:  MOVS            R4, #0
392720:  MOVT            R8, #0xC2C8
392724:  MOV.W           R9, #0
392728:  STR             R0, [SP,#0x68+var_64]
39272A:  LDR.W           R0, [R6,R4,LSL#2]
39272E:  CBZ             R0, loc_39276E
392730:  LDR             R1, [R0]
392732:  LDR             R1, [R1,#0xC]
392734:  BLX             R1
392736:  CBZ             R0, loc_39276E
392738:  VLDR            S0, [R5]
39273C:  LDRSH.W         R0, [R11,R4,LSL#1]
392740:  VCMPE.F32       S0, S18
392744:  VMRS            APSR_nzcv, FPSCR
392748:  ITTTT GT
39274A:  UXTHGT          R1, R0
39274C:  UBFXGT.W        R1, R1, #7, #1
392750:  STRGT           R1, [SP,#0x68+var_64]
392752:  VMOVGT          D9, D0
392756:  LSLS            R1, R0, #0x1F
392758:  BEQ             loc_392772
39275A:  VCMPE.F32       S0, S16
39275E:  VMRS            APSR_nzcv, FPSCR
392762:  ITT GT
392764:  UBFXGT.W        R9, R0, #7, #1
392768:  VMOVGT          D8, D0
39276C:  B               loc_392772
39276E:  STR.W           R8, [R5]
392772:  LDRH.W          R0, [R10,#0x4A]
392776:  ADDS            R4, #1
392778:  ADDS            R5, #4
39277A:  CMP             R4, R0
39277C:  BLT             loc_39272A
39277E:  B               loc_392792
392780:  VLDR            S18, =0.0
392784:  MOVS            R1, #0
392786:  MOVS            R0, #0
392788:  MOV.W           R9, #0
39278C:  STR             R1, [SP,#0x68+var_64]
39278E:  VMOV            D8, D9
392792:  VLDR            S0, [R10,#0x20C]
392796:  VCMPE.F32       S18, S0
39279A:  VMRS            APSR_nzcv, FPSCR
39279E:  BGE             loc_3927CE
3927A0:  LDRB.W          R1, [R10,#3]
3927A4:  CBZ             R1, loc_3927C2
3927A6:  VMOV.F32        S2, #-0.5
3927AA:  VADD.F32        S0, S0, S2
3927AE:  VCMPE.F32       S0, S18
3927B2:  VMRS            APSR_nzcv, FPSCR
3927B6:  ITTT GT
3927B8:  MOVGT           R1, #1
3927BA:  STRGT           R1, [SP,#0x68+var_64]
3927BC:  VMOVGT          D9, D0
3927C0:  B               loc_3927CE
3927C2:  VLDR            S2, =-1.2
3927C6:  VADD.F32        S0, S0, S2
3927CA:  VMAX.F32        D9, D0, D9
3927CE:  VLDR            S0, [R10,#0x208]
3927D2:  VCMPE.F32       S16, S0
3927D6:  VMRS            APSR_nzcv, FPSCR
3927DA:  BGE             loc_39280A
3927DC:  LDRB.W          R1, [R10,#2]
3927E0:  CBZ             R1, loc_3927FE
3927E2:  VMOV.F32        S2, #-0.5
3927E6:  VADD.F32        S0, S0, S2
3927EA:  VCMPE.F32       S0, S16
3927EE:  VMRS            APSR_nzcv, FPSCR
3927F2:  ITT GT
3927F4:  MOVGT.W         R9, #1
3927F8:  VMOVGT          D8, D0
3927FC:  B               loc_39280A
3927FE:  VLDR            S2, =-1.2
392802:  VADD.F32        S0, S0, S2
392806:  VMAX.F32        D8, D0, D8
39280A:  VLDR            S20, =0.0
39280E:  CMP             R0, #0
392810:  BEQ.W           loc_392916
392814:  VLDR            S26, =0.0
392818:  VMOV.F32        S28, #20.0
39281C:  MOVW            R8, #0
392820:  ADD.W           R6, R10, #6
392824:  VMOV.F32        S24, S26
392828:  MOVS            R5, #0
39282A:  VMOV.F32        S22, S26
39282E:  MOVT            R8, #0x4120
392832:  MOV             R4, R10
392834:  LDRSH.W         R0, [R6,R5,LSL#1]
392838:  TST.W           R0, #4
39283C:  BNE             loc_392854
39283E:  LSLS            R0, R0, #0x1F
392840:  VMOV.F32        S0, S16
392844:  IT EQ
392846:  VMOVEQ.F32      S0, S18
39284A:  VLDR            S2, [R4,#0x88]
39284E:  VSUB.F32        S0, S2, S0
392852:  B               loc_39285C
392854:  VLDR            S0, [R4,#0x88]
392858:  VMIN.F32        D0, D0, D13
39285C:  VSTR            S0, [R4,#0x88]
392860:  MOV             R0, R8; x
392862:  VDIV.F32        S0, S0, S28
392866:  VMOV            R1, S0; y
39286A:  BLX             powf
39286E:  STR.W           R0, [R4,#0x100]
392872:  VMOV            S0, R0
392876:  LDRSH.W         R1, [R6,R5,LSL#1]
39287A:  TST.W           R1, #2
39287E:  BNE             loc_3928FA
392880:  LSLS            R0, R1, #0x19
392882:  BPL             loc_392904
392884:  LDR.W           R0, [R4,#0xBCC]
392888:  CBZ             R0, loc_392904
39288A:  LDR             R1, [R0]
39288C:  LDR             R1, [R1,#0x10]
39288E:  BLX             R1
392890:  CMP.W           R0, #0xFFFFFFFF
392894:  BLE             loc_392900
392896:  LDR.W           R0, [R4,#0xBCC]
39289A:  LDR             R1, [R0]
39289C:  LDR             R1, [R1,#0x14]
39289E:  BLX             R1
3928A0:  LDR.W           R1, [R4,#0xBCC]
3928A4:  SXTH.W          R11, R0
3928A8:  VLDR            S30, [R4,#0x100]
3928AC:  LDR             R2, [R1]
3928AE:  MOV             R0, R1
3928B0:  LDR             R2, [R2,#0x10]
3928B2:  BLX             R2
3928B4:  SUB.W           R0, R11, R0
3928B8:  VMOV            S2, R11
3928BC:  VMOV            S0, R0
3928C0:  VCVT.F32.S32    S0, S0
3928C4:  VCVT.F32.S32    S2, S2
3928C8:  VMUL.F32        S0, S30, S0
3928CC:  VDIV.F32        S0, S0, S2
3928D0:  VMOV.F32        S2, S26
3928D4:  VCMPE.F32       S0, #0.0
3928D8:  VMRS            APSR_nzcv, FPSCR
3928DC:  BLT             loc_3928F4
3928DE:  VLDR            S4, [R4,#0x100]
3928E2:  VMOV.F32        S2, S0
3928E6:  VCMPE.F32       S0, S4
3928EA:  VMRS            APSR_nzcv, FPSCR
3928EE:  IT GT
3928F0:  VMOVGT.F32      S2, S4
3928F4:  VADD.F32        S22, S22, S2
3928F8:  B               loc_392908
3928FA:  VADD.F32        S24, S24, S0
3928FE:  B               loc_392908
392900:  VLDR            S0, [R4,#0x100]
392904:  VADD.F32        S22, S22, S0
392908:  LDRH.W          R0, [R10,#0x4A]
39290C:  ADDS            R5, #1
39290E:  ADDS            R4, #4
392910:  CMP             R5, R0
392912:  BLT             loc_392834
392914:  B               loc_392920
392916:  MOVS            R0, #0
392918:  VMOV.F32        S22, S20
39291C:  VMOV.F32        S24, S20
392920:  VSTR            S16, [R10,#0x208]
392924:  VCMP.F32        S22, #0.0
392928:  VSTR            S18, [R10,#0x20C]
39292C:  STRB.W          R9, [R10,#2]
392930:  VMRS            APSR_nzcv, FPSCR
392934:  LDR             R1, [SP,#0x68+var_64]; float
392936:  STRB.W          R1, [R10,#3]
39293A:  BNE             loc_392940
39293C:  CBNZ            R0, loc_392960
39293E:  B               loc_392A4A
392940:  VLDR            S0, =-0.8
392944:  VMOV.F32        S2, #3.0
392948:  VMUL.F32        S0, S24, S0
39294C:  VADD.F32        S0, S0, S2
392950:  VLDR            S2, =16383.0
392954:  VMUL.F32        S0, S0, S2
392958:  VDIV.F32        S20, S0, S22
39295C:  CMP             R0, #0
39295E:  BEQ             loc_392A4A
392960:  VLDR            S16, =16383.0
392964:  ADDW            R4, R10, #0xBCC
392968:  ADD.W           R5, R10, #6
39296C:  ADD.W           R8, R10, #0x1F0
392970:  VMIN.F32        D9, D10, D8
392974:  ADD.W           R0, R10, #0x200
392978:  VMOV.F32        S20, #20.0
39297C:  MOV.W           R9, #0
392980:  MOV             R11, R10
392982:  STR             R0, [SP,#0x68+var_64]
392984:  ADD.W           R0, R10, #0x1F8
392988:  STR             R0, [SP,#0x68+var_68]
39298A:  LDRH.W          R0, [R5,R9,LSL#1]
39298E:  VMOV.F32        S0, S16
392992:  TST.W           R0, #2
392996:  IT EQ
392998:  VMOVEQ.F32      S0, S18
39299C:  VLDR            S2, [R11,#0x100]
3929A0:  VMUL.F32        S0, S2, S0
3929A4:  VSTR            S0, [R11,#0x100]
3929A8:  LDRH.W          R0, [R5,R9,LSL#1]
3929AC:  ANDS.W          R0, R0, #0x10
3929B0:  LDR             R0, [SP,#0x68+var_68]
3929B2:  IT EQ
3929B4:  ADDEQ.W         R0, R10, #0x1FC
3929B8:  VLDR            S2, [R0]
3929BC:  MOV             R0, R8
3929BE:  IT EQ
3929C0:  ADDEQ.W         R0, R10, #0x1F4
3929C4:  VLDR            S4, [R0]
3929C8:  VMUL.F32        S2, S4, S2
3929CC:  VMUL.F32        S0, S0, S2
3929D0:  VSTR            S0, [R11,#0x100]
3929D4:  LDRH.W          R0, [R5,R9,LSL#1]
3929D8:  TST.W           R0, #0x20
3929DC:  LDR             R0, [SP,#0x68+var_64]
3929DE:  IT EQ
3929E0:  ADDEQ.W         R0, R10, #0x204
3929E4:  VLDR            S2, [R0]
3929E8:  VMUL.F32        S0, S0, S2
3929EC:  VSTR            S0, [R11,#0x100]
3929F0:  VCMP.F32        S0, #0.0
3929F4:  LDR.W           R6, [R4,R9,LSL#2]
3929F8:  VMRS            APSR_nzcv, FPSCR
3929FC:  BNE             loc_392A0A
3929FE:  CBZ             R6, loc_392A3A
392A00:  MOVS            R1, #0
392A02:  MOV             R0, R6
392A04:  MOVT            R1, #0xC2C8
392A08:  B               loc_392A26
392A0A:  CBZ             R6, loc_392A3A
392A0C:  VDIV.F32        S0, S0, S16
392A10:  VMOV            R0, S0; this
392A14:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
392A18:  VMOV            S0, R0
392A1C:  MOV             R0, R6; this
392A1E:  VMUL.F32        S0, S0, S20
392A22:  VMOV            R1, S0; float
392A26:  BLX             j__ZN15CAEAudioChannel9SetVolumeEf; CAEAudioChannel::SetVolume(float)
392A2A:  LDR.W           R0, [R4,R9,LSL#2]
392A2E:  CBZ             R0, loc_392A3A
392A30:  LDR             R2, [R0]
392A32:  LDR.W           R1, [R11,#0x178]
392A36:  LDR             R2, [R2,#0x24]
392A38:  BLX             R2
392A3A:  LDRH.W          R0, [R10,#0x4A]
392A3E:  ADD.W           R9, R9, #1
392A42:  ADD.W           R11, R11, #4
392A46:  CMP             R9, R0
392A48:  BLT             loc_39298A
392A4A:  ADD             SP, SP, #8
392A4C:  VPOP            {D8-D15}
392A50:  ADD             SP, SP, #4
392A52:  POP.W           {R8-R11}
392A56:  POP             {R4-R7,PC}
