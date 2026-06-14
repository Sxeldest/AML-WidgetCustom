; =========================================================
; Game Engine Function: INT123_synth_ntom_s32
; Address            : 0x23A768 - 0x23AD4E
; =========================================================

23A768:  PUSH            {R4-R7,LR}
23A76A:  ADD             R7, SP, #0xC
23A76C:  PUSH.W          {R8-R11}
23A770:  SUB             SP, SP, #0x2C
23A772:  MOV             R9, R2
23A774:  MOVW            R12, #0xB2A8
23A778:  MOVW            LR, #0xB2A0
23A77C:  MOVW            R5, #0x4848
23A780:  LDR.W           R8, [R9,R12]
23A784:  MOV             R2, R0
23A786:  LDR.W           R6, [R9,LR]
23A78A:  LDR.W           R5, [R9,R5]
23A78E:  CBZ             R5, loc_23A7B8
23A790:  ADD.W           R5, R9, R1,LSL#8
23A794:  MOVW            R4, #0x4850
23A798:  ADD             R5, R4
23A79A:  MOVS            R4, #0
23A79C:  ADDS            R0, R5, R4
23A79E:  VLDR            D16, [R0]
23A7A2:  ADDS            R0, R2, R4
23A7A4:  ADDS            R4, #8
23A7A6:  VLDR            D17, [R0]
23A7AA:  CMP.W           R4, #0x100
23A7AE:  VMUL.F64        D16, D17, D16
23A7B2:  VSTR            D16, [R0]
23A7B6:  BNE             loc_23A79C
23A7B8:  ADD.W           R4, R6, R8
23A7BC:  CBZ             R1, loc_23A7DA
23A7BE:  MOVW            R0, #0x4838
23A7C2:  MOVW            R6, #0x4828
23A7C6:  LDR.W           R5, [R9,R0]
23A7CA:  MOVW            R0, #0x918C
23A7CE:  LDR.W           R11, [R9,R0]
23A7D2:  ADD.W           R8, R9, R6
23A7D6:  ADDS            R4, #4
23A7D8:  B               loc_23A804
23A7DA:  MOVW            R8, #0x4838
23A7DE:  MOVW            R6, #0x9188
23A7E2:  LDR.W           R0, [R9,R8]
23A7E6:  LDR.W           R11, [R9,R6]
23A7EA:  MOVW            R6, #0x918C
23A7EE:  ADDS            R0, #0xF
23A7F0:  STR.W           R11, [R9,R6]
23A7F4:  AND.W           R5, R0, #0xF
23A7F8:  STR.W           R5, [R9,R8]
23A7FC:  MOVW            R0, #0x4820
23A800:  ADD.W           R8, R9, R0
23A804:  ADD             R12, R9
23A806:  LSLS            R0, R5, #0x1F
23A808:  ADD.W           R6, R9, LR
23A80C:  STRD.W          R3, R1, [SP,#0x48+var_30]
23A810:  STRD.W          R6, R12, [SP,#0x48+var_40]
23A814:  BNE             loc_23A82C
23A816:  LDRD.W          R0, R10, [R8]
23A81A:  ADD.W           R1, R10, R5,LSL#3
23A81E:  ADDS            R1, #8
23A820:  ADD.W           R0, R0, R5,LSL#3
23A824:  BLX             j_INT123_dct64
23A828:  ADDS            R5, #1
23A82A:  B               loc_23A842
23A82C:  ADDS            R3, R5, #1
23A82E:  LDRD.W          R10, R0, [R8]
23A832:  AND.W           R3, R3, #0xF
23A836:  ADD.W           R1, R10, R5,LSL#3
23A83A:  ADD.W           R0, R0, R3,LSL#3
23A83E:  BLX             j_INT123_dct64
23A842:  MOVW            R0, #0x9190
23A846:  MOVW            R1, #0x4844
23A84A:  LDR.W           R2, [R9,R0]
23A84E:  ADD             R0, R9
23A850:  LDR.W           R1, [R9,R1]
23A854:  STR             R0, [SP,#0x48+var_20]
23A856:  RSB.W           R0, R5, #0x1F0
23A85A:  ADD             R11, R2
23A85C:  VLDR            D16, =65536.0
23A860:  MOV.W           R8, #0x10
23A864:  ADD.W           R0, R1, R0,LSL#3
23A868:  STR             R0, [SP,#0x48+var_38]
23A86A:  SUB.W           R0, R1, R5,LSL#3
23A86E:  VLDR            D17, =2.14748365e9
23A872:  ADD.W           R6, R0, #0x80
23A876:  RSB.W           R0, R5, #0x210
23A87A:  VLDR            D18, =-2.14748365e9
23A87E:  MOV             R12, #0x7FFFFFFF
23A882:  STR.W           R9, [SP,#0x48+var_34]
23A886:  MOV.W           R9, #0x80000000
23A88A:  STR             R1, [SP,#0x48+var_44]
23A88C:  MOV             R1, R10
23A88E:  STR             R0, [SP,#0x48+var_48]
23A890:  MOVS            R0, #0
23A892:  STR             R5, [SP,#0x48+var_24]
23A894:  STR.W           R10, [SP,#0x48+var_28]
23A898:  CMP.W           R11, #0x8000
23A89C:  BLT.W           loc_23A9FC
23A8A0:  VLDM            R1, {D19-D22}
23A8A4:  MOVS            R5, #0
23A8A6:  MVN.W           R3, R11
23A8AA:  MOVT            R5, #0xFFFF
23A8AE:  VLDM            R6, {D23-D26}
23A8B2:  CMP             R3, R5
23A8B4:  ADD.W           R10, R11, #0x8000
23A8B8:  VMUL.F64        D20, D24, D20
23A8BC:  VMUL.F64        D19, D23, D19
23A8C0:  VMUL.F64        D21, D25, D21
23A8C4:  VSUB.F64        D19, D19, D20
23A8C8:  VMUL.F64        D22, D26, D22
23A8CC:  VADD.F64        D19, D19, D21
23A8D0:  VLDR            D20, [R1,#0x20]
23A8D4:  VLDR            D23, [R6,#0x20]
23A8D8:  VSUB.F64        D19, D19, D22
23A8DC:  VMUL.F64        D20, D23, D20
23A8E0:  VLDR            D21, [R1,#0x28]
23A8E4:  VLDR            D24, [R6,#0x28]
23A8E8:  VADD.F64        D19, D19, D20
23A8EC:  VMUL.F64        D21, D24, D21
23A8F0:  VLDR            D22, [R1,#0x30]
23A8F4:  VLDR            D23, [R6,#0x30]
23A8F8:  VSUB.F64        D19, D19, D21
23A8FC:  VMUL.F64        D22, D23, D22
23A900:  VLDR            D20, [R1,#0x38]
23A904:  VLDR            D24, [R6,#0x38]
23A908:  VADD.F64        D19, D19, D22
23A90C:  VMUL.F64        D20, D24, D20
23A910:  VLDR            D21, [R1,#0x40]
23A914:  VLDR            D23, [R6,#0x40]
23A918:  VSUB.F64        D19, D19, D20
23A91C:  VMUL.F64        D21, D23, D21
23A920:  VLDR            D22, [R1,#0x48]
23A924:  VLDR            D24, [R6,#0x48]
23A928:  VADD.F64        D19, D19, D21
23A92C:  VMUL.F64        D22, D24, D22
23A930:  VLDR            D20, [R1,#0x50]
23A934:  VLDR            D23, [R6,#0x50]
23A938:  VSUB.F64        D19, D19, D22
23A93C:  VMUL.F64        D20, D23, D20
23A940:  VLDR            D21, [R1,#0x58]
23A944:  VLDR            D24, [R6,#0x58]
23A948:  VADD.F64        D19, D19, D20
23A94C:  VMUL.F64        D21, D24, D21
23A950:  VLDR            D22, [R1,#0x60]
23A954:  VLDR            D23, [R6,#0x60]
23A958:  VSUB.F64        D19, D19, D21
23A95C:  VMUL.F64        D22, D23, D22
23A960:  VLDR            D20, [R1,#0x68]
23A964:  VLDR            D24, [R6,#0x68]
23A968:  VADD.F64        D19, D19, D22
23A96C:  VMUL.F64        D20, D24, D20
23A970:  VLDR            D21, [R1,#0x70]
23A974:  VLDR            D23, [R6,#0x70]
23A978:  VSUB.F64        D19, D19, D20
23A97C:  VMUL.F64        D21, D23, D21
23A980:  VLDR            D22, [R1,#0x78]
23A984:  VLDR            D24, [R6,#0x78]
23A988:  VADD.F64        D19, D19, D21
23A98C:  VMUL.F64        D20, D24, D22
23A990:  VSUB.F64        D19, D19, D20
23A994:  VMUL.F64        D19, D19, D16
23A998:  VCVT.S32.F64    S0, D19
23A99C:  IT LE
23A99E:  MOVLE           R3, R5
23A9A0:  ADD             R3, R10
23A9A2:  MOVW            R5, #0x7FFF
23A9A6:  BIC.W           LR, R3, R5
23A9AA:  MOV             R5, #0xFFFF8
23A9B2:  AND.W           R3, R5, R3,LSR#12
23A9B6:  ADD             R3, R4
23A9B8:  ADDS            R3, #8
23A9BA:  VMOV            R2, S0
23A9BE:  VCMPE.F64       D19, D17
23A9C2:  VMRS            APSR_nzcv, FPSCR
23A9C6:  BLE             loc_23A9D0
23A9C8:  STR.W           R12, [R4]
23A9CC:  ADDS            R0, #1
23A9CE:  B               loc_23A9E2
23A9D0:  VCMPE.F64       D19, D18
23A9D4:  VMRS            APSR_nzcv, FPSCR
23A9D8:  ITEE GE
23A9DA:  STRGE           R2, [R4]
23A9DC:  STRLT.W         R9, [R4]
23A9E0:  ADDLT           R0, #1
23A9E2:  SUB.W           R10, R10, #0x8000
23A9E6:  ADDS            R4, #8
23A9E8:  CMP.W           R10, #0x10000
23A9EC:  BGE             loc_23A9BE
23A9EE:  LDR             R2, [SP,#0x48+var_20]
23A9F0:  SUB.W           R4, R11, #0x8000
23A9F4:  SUB.W           R11, R4, LR
23A9F8:  MOV             R4, R3
23A9FA:  LDR             R2, [R2]
23A9FC:  ADD             R11, R2
23A9FE:  ADD.W           R6, R6, #0x100
23AA02:  SUBS.W          R8, R8, #1
23AA06:  ADD.W           R1, R1, #0x80
23AA0A:  BNE.W           loc_23A898
23AA0E:  LDR             R2, [SP,#0x48+var_28]
23AA10:  CMP.W           R11, #0x8000
23AA14:  ADD.W           R10, R2, #0x800
23AA18:  ADD.W           R5, R2, #0x780
23AA1C:  BLT.W           loc_23AB44
23AA20:  LDR.W           R8, [SP,#0x48+var_38]
23AA24:  ADD.W           R1, R2, #0x810
23AA28:  VLDR            D23, [R10]
23AA2C:  MOVW            R6, #:lower16:(aZn18ctasksimpl_21+8); "skSimpleSitIdle10CreateTaskEv"
23AA30:  VLDR            D24, [R1]
23AA34:  MOVT            R6, #:upper16:(aZn18ctasksimpl_21+8); "skSimpleSitIdle10CreateTaskEv"
23AA38:  VLDR            D19, [R8,#0x110]
23AA3C:  VLDR            D20, [R8,#0x120]
23AA40:  VLDR            D21, [R8,#0x130]
23AA44:  VLDR            D22, [R8,#0x140]
23AA48:  LDRD.W          R3, R1, [SP,#0x48+var_48]
23AA4C:  VMUL.F64        D19, D19, D24
23AA50:  ADD.W           R1, R1, R3,LSL#3
23AA54:  MOVS            R3, #0xFFFF0000
23AA5A:  VLDR            D25, [R1]
23AA5E:  ADD.W           R1, R2, #0x820
23AA62:  VMUL.F64        D23, D25, D23
23AA66:  VLDR            D24, [R1]
23AA6A:  ADD.W           R1, R2, #0x830
23AA6E:  VADD.F64        D19, D23, D19
23AA72:  VMUL.F64        D20, D20, D24
23AA76:  VLDR            D25, [R1]
23AA7A:  ADD.W           R1, R2, #0x840
23AA7E:  VADD.F64        D19, D19, D20
23AA82:  VMUL.F64        D21, D21, D25
23AA86:  VLDR            D23, [R1]
23AA8A:  ADD.W           R1, R2, #0x850
23AA8E:  VADD.F64        D19, D19, D21
23AA92:  VMUL.F64        D22, D22, D23
23AA96:  VLDR            D24, [R1]
23AA9A:  ADD.W           R1, R2, #0x860
23AA9E:  VLDR            D20, [R8,#0x150]
23AAA2:  VADD.F64        D19, D19, D22
23AAA6:  VMUL.F64        D20, D20, D24
23AAAA:  VLDR            D23, [R1]
23AAAE:  ADD.W           R1, R2, #0x870
23AAB2:  VLDR            D22, [R8,#0x160]
23AAB6:  MVN.W           R2, R11
23AABA:  VADD.F64        D19, D19, D20
23AABE:  CMP             R2, R3
23AAC0:  VMUL.F64        D22, D22, D23
23AAC4:  VLDR            D21, [R8,#0x170]
23AAC8:  VLDR            D24, [R1]
23AACC:  VADD.F64        D19, D19, D22
23AAD0:  VMUL.F64        D20, D21, D24
23AAD4:  VADD.F64        D19, D19, D20
23AAD8:  VMUL.F64        D19, D19, D16
23AADC:  VCVT.S32.F64    S0, D19
23AAE0:  IT LE
23AAE2:  MOVLE           R2, R3
23AAE4:  ADD             R2, R11
23AAE6:  MOVW            R3, #0x7FFF
23AAEA:  ADD.W           R2, R2, #0x8000
23AAEE:  BIC.W           R12, R2, R3
23AAF2:  ADD.W           R3, R11, #0x8000
23AAF6:  AND.W           R2, R6, R2,LSR#12
23AAFA:  MOV             R6, #0x7FFFFFFF
23AAFE:  ADD             R2, R4
23AB00:  ADD.W           LR, R2, #8
23AB04:  MOV.W           R2, #0x80000000
23AB08:  VMOV            R1, S0
23AB0C:  VCMPE.F64       D19, D17
23AB10:  VMRS            APSR_nzcv, FPSCR
23AB14:  BLE             loc_23AB1C
23AB16:  STR             R6, [R4]
23AB18:  ADDS            R0, #1
23AB1A:  B               loc_23AB2C
23AB1C:  VCMPE.F64       D19, D18
23AB20:  VMRS            APSR_nzcv, FPSCR
23AB24:  ITEE GE
23AB26:  STRGE           R1, [R4]
23AB28:  STRLT           R2, [R4]
23AB2A:  ADDLT           R0, #1
23AB2C:  SUB.W           R3, R3, #0x8000
23AB30:  ADDS            R4, #8
23AB32:  CMP.W           R3, #0x10000
23AB36:  BGE             loc_23AB0C
23AB38:  SUB.W           R1, R11, #0x8000
23AB3C:  LDR             R2, [SP,#0x48+var_20]
23AB3E:  SUB.W           R11, R1, R12
23AB42:  B               loc_23AB4C
23AB44:  MOV             LR, R4
23AB46:  LDR             R2, [SP,#0x48+var_20]
23AB48:  LDR.W           R8, [SP,#0x48+var_38]
23AB4C:  LDR             R1, [SP,#0x48+var_24]
23AB4E:  MOVS            R4, #0xF
23AB50:  MOV             R9, #0x7FFFFFFF
23AB54:  ADD.W           R6, R8, R1,LSL#4
23AB58:  MOV             R1, R5
23AB5A:  LDR             R5, [R2]
23AB5C:  ADD.W           R3, R5, R11
23AB60:  CMP.W           R3, #0x8000
23AB64:  BGE             loc_23AB88
23AB66:  MOV             R11, R3
23AB68:  B               loc_23AD0E
23AB6A:  ALIGN 0x10
23AB70:  DCFD 65536.0
23AB78:  DCFD 2.14748365e9
23AB80:  DCFD -2.14748365e9
23AB88:  STR             R5, [SP,#0x48+var_28]
23AB8A:  MVNS            R5, R3
23AB8C:  VLDR            D19, [R6,#-8]
23AB90:  ADD.W           R12, R3, #0x8000
23AB94:  VLDR            D20, [R6,#-0x10]
23AB98:  SUB.W           R11, R11, #0x8000
23AB9C:  VLDR            D23, [R10,#-0x78]
23ABA0:  MOV.W           R2, #0x80000000
23ABA4:  VLDR            D21, [R6,#-0x18]
23ABA8:  VLDR            D22, [R6,#-0x20]
23ABAC:  STR             R1, [SP,#0x48+var_24]
23ABAE:  VMUL.F64        D20, D20, D23
23ABB2:  VLDR            D24, [R1]
23ABB6:  MOVS            R1, #0
23ABB8:  VLDR            D25, [R10,#-0x70]
23ABBC:  MOVT            R1, #0xFFFF
23ABC0:  VNMUL.F64       D19, D19, D24
23ABC4:  CMP             R5, R1
23ABC6:  VMUL.F64        D21, D21, D25
23ABCA:  VSUB.F64        D19, D19, D20
23ABCE:  VLDR            D23, [R10,#-0x68]
23ABD2:  VSUB.F64        D19, D19, D21
23ABD6:  VMUL.F64        D22, D22, D23
23ABDA:  VLDR            D20, [R10,#-0x60]
23ABDE:  VLDR            D24, [R6,#-0x28]
23ABE2:  VSUB.F64        D19, D19, D22
23ABE6:  VMUL.F64        D20, D24, D20
23ABEA:  VLDR            D21, [R10,#-0x58]
23ABEE:  VLDR            D23, [R6,#-0x30]
23ABF2:  VSUB.F64        D19, D19, D20
23ABF6:  VMUL.F64        D21, D23, D21
23ABFA:  VLDR            D22, [R10,#-0x50]
23ABFE:  VLDR            D24, [R6,#-0x38]
23AC02:  VSUB.F64        D19, D19, D21
23AC06:  VMUL.F64        D22, D24, D22
23AC0A:  VLDR            D20, [R10,#-0x48]
23AC0E:  VLDR            D23, [R6,#-0x40]
23AC12:  VSUB.F64        D19, D19, D22
23AC16:  VMUL.F64        D20, D23, D20
23AC1A:  VLDR            D21, [R10,#-0x40]
23AC1E:  VLDR            D24, [R6,#-0x48]
23AC22:  VSUB.F64        D19, D19, D20
23AC26:  VMUL.F64        D21, D24, D21
23AC2A:  VLDR            D22, [R10,#-0x38]
23AC2E:  VLDR            D23, [R6,#-0x50]
23AC32:  VSUB.F64        D19, D19, D21
23AC36:  VMUL.F64        D22, D23, D22
23AC3A:  VLDR            D20, [R10,#-0x30]
23AC3E:  VLDR            D24, [R6,#-0x58]
23AC42:  VSUB.F64        D19, D19, D22
23AC46:  VMUL.F64        D20, D24, D20
23AC4A:  VLDR            D21, [R10,#-0x28]
23AC4E:  VLDR            D23, [R6,#-0x60]
23AC52:  VSUB.F64        D19, D19, D20
23AC56:  VMUL.F64        D21, D23, D21
23AC5A:  VLDR            D26, [R10,#-0x20]
23AC5E:  VLDR            D27, [R6,#-0x68]
23AC62:  VSUB.F64        D19, D19, D21
23AC66:  VMUL.F64        D23, D27, D26
23AC6A:  VLDR            D25, [R10,#-0x18]
23AC6E:  VLDR            D20, [R6,#-0x70]
23AC72:  VSUB.F64        D19, D19, D23
23AC76:  VMUL.F64        D20, D20, D25
23AC7A:  VLDR            D24, [R10,#-0x10]
23AC7E:  VLDR            D21, [R6,#-0x78]
23AC82:  VSUB.F64        D19, D19, D20
23AC86:  VMUL.F64        D21, D21, D24
23AC8A:  VLDR            D22, [R10,#-8]
23AC8E:  VLDR            D23, [R6,#-0x80]
23AC92:  VSUB.F64        D19, D19, D21
23AC96:  VMUL.F64        D20, D23, D22
23AC9A:  VSUB.F64        D19, D19, D20
23AC9E:  VMUL.F64        D19, D19, D16
23ACA2:  VCVT.S32.F64    S0, D19
23ACA6:  IT LE
23ACA8:  MOVLE           R5, R1
23ACAA:  ADD.W           R3, R12, R5
23ACAE:  MOV             R1, #0x3FFFE
23ACB6:  AND.W           R10, R1, R3,LSR#14
23ACBA:  BFC.W           R3, #0, #0xF
23ACBE:  MOV             R1, LR
23ACC0:  VMOV            R8, S0
23ACC4:  VCMPE.F64       D19, D17
23ACC8:  VMRS            APSR_nzcv, FPSCR
23ACCC:  BLE             loc_23ACD6
23ACCE:  STR.W           R9, [LR]
23ACD2:  ADDS            R0, #1
23ACD4:  B               loc_23ACEA
23ACD6:  VCMPE.F64       D19, D18
23ACDA:  VMRS            APSR_nzcv, FPSCR
23ACDE:  ITEE GE
23ACE0:  STRGE.W         R8, [LR]
23ACE4:  STRLT.W         R2, [LR]
23ACE8:  ADDLT           R0, #1
23ACEA:  SUB.W           R12, R12, #0x8000
23ACEE:  ADD.W           LR, LR, #8
23ACF2:  CMP.W           R12, #0x10000
23ACF6:  BGE             loc_23ACC4
23ACF8:  LDR             R2, [SP,#0x48+var_28]
23ACFA:  ADD.W           R5, R11, R2
23ACFE:  SUB.W           R11, R5, R3
23AD02:  ADD.W           R3, R1, R10,LSL#2
23AD06:  LDRD.W          R1, R2, [SP,#0x48+var_24]
23AD0A:  ADD.W           LR, R3, #8
23AD0E:  SUB.W           R5, R1, #0x80
23AD12:  SUB.W           R6, R6, #0x100
23AD16:  SUBS            R4, #1
23AD18:  MOV             R10, R1
23AD1A:  BNE.W           loc_23AB58
23AD1E:  LDR             R3, [SP,#0x48+var_2C]
23AD20:  MOVW            R2, #0x9188
23AD24:  LDR             R1, [SP,#0x48+var_34]
23AD26:  ADD.W           R1, R1, R3,LSL#2
23AD2A:  STR.W           R11, [R1,R2]
23AD2E:  LDR             R1, [SP,#0x48+var_30]
23AD30:  CBZ             R1, loc_23AD46
23AD32:  LDR             R1, [SP,#0x48+var_40]
23AD34:  CMP             R3, #0
23AD36:  LDR             R1, [R1]
23AD38:  IT NE
23AD3A:  SUBNE.W         LR, LR, #4
23AD3E:  LDR             R2, [SP,#0x48+var_3C]
23AD40:  SUB.W           R1, LR, R1
23AD44:  STR             R1, [R2]
23AD46:  ADD             SP, SP, #0x2C ; ','
23AD48:  POP.W           {R8-R11}
23AD4C:  POP             {R4-R7,PC}
