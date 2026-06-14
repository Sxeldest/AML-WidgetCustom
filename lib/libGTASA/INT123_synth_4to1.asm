; =========================================================
; Game Engine Function: INT123_synth_4to1
; Address            : 0x235790 - 0x235C4E
; =========================================================

235790:  PUSH            {R4-R7,LR}
235792:  ADD             R7, SP, #0xC
235794:  PUSH.W          {R8-R11}
235798:  SUB             SP, SP, #0xC
23579A:  MOV             R5, R2
23579C:  MOV             R2, R0
23579E:  STR             R3, [SP,#0x28+var_20]
2357A0:  MOVW            R12, #0xB2A8
2357A4:  MOVW            R0, #0xB2A0
2357A8:  LDR.W           LR, [R5,R12]
2357AC:  LDR             R6, [R5,R0]
2357AE:  MOVW            R0, #0x4848
2357B2:  LDR             R0, [R5,R0]
2357B4:  CBZ             R0, loc_2357DE
2357B6:  ADD.W           R0, R5, R1,LSL#8
2357BA:  MOVW            R4, #0x4850
2357BE:  ADD             R4, R0
2357C0:  MOVS            R0, #0
2357C2:  ADDS            R3, R4, R0
2357C4:  VLDR            D16, [R3]
2357C8:  ADDS            R3, R2, R0
2357CA:  ADDS            R0, #8
2357CC:  VLDR            D17, [R3]
2357D0:  CMP.W           R0, #0x100
2357D4:  VMUL.F64        D16, D17, D16
2357D8:  VSTR            D16, [R3]
2357DC:  BNE             loc_2357C2
2357DE:  ADD.W           R4, R6, LR
2357E2:  MOVW            R0, #0x4838
2357E6:  CBZ             R1, loc_2357F2
2357E8:  LDR.W           R10, [R5,R0]
2357EC:  ADDS            R4, #2
2357EE:  MOVS            R1, #1
2357F0:  B               loc_235800
2357F2:  LDR             R1, [R5,R0]
2357F4:  ADDS            R1, #0xF
2357F6:  AND.W           R10, R1, #0xF
2357FA:  STR.W           R10, [R5,R0]
2357FE:  MOVS            R1, #0
235800:  ADD.W           R0, R5, R12
235804:  STR             R0, [SP,#0x28+var_28]
235806:  ADD.W           R0, R5, R1,LSL#3
23580A:  MOVW            R1, #0x4820
23580E:  ADD             R1, R0
235810:  MOVS.W          R3, R10,LSL#31
235814:  BNE             loc_235834
235816:  MOVW            R3, #0x4824
23581A:  LDR             R1, [R1]
23581C:  LDR.W           R8, [R0,R3]
235820:  ADD.W           R0, R1, R10,LSL#3
235824:  ADD.W           R1, R8, R10,LSL#3
235828:  ADDS            R1, #8
23582A:  BLX             j_INT123_dct64
23582E:  ADD.W           R10, R10, #1
235832:  B               loc_235852
235834:  ADD.W           R3, R10, #1
235838:  LDR.W           R8, [R1]
23583C:  MOVW            R1, #0x4824
235840:  AND.W           R3, R3, #0xF
235844:  LDR             R0, [R0,R1]
235846:  ADD.W           R1, R8, R10,LSL#3
23584A:  ADD.W           R0, R0, R3,LSL#3
23584E:  BLX             j_INT123_dct64
235852:  MOVW            R0, #0x4844
235856:  VLDR            D16, =32767.0
23585A:  LDR.W           LR, [R5,R0]
23585E:  RSB.W           R0, R10, #0x190
235862:  VLDR            D17, =-32768.0
235866:  ADD.W           R2, LR, R0,LSL#3
23586A:  SUB.W           R0, LR, R10,LSL#3
23586E:  ADD.W           R5, R0, #0x80
235872:  RSB.W           R0, R10, #0x210
235876:  STR             R0, [SP,#0x28+var_24]
235878:  MOVS            R3, #0
23587A:  MOVW            R1, #0x7FFF
23587E:  MOV.W           R11, #0x8000
235882:  MOVS            R0, #0
235884:  MOV             R6, R8
235886:  VLDM            R6, {D18-D21}
23588A:  MOV.W           R9, R3,LSL#1
23588E:  VLDM            R5, {D22-D25}
235892:  VMUL.F64        D19, D23, D19
235896:  VMUL.F64        D18, D22, D18
23589A:  VMUL.F64        D20, D24, D20
23589E:  VSUB.F64        D18, D18, D19
2358A2:  VMUL.F64        D21, D25, D21
2358A6:  VADD.F64        D18, D18, D20
2358AA:  VLDR            D19, [R6,#0x20]
2358AE:  VLDR            D22, [R5,#0x20]
2358B2:  VSUB.F64        D18, D18, D21
2358B6:  VMUL.F64        D19, D22, D19
2358BA:  VLDR            D20, [R6,#0x28]
2358BE:  VLDR            D23, [R5,#0x28]
2358C2:  VADD.F64        D18, D18, D19
2358C6:  VMUL.F64        D20, D23, D20
2358CA:  VLDR            D21, [R6,#0x30]
2358CE:  VLDR            D22, [R5,#0x30]
2358D2:  VSUB.F64        D18, D18, D20
2358D6:  VMUL.F64        D21, D22, D21
2358DA:  VLDR            D19, [R6,#0x38]
2358DE:  VLDR            D23, [R5,#0x38]
2358E2:  VADD.F64        D18, D18, D21
2358E6:  VMUL.F64        D19, D23, D19
2358EA:  VLDR            D20, [R6,#0x40]
2358EE:  VLDR            D22, [R5,#0x40]
2358F2:  VSUB.F64        D18, D18, D19
2358F6:  VMUL.F64        D20, D22, D20
2358FA:  VLDR            D21, [R6,#0x48]
2358FE:  VLDR            D23, [R5,#0x48]
235902:  VADD.F64        D18, D18, D20
235906:  VMUL.F64        D21, D23, D21
23590A:  VLDR            D19, [R6,#0x50]
23590E:  VLDR            D22, [R5,#0x50]
235912:  VSUB.F64        D18, D18, D21
235916:  VMUL.F64        D19, D22, D19
23591A:  VLDR            D20, [R6,#0x58]
23591E:  VLDR            D23, [R5,#0x58]
235922:  VADD.F64        D18, D18, D19
235926:  VMUL.F64        D20, D23, D20
23592A:  VLDR            D21, [R6,#0x60]
23592E:  VLDR            D22, [R5,#0x60]
235932:  VSUB.F64        D18, D18, D20
235936:  VMUL.F64        D21, D22, D21
23593A:  VLDR            D19, [R6,#0x68]
23593E:  VLDR            D23, [R5,#0x68]
235942:  VADD.F64        D18, D18, D21
235946:  VMUL.F64        D19, D23, D19
23594A:  VLDR            D20, [R6,#0x70]
23594E:  VLDR            D22, [R5,#0x70]
235952:  VSUB.F64        D18, D18, D19
235956:  VMUL.F64        D20, D22, D20
23595A:  VLDR            D21, [R6,#0x78]
23595E:  VLDR            D23, [R5,#0x78]
235962:  VADD.F64        D18, D18, D20
235966:  VMUL.F64        D19, D23, D21
23596A:  VSUB.F64        D18, D18, D19
23596E:  VCMPE.F64       D18, D16
235972:  VMRS            APSR_nzcv, FPSCR
235976:  BLE             loc_235980
235978:  STRH.W          R1, [R4,R9,LSL#1]
23597C:  ADDS            R0, #1
23597E:  B               loc_23599E
235980:  VCMPE.F64       D18, D17
235984:  VMRS            APSR_nzcv, FPSCR
235988:  BGE             loc_235992
23598A:  STRH.W          R11, [R4,R9,LSL#1]
23598E:  ADDS            R0, #1
235990:  B               loc_23599E
235992:  VCVT.S32.F64    S0, D18
235996:  VMOV            R12, S0
23599A:  STRH.W          R12, [R4,R9,LSL#1]
23599E:  ADDS            R3, #1
2359A0:  ADD.W           R6, R6, #0x200
2359A4:  ADD.W           R5, R5, #0x400
2359A8:  CMP             R3, #4
2359AA:  BNE.W           loc_235886
2359AE:  LDR             R1, [SP,#0x28+var_24]
2359B0:  ADD.W           R3, R2, #0x410
2359B4:  VLDR            D20, [R3]
2359B8:  ADD.W           R3, R8, #0x830
2359BC:  ADD.W           R1, LR, R1,LSL#3
2359C0:  VLDR            D18, [R1]
2359C4:  ADD.W           R1, R8, #0x810
2359C8:  VLDR            D19, [R1]
2359CC:  ADD.W           R1, R8, #0x800
2359D0:  VLDR            D21, [R1]
2359D4:  ADD.W           R1, R2, #0x420
2359D8:  VMUL.F64        D19, D20, D19
2359DC:  VMUL.F64        D18, D18, D21
2359E0:  VLDR            D20, [R3]
2359E4:  ADD.W           R3, R8, #0x820
2359E8:  VLDR            D22, [R1]
2359EC:  ADD.W           R1, R2, #0x430
2359F0:  VLDR            D21, [R3]
2359F4:  ADD.W           R3, R8, #0x850
2359F8:  VADD.F64        D18, D18, D19
2359FC:  VMUL.F64        D21, D22, D21
235A00:  VLDR            D23, [R1]
235A04:  ADD.W           R1, R2, #0x440
235A08:  VADD.F64        D18, D18, D21
235A0C:  VMUL.F64        D19, D23, D20
235A10:  VLDR            D20, [R3]
235A14:  ADD.W           R3, R8, #0x840
235A18:  VLDR            D22, [R1]
235A1C:  ADD.W           R1, R2, #0x450
235A20:  VLDR            D21, [R3]
235A24:  ADD.W           R3, R8, #0x870
235A28:  VADD.F64        D18, D18, D19
235A2C:  VMUL.F64        D21, D22, D21
235A30:  VLDR            D23, [R1]
235A34:  ADD.W           R1, R2, #0x460
235A38:  VADD.F64        D18, D18, D21
235A3C:  VMUL.F64        D19, D23, D20
235A40:  VLDR            D20, [R3]
235A44:  ADD.W           R3, R8, #0x860
235A48:  VLDR            D22, [R1]
235A4C:  ADD.W           R1, R2, #0x470
235A50:  VLDR            D21, [R3]
235A54:  ADD.W           R2, R8, #0x600
235A58:  VADD.F64        D18, D18, D19
235A5C:  VMUL.F64        D21, D22, D21
235A60:  VLDR            D23, [R1]
235A64:  VADD.F64        D18, D18, D21
235A68:  VMUL.F64        D19, D23, D20
235A6C:  VADD.F64        D18, D18, D19
235A70:  VCMPE.F64       D18, D16
235A74:  VMRS            APSR_nzcv, FPSCR
235A78:  BLE             loc_235A80
235A7A:  MOVW            R1, #0x7FFF
235A7E:  B               loc_235A8E
235A80:  VCMPE.F64       D18, D17
235A84:  VMRS            APSR_nzcv, FPSCR
235A88:  BGE             loc_235A94
235A8A:  MOV.W           R1, #0x8000
235A8E:  STRH            R1, [R4,#0x10]
235A90:  ADDS            R0, #1
235A92:  B               loc_235A9E
235A94:  VCVT.S32.F64    S0, D18
235A98:  VMOV            R1, S0
235A9C:  STRH            R1, [R4,#0x10]
235A9E:  ADD.W           R1, LR, R10,LSL#3
235AA2:  ADD.W           R3, R4, #0x14
235AA6:  MOVS            R6, #0
235AA8:  MOVW            LR, #0x7FFF
235AAC:  MOV.W           R12, #0x8000
235AB0:  ADDS            R4, R1, R6
235AB2:  VLDM            R2, {D18-D21}
235AB6:  ADD.W           R5, R4, #0xC70
235ABA:  VLDR            D22, [R5]
235ABE:  ADDW            R5, R4, #0xC78
235AC2:  VLDR            D23, [R5]
235AC6:  ADDW            R5, R4, #0xC68
235ACA:  VMUL.F64        D19, D22, D19
235ACE:  VNMUL.F64       D18, D23, D18
235AD2:  VLDR            D22, [R5]
235AD6:  ADD.W           R5, R4, #0xC60
235ADA:  VSUB.F64        D18, D18, D19
235ADE:  VMUL.F64        D20, D22, D20
235AE2:  VLDR            D23, [R5]
235AE6:  ADDW            R5, R4, #0xC58
235AEA:  VSUB.F64        D18, D18, D20
235AEE:  VMUL.F64        D19, D23, D21
235AF2:  VLDR            D22, [R5]
235AF6:  ADD.W           R5, R4, #0xC50
235AFA:  VLDR            D21, [R2,#0x20]
235AFE:  VSUB.F64        D18, D18, D19
235B02:  VMUL.F64        D21, D22, D21
235B06:  VLDR            D23, [R5]
235B0A:  ADDW            R5, R4, #0xC48
235B0E:  VLDR            D20, [R2,#0x28]
235B12:  VSUB.F64        D18, D18, D21
235B16:  VMUL.F64        D19, D23, D20
235B1A:  VLDR            D22, [R5]
235B1E:  ADD.W           R5, R4, #0xC40
235B22:  VLDR            D21, [R2,#0x30]
235B26:  VSUB.F64        D18, D18, D19
235B2A:  VMUL.F64        D21, D22, D21
235B2E:  VLDR            D23, [R5]
235B32:  ADDW            R5, R4, #0xC38
235B36:  VLDR            D20, [R2,#0x38]
235B3A:  VSUB.F64        D18, D18, D21
235B3E:  VMUL.F64        D19, D23, D20
235B42:  VLDR            D22, [R5]
235B46:  ADD.W           R5, R4, #0xC30
235B4A:  VLDR            D21, [R2,#0x40]
235B4E:  VSUB.F64        D18, D18, D19
235B52:  VMUL.F64        D21, D22, D21
235B56:  VLDR            D23, [R5]
235B5A:  ADDW            R5, R4, #0xC28
235B5E:  VLDR            D20, [R2,#0x48]
235B62:  VSUB.F64        D18, D18, D21
235B66:  VMUL.F64        D19, D23, D20
235B6A:  VLDR            D22, [R5]
235B6E:  ADD.W           R5, R4, #0xC20
235B72:  VLDR            D21, [R2,#0x50]
235B76:  VSUB.F64        D18, D18, D19
235B7A:  VMUL.F64        D21, D22, D21
235B7E:  VLDR            D23, [R5]
235B82:  ADDW            R5, R4, #0xC18
235B86:  VLDR            D20, [R2,#0x58]
235B8A:  VSUB.F64        D18, D18, D21
235B8E:  VMUL.F64        D19, D23, D20
235B92:  VLDR            D22, [R5]
235B96:  ADD.W           R5, R4, #0xC10
235B9A:  VLDR            D21, [R2,#0x60]
235B9E:  VSUB.F64        D18, D18, D19
235BA2:  VMUL.F64        D21, D22, D21
235BA6:  VLDR            D23, [R5]
235BAA:  ADDW            R5, R4, #0xC08
235BAE:  VLDR            D20, [R2,#0x68]
235BB2:  ADD.W           R4, R4, #0xC00
235BB6:  VSUB.F64        D18, D18, D21
235BBA:  VMUL.F64        D19, D23, D20
235BBE:  VLDR            D21, [R2,#0x70]
235BC2:  VLDR            D22, [R5]
235BC6:  VSUB.F64        D18, D18, D19
235BCA:  VMUL.F64        D21, D22, D21
235BCE:  VLDR            D20, [R2,#0x78]
235BD2:  VLDR            D23, [R4]
235BD6:  VSUB.F64        D18, D18, D21
235BDA:  VMUL.F64        D19, D23, D20
235BDE:  VSUB.F64        D18, D18, D19
235BE2:  VCMPE.F64       D18, D16
235BE6:  VMRS            APSR_nzcv, FPSCR
235BEA:  BLE             loc_235BF4
235BEC:  STRH.W          LR, [R3]
235BF0:  ADDS            R0, #1
235BF2:  B               loc_235C22
235BF4:  VCMPE.F64       D18, D17
235BF8:  VMRS            APSR_nzcv, FPSCR
235BFC:  BGE             loc_235C18
235BFE:  STRH.W          R12, [R3]
235C02:  ADDS            R0, #1
235C04:  B               loc_235C22
235C06:  ALIGN 4
235C08:  DCFD 32767.0
235C10:  DCFD -32768.0
235C18:  VCVT.S32.F64    S0, D18
235C1C:  VMOV            R4, S0
235C20:  STRH            R4, [R3]
235C22:  SUB.W           R6, R6, #0x400
235C26:  SUB.W           R2, R2, #0x200
235C2A:  ADDS            R3, #4
235C2C:  CMN.W           R6, #0xC00
235C30:  BNE.W           loc_235AB0
235C34:  LDR             R1, [SP,#0x28+var_20]
235C36:  CMP             R1, #0
235C38:  ITTTT NE
235C3A:  LDRNE           R1, [SP,#0x28+var_28]
235C3C:  MOVNE           R2, R1
235C3E:  LDRNE           R1, [R2]
235C40:  ADDNE           R1, #0x20 ; ' '
235C42:  IT NE
235C44:  STRNE           R1, [R2]
235C46:  ADD             SP, SP, #0xC
235C48:  POP.W           {R8-R11}
235C4C:  POP             {R4-R7,PC}
