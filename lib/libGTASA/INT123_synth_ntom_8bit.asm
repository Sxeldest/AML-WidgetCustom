; =========================================================
; Game Engine Function: INT123_synth_ntom_8bit
; Address            : 0x237768 - 0x237D3C
; =========================================================

237768:  PUSH            {R4-R7,LR}
23776A:  ADD             R7, SP, #0xC
23776C:  PUSH.W          {R8-R11}
237770:  SUB             SP, SP, #0x34
237772:  MOV             R9, R2
237774:  MOVW            R12, #0xB2A8
237778:  MOVW            LR, #0xB2A0
23777C:  MOVW            R5, #0x4848
237780:  LDR.W           R8, [R9,R12]
237784:  MOV             R2, R0
237786:  LDR.W           R6, [R9,LR]
23778A:  LDR.W           R5, [R9,R5]
23778E:  CBZ             R5, loc_2377B8
237790:  ADD.W           R5, R9, R1,LSL#8
237794:  MOVW            R4, #0x4850
237798:  ADD             R5, R4
23779A:  MOVS            R4, #0
23779C:  ADDS            R0, R5, R4
23779E:  VLDR            D16, [R0]
2377A2:  ADDS            R0, R2, R4
2377A4:  ADDS            R4, #8
2377A6:  VLDR            D17, [R0]
2377AA:  CMP.W           R4, #0x100
2377AE:  VMUL.F64        D16, D17, D16
2377B2:  VSTR            D16, [R0]
2377B6:  BNE             loc_23779C
2377B8:  ADD             R8, R6
2377BA:  MOVW            R0, #0x4838
2377BE:  CBZ             R1, loc_2377DA
2377C0:  LDR.W           R4, [R9,R0]
2377C4:  MOVW            R0, #0x918C
2377C8:  LDR.W           R10, [R9,R0]
2377CC:  MOVW            R5, #0x4828
2377D0:  ADD.W           R11, R9, R5
2377D4:  ADD.W           R8, R8, #1
2377D8:  B               loc_237800
2377DA:  LDR.W           R4, [R9,R0]
2377DE:  MOVW            R6, #0x9188
2377E2:  LDR.W           R10, [R9,R6]
2377E6:  ADDS            R4, #0xF
2377E8:  MOVW            R6, #0x918C
2377EC:  AND.W           R4, R4, #0xF
2377F0:  STR.W           R10, [R9,R6]
2377F4:  STR.W           R4, [R9,R0]
2377F8:  MOVW            R0, #0x4820
2377FC:  ADD.W           R11, R9, R0
237800:  ADD.W           R6, R9, R12
237804:  LSLS            R0, R4, #0x1F
237806:  ADD.W           R5, R9, LR
23780A:  STRD.W          R3, R1, [SP,#0x50+var_34]
23780E:  STRD.W          R5, R6, [SP,#0x50+var_48]
237812:  BNE             loc_23782C
237814:  LDRD.W          R0, R5, [R11]
237818:  ADD.W           R1, R5, R4,LSL#3
23781C:  ADDS            R1, #8
23781E:  ADD.W           R0, R0, R4,LSL#3
237822:  BLX             j_INT123_dct64
237826:  MOV             R2, R4
237828:  ADDS            R2, #1
23782A:  B               loc_237844
23782C:  ADDS            R3, R4, #1
23782E:  LDRD.W          R5, R0, [R11]
237832:  AND.W           R3, R3, #0xF
237836:  ADD.W           R1, R5, R4,LSL#3
23783A:  ADD.W           R0, R0, R3,LSL#3
23783E:  BLX             j_INT123_dct64
237842:  MOV             R2, R4
237844:  MOVW            R1, #0x4844
237848:  MOVW            R0, #0x9190
23784C:  LDR.W           R3, [R9,R1]
237850:  MOVW            R1, #0x4A7C
237854:  LDR.W           R4, [R9,R0]
237858:  ADD             R0, R9
23785A:  STR             R0, [SP,#0x50+var_20]
23785C:  SUB.W           R0, R3, R2,LSL#3
237860:  STR             R3, [SP,#0x50+var_28]
237862:  ADD.W           R3, R0, #0x80
237866:  ADD.W           R0, R5, #0x780
23786A:  STR             R0, [SP,#0x50+var_40]
23786C:  RSB.W           R0, R2, #0x210
237870:  ADD.W           LR, R4, R10
237874:  STR             R0, [SP,#0x50+var_4C]
237876:  RSB.W           R0, R2, #0x1F0
23787A:  ADD             R1, R9
23787C:  VLDR            D16, =32767.0
237880:  VLDR            D17, =-32768.0
237884:  MOV.W           R12, #0x10
237888:  STR             R0, [SP,#0x50+var_2C]
23788A:  MOVS            R0, #0
23788C:  MOV             R10, R5
23788E:  STR.W           R9, [SP,#0x50+var_38]
237892:  STR             R2, [SP,#0x50+var_3C]
237894:  STR             R5, [SP,#0x50+var_24]
237896:  CMP.W           LR, #0x8000
23789A:  BLT.W           loc_2379FC
23789E:  VLDM            R10, {D18-D21}
2378A2:  MOVS            R2, #0
2378A4:  MVN.W           R4, LR
2378A8:  MOVT            R2, #0xFFFF
2378AC:  VLDM            R3, {D22-D25}
2378B0:  CMP             R4, R2
2378B2:  MOVW            R5, #0x7FFF
2378B6:  VMUL.F64        D19, D23, D19
2378BA:  VMUL.F64        D18, D22, D18
2378BE:  VMUL.F64        D20, D24, D20
2378C2:  VSUB.F64        D18, D18, D19
2378C6:  VMUL.F64        D21, D25, D21
2378CA:  VADD.F64        D18, D18, D20
2378CE:  VLDR            D19, [R10,#0x20]
2378D2:  VLDR            D22, [R3,#0x20]
2378D6:  VSUB.F64        D18, D18, D21
2378DA:  VMUL.F64        D19, D22, D19
2378DE:  VLDR            D20, [R10,#0x28]
2378E2:  VLDR            D23, [R3,#0x28]
2378E6:  VADD.F64        D18, D18, D19
2378EA:  VMUL.F64        D20, D23, D20
2378EE:  VLDR            D21, [R10,#0x30]
2378F2:  VLDR            D22, [R3,#0x30]
2378F6:  VSUB.F64        D18, D18, D20
2378FA:  VMUL.F64        D21, D22, D21
2378FE:  VLDR            D19, [R10,#0x38]
237902:  VLDR            D23, [R3,#0x38]
237906:  VADD.F64        D18, D18, D21
23790A:  VMUL.F64        D19, D23, D19
23790E:  VLDR            D20, [R10,#0x40]
237912:  VLDR            D22, [R3,#0x40]
237916:  VSUB.F64        D18, D18, D19
23791A:  VMUL.F64        D20, D22, D20
23791E:  VLDR            D21, [R10,#0x48]
237922:  VLDR            D23, [R3,#0x48]
237926:  VADD.F64        D18, D18, D20
23792A:  VMUL.F64        D21, D23, D21
23792E:  VLDR            D19, [R10,#0x50]
237932:  VLDR            D22, [R3,#0x50]
237936:  VSUB.F64        D18, D18, D21
23793A:  VMUL.F64        D19, D22, D19
23793E:  VLDR            D20, [R10,#0x58]
237942:  VLDR            D23, [R3,#0x58]
237946:  VADD.F64        D18, D18, D19
23794A:  VMUL.F64        D20, D23, D20
23794E:  VLDR            D21, [R10,#0x60]
237952:  VLDR            D22, [R3,#0x60]
237956:  VSUB.F64        D18, D18, D20
23795A:  VMUL.F64        D21, D22, D21
23795E:  VLDR            D19, [R10,#0x68]
237962:  VLDR            D23, [R3,#0x68]
237966:  VADD.F64        D18, D18, D21
23796A:  VMUL.F64        D19, D23, D19
23796E:  VLDR            D20, [R10,#0x70]
237972:  VLDR            D22, [R3,#0x70]
237976:  VSUB.F64        D18, D18, D19
23797A:  VMUL.F64        D20, D22, D20
23797E:  VLDR            D21, [R10,#0x78]
237982:  VLDR            D23, [R3,#0x78]
237986:  VADD.F64        D18, D18, D20
23798A:  VMUL.F64        D19, D23, D21
23798E:  VSUB.F64        D18, D18, D19
237992:  VCVT.S32.F64    S0, D18
237996:  IT LE
237998:  MOVLE           R4, R2
23799A:  ADD.W           R2, LR, #0x8000
23799E:  ADD             R4, R2
2379A0:  BIC.W           R9, R4, R5
2379A4:  LSRS            R4, R4, #0xF
2379A6:  ADD.W           R4, R8, R4,LSL#1
2379AA:  ADDS            R5, R4, #2
2379AC:  VMOV            R6, S0
2379B0:  VCMPE.F64       D18, D16
2379B4:  VMRS            APSR_nzcv, FPSCR
2379B8:  BLE             loc_2379C2
2379BA:  ADDS            R0, #1
2379BC:  MOVW            R4, #0x7FFF
2379C0:  B               loc_2379D4
2379C2:  VCMPE.F64       D18, D17
2379C6:  VMRS            APSR_nzcv, FPSCR
2379CA:  ITTE LT
2379CC:  ADDLT           R0, #1
2379CE:  MOVLT.W         R4, #0x8000
2379D2:  MOVGE           R4, R6
2379D4:  LDR.W           R11, [R1]
2379D8:  SXTH            R4, R4
2379DA:  ASRS            R4, R4, #3
2379DC:  SUB.W           R2, R2, #0x8000
2379E0:  CMP.W           R2, #0x10000
2379E4:  LDRB.W          R4, [R11,R4]
2379E8:  STRB.W          R4, [R8],#2
2379EC:  BGE             loc_2379B0
2379EE:  LDR             R2, [SP,#0x50+var_20]
2379F0:  MOV             R8, R5
2379F2:  LDR             R4, [R2]
2379F4:  SUB.W           R2, LR, #0x8000
2379F8:  SUB.W           LR, R2, R9
2379FC:  ADD             LR, R4
2379FE:  ADD.W           R3, R3, #0x100
237A02:  SUBS.W          R12, R12, #1
237A06:  ADD.W           R10, R10, #0x80
237A0A:  BNE.W           loc_237896
237A0E:  LDRD.W          R2, R5, [SP,#0x50+var_2C]
237A12:  CMP.W           LR, #0x8000
237A16:  ADD.W           R9, R5, R2,LSL#3
237A1A:  LDR             R2, [SP,#0x50+var_24]
237A1C:  ADD.W           R3, R2, #0x800
237A20:  BLT.W           loc_237B40
237A24:  ADD.W           R6, R2, #0x810
237A28:  VLDR            D18, [R9,#0x110]
237A2C:  VLDR            D22, [R3]
237A30:  VLDR            D23, [R6]
237A34:  LDR             R6, [SP,#0x50+var_4C]
237A36:  VMUL.F64        D18, D18, D23
237A3A:  ADD.W           R6, R5, R6,LSL#3
237A3E:  VLDR            D24, [R6]
237A42:  ADD.W           R6, R2, #0x820
237A46:  VLDR            D19, [R9,#0x120]
237A4A:  VMUL.F64        D22, D24, D22
237A4E:  VLDR            D23, [R6]
237A52:  ADD.W           R6, R2, #0x830
237A56:  VADD.F64        D18, D22, D18
237A5A:  VMUL.F64        D19, D19, D23
237A5E:  VLDR            D24, [R6]
237A62:  ADD.W           R6, R2, #0x840
237A66:  VLDR            D20, [R9,#0x130]
237A6A:  VADD.F64        D18, D18, D19
237A6E:  VMUL.F64        D20, D20, D24
237A72:  VLDR            D22, [R6]
237A76:  ADD.W           R6, R2, #0x850
237A7A:  VLDR            D21, [R9,#0x140]
237A7E:  VADD.F64        D18, D18, D20
237A82:  VMUL.F64        D21, D21, D22
237A86:  VLDR            D23, [R6]
237A8A:  ADD.W           R6, R2, #0x860
237A8E:  VLDR            D19, [R9,#0x150]
237A92:  VADD.F64        D18, D18, D21
237A96:  VMUL.F64        D19, D19, D23
237A9A:  VLDR            D22, [R6]
237A9E:  ADD.W           R6, R2, #0x870
237AA2:  VLDR            D21, [R9,#0x160]
237AA6:  MOVS            R2, #0
237AA8:  VADD.F64        D18, D18, D19
237AAC:  MOVT            R2, #0xFFFF
237AB0:  VMUL.F64        D21, D21, D22
237AB4:  VLDR            D23, [R6]
237AB8:  MVN.W           R6, LR
237ABC:  VLDR            D20, [R9,#0x170]
237AC0:  CMP             R6, R2
237AC2:  VADD.F64        D18, D18, D21
237AC6:  VMUL.F64        D19, D20, D23
237ACA:  VADD.F64        D18, D18, D19
237ACE:  VCVT.S32.F64    S0, D18
237AD2:  IT LE
237AD4:  MOVLE           R6, R2
237AD6:  ADD             R6, LR
237AD8:  ADD.W           R4, R6, #0x8000
237ADC:  MOVW            R6, #0x7FFF
237AE0:  BIC.W           R12, R4, R6
237AE4:  ADD.W           R6, LR, #0x8000
237AE8:  LSRS            R4, R4, #0xF
237AEA:  ADD.W           R4, R8, R4,LSL#1
237AEE:  ADD.W           R10, R4, #2
237AF2:  VMOV            R5, S0
237AF6:  VCMPE.F64       D18, D16
237AFA:  VMRS            APSR_nzcv, FPSCR
237AFE:  BLE             loc_237B08
237B00:  ADDS            R0, #1
237B02:  MOVW            R4, #0x7FFF
237B06:  B               loc_237B1A
237B08:  VCMPE.F64       D18, D17
237B0C:  VMRS            APSR_nzcv, FPSCR
237B10:  ITTE LT
237B12:  ADDLT           R0, #1
237B14:  MOVLT.W         R4, #0x8000
237B18:  MOVGE           R4, R5
237B1A:  LDR             R2, [R1]
237B1C:  SXTH            R4, R4
237B1E:  ASRS            R4, R4, #3
237B20:  SUB.W           R6, R6, #0x8000
237B24:  CMP.W           R6, #0x10000
237B28:  LDRB            R2, [R2,R4]
237B2A:  STRB.W          R2, [R8],#2
237B2E:  BGE             loc_237AF6
237B30:  SUB.W           R2, LR, #0x8000
237B34:  SUB.W           LR, R2, R12
237B38:  LDRD.W          R6, R2, [SP,#0x50+var_40]
237B3C:  MOV             R12, R10
237B3E:  B               loc_237B46
237B40:  MOV             R12, R8
237B42:  LDRD.W          R6, R2, [SP,#0x50+var_40]
237B46:  ADD.W           R2, R9, R2,LSL#4
237B4A:  MOV.W           R10, #0xF
237B4E:  MOV             R11, R6
237B50:  LDR             R6, [SP,#0x50+var_20]
237B52:  LDR             R4, [R6]
237B54:  ADD.W           R5, R4, LR
237B58:  CMP.W           R5, #0x8000
237B5C:  BGE             loc_237B78
237B5E:  MOV             LR, R5
237B60:  B               loc_237CFA
237B62:  ALIGN 8
237B68:  DCFD 32767.0
237B70:  DCFD -32768.0
237B78:  STR             R4, [SP,#0x50+var_28]
237B7A:  MVNS            R4, R5
237B7C:  VLDR            D18, [R2,#-8]
237B80:  SUB.W           LR, LR, #0x8000
237B84:  VLDR            D23, [R11]
237B88:  VLDR            D19, [R2,#-0x10]
237B8C:  VLDR            D22, [R3,#-0x78]
237B90:  VNMUL.F64       D18, D18, D23
237B94:  VMUL.F64        D19, D19, D22
237B98:  VLDR            D20, [R2,#-0x18]
237B9C:  VLDR            D24, [R3,#-0x70]
237BA0:  VSUB.F64        D18, D18, D19
237BA4:  VMUL.F64        D20, D20, D24
237BA8:  VLDR            D21, [R2,#-0x20]
237BAC:  VLDR            D22, [R3,#-0x68]
237BB0:  VSUB.F64        D18, D18, D20
237BB4:  VMUL.F64        D21, D21, D22
237BB8:  VLDR            D19, [R3,#-0x60]
237BBC:  VLDR            D23, [R2,#-0x28]
237BC0:  VSUB.F64        D18, D18, D21
237BC4:  VMUL.F64        D19, D23, D19
237BC8:  VLDR            D20, [R3,#-0x58]
237BCC:  VLDR            D22, [R2,#-0x30]
237BD0:  VSUB.F64        D18, D18, D19
237BD4:  VMUL.F64        D20, D22, D20
237BD8:  VLDR            D21, [R3,#-0x50]
237BDC:  VLDR            D23, [R2,#-0x38]
237BE0:  VSUB.F64        D18, D18, D20
237BE4:  VMUL.F64        D21, D23, D21
237BE8:  VLDR            D19, [R3,#-0x48]
237BEC:  VLDR            D22, [R2,#-0x40]
237BF0:  VSUB.F64        D18, D18, D21
237BF4:  VMUL.F64        D19, D22, D19
237BF8:  VLDR            D20, [R3,#-0x40]
237BFC:  VLDR            D23, [R2,#-0x48]
237C00:  VSUB.F64        D18, D18, D19
237C04:  VMUL.F64        D20, D23, D20
237C08:  VLDR            D21, [R3,#-0x38]
237C0C:  VLDR            D22, [R2,#-0x50]
237C10:  VSUB.F64        D18, D18, D20
237C14:  VMUL.F64        D21, D22, D21
237C18:  VLDR            D19, [R3,#-0x30]
237C1C:  VLDR            D23, [R2,#-0x58]
237C20:  VSUB.F64        D18, D18, D21
237C24:  VMUL.F64        D19, D23, D19
237C28:  VLDR            D20, [R3,#-0x28]
237C2C:  VLDR            D22, [R2,#-0x60]
237C30:  VSUB.F64        D18, D18, D19
237C34:  VMUL.F64        D20, D22, D20
237C38:  VLDR            D25, [R3,#-0x20]
237C3C:  VLDR            D26, [R2,#-0x68]
237C40:  VSUB.F64        D18, D18, D20
237C44:  VMUL.F64        D22, D26, D25
237C48:  VLDR            D24, [R3,#-0x18]
237C4C:  VLDR            D19, [R2,#-0x70]
237C50:  VSUB.F64        D18, D18, D22
237C54:  VMUL.F64        D19, D19, D24
237C58:  VLDR            D23, [R3,#-0x10]
237C5C:  VLDR            D20, [R2,#-0x78]
237C60:  VSUB.F64        D18, D18, D19
237C64:  VMUL.F64        D20, D20, D23
237C68:  VLDR            D21, [R3,#-8]
237C6C:  MOVS            R3, #0
237C6E:  VLDR            D22, [R2,#-0x80]
237C72:  MOVT            R3, #0xFFFF
237C76:  VSUB.F64        D18, D18, D20
237C7A:  CMP             R4, R3
237C7C:  VMUL.F64        D19, D22, D21
237C80:  VSUB.F64        D18, D18, D19
237C84:  VCVT.S32.F64    S0, D18
237C88:  IT LE
237C8A:  MOVLE           R4, R3
237C8C:  ADD.W           R3, R5, #0x8000
237C90:  STR.W           R12, [SP,#0x50+var_24]
237C94:  ADDS            R5, R3, R4
237C96:  MOV             R4, #0x3FFFE
237C9E:  AND.W           R4, R4, R5,LSR#14
237CA2:  BFC.W           R5, #0, #0xF
237CA6:  STR             R4, [SP,#0x50+var_2C]
237CA8:  VMOV            R9, S0
237CAC:  VCMPE.F64       D18, D16
237CB0:  VMRS            APSR_nzcv, FPSCR
237CB4:  BLE             loc_237CBE
237CB6:  ADDS            R0, #1
237CB8:  MOVW            R8, #0x7FFF
237CBC:  B               loc_237CD0
237CBE:  VCMPE.F64       D18, D17
237CC2:  VMRS            APSR_nzcv, FPSCR
237CC6:  ITTE LT
237CC8:  ADDLT           R0, #1
237CCA:  MOVLT.W         R8, #0x8000
237CCE:  MOVGE           R8, R9
237CD0:  LDR             R4, [R1]
237CD2:  SXTH.W          R6, R8
237CD6:  ASRS            R6, R6, #3
237CD8:  SUB.W           R3, R3, #0x8000
237CDC:  CMP.W           R3, #0x10000
237CE0:  LDRB            R4, [R4,R6]
237CE2:  STRB.W          R4, [R12],#2
237CE6:  BGE             loc_237CAC
237CE8:  LDR             R3, [SP,#0x50+var_28]
237CEA:  LDR             R6, [SP,#0x50+var_2C]
237CEC:  ADD             R3, LR
237CEE:  SUB.W           LR, R3, R5
237CF2:  LDR             R3, [SP,#0x50+var_24]
237CF4:  ADD             R3, R6
237CF6:  ADD.W           R12, R3, #2
237CFA:  SUB.W           R6, R11, #0x80
237CFE:  SUB.W           R2, R2, #0x100
237D02:  SUBS.W          R10, R10, #1
237D06:  MOV             R3, R11
237D08:  BNE.W           loc_237B4E
237D0C:  LDR             R3, [SP,#0x50+var_30]
237D0E:  MOVW            R2, #0x9188
237D12:  LDR             R1, [SP,#0x50+var_38]
237D14:  ADD.W           R1, R1, R3,LSL#2
237D18:  STR.W           LR, [R1,R2]
237D1C:  LDR             R1, [SP,#0x50+var_34]
237D1E:  CBZ             R1, loc_237D34
237D20:  LDR             R1, [SP,#0x50+var_48]
237D22:  CMP             R3, #0
237D24:  LDR             R1, [R1]
237D26:  IT NE
237D28:  SUBNE.W         R12, R12, #1
237D2C:  LDR             R2, [SP,#0x50+var_44]
237D2E:  SUB.W           R1, R12, R1
237D32:  STR             R1, [R2]
237D34:  ADD             SP, SP, #0x34 ; '4'
237D36:  POP.W           {R8-R11}
237D3A:  POP             {R4-R7,PC}
