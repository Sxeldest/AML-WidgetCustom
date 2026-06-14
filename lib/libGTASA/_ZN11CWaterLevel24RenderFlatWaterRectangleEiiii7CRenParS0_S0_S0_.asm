; =========================================================
; Game Engine Function: _ZN11CWaterLevel24RenderFlatWaterRectangleEiiii7CRenParS0_S0_S0_
; Address            : 0x59A874 - 0x59AC80
; =========================================================

59A874:  PUSH            {R4-R7,LR}
59A876:  ADD             R7, SP, #0xC
59A878:  PUSH.W          {R8-R11}
59A87C:  SUB             SP, SP, #4
59A87E:  VPUSH           {D8-D15}
59A882:  SUB             SP, SP, #0x98
59A884:  MOV             R12, R0
59A886:  LDR.W           R0, =(bSplitBigPolys_ptr - 0x59A892)
59A88A:  MOV             R8, R3
59A88C:  STR             R1, [SP,#0xF8+var_78]
59A88E:  ADD             R0, PC; bSplitBigPolys_ptr
59A890:  STR             R2, [SP,#0xF8+var_A4]
59A892:  LDR             R3, [R7,#arg_24]
59A894:  ADD.W           LR, R7, #0x1C
59A898:  LDR             R0, [R0]; bSplitBigPolys
59A89A:  LDRD.W          R9, R11, [R7,#arg_34]
59A89E:  STR             R3, [SP,#0xF8+var_98]
59A8A0:  LDRB            R0, [R0]
59A8A2:  LDM.W           LR, {R3,R10,LR}
59A8A6:  CMP             R0, #0
59A8A8:  LDRD.W          R2, R5, [R7,#arg_C]
59A8AC:  STR             R2, [SP,#0xF8+var_8C]
59A8AE:  LDR             R2, [R7,#arg_8]
59A8B0:  STR             R2, [SP,#0xF8+var_90]
59A8B2:  LDR             R1, [R7,#arg_28]
59A8B4:  LDR             R6, [R7,#arg_20]
59A8B6:  LDRD.W          R4, R2, [R7,#arg_0]
59A8BA:  STR             R4, [SP,#0xF8+var_A0]
59A8BC:  STR             R2, [SP,#0xF8+var_94]
59A8BE:  BEQ.W           loc_59AB58
59A8C2:  VMOV.F32        S16, #0.5
59A8C6:  LDR             R0, [R7,#arg_30]
59A8C8:  VMOV            S6, R11
59A8CC:  STR             R1, [SP,#0xF8+var_AC]
59A8CE:  VMOV            S0, R5
59A8D2:  MOV             R11, R5
59A8D4:  VMOV            S10, R0
59A8D8:  LDR             R0, =(bSplitBigPolys_ptr - 0x59A8E8)
59A8DA:  VMOV            S2, R3
59A8DE:  LDR             R5, [R7,#arg_C]
59A8E0:  VMOV            S4, R10
59A8E4:  ADD             R0, PC; bSplitBigPolys_ptr
59A8E6:  VMOV            S8, R9
59A8EA:  LDR             R1, [R7,#arg_2C]
59A8EC:  VMUL.F32        S18, S4, S16
59A8F0:  LDR             R0, [R0]; bSplitBigPolys
59A8F2:  VMUL.F32        S20, S2, S16
59A8F6:  STR             R0, [SP,#0xF8+var_B0]
59A8F8:  VMUL.F32        S22, S0, S16
59A8FC:  LDR             R0, =(bSplitBigPolys_ptr - 0x59A90C)
59A8FE:  VMUL.F32        S24, S6, S16
59A902:  LDR             R2, [SP,#0xF8+var_A4]
59A904:  VMUL.F32        S26, S8, S16
59A908:  ADD             R0, PC; bSplitBigPolys_ptr
59A90A:  VMUL.F32        S28, S10, S16
59A90E:  STR             R6, [SP,#0xF8+var_9C]
59A910:  LDR             R0, [R0]; bSplitBigPolys
59A912:  STR             R0, [SP,#0xF8+var_88]
59A914:  STR.W           R8, [SP,#0xF8+var_80]
59A918:  LDR             R0, [SP,#0xF8+var_78]
59A91A:  MOV             R8, R11
59A91C:  STR.W           R12, [SP,#0xF8+var_74]
59A920:  SUB.W           R0, R0, R12
59A924:  STR             R0, [SP,#0xF8+var_7C]
59A926:  LDRD.W          R0, R6, [SP,#0xF8+var_9C]
59A92A:  STR             R1, [SP,#0xF8+var_A8]
59A92C:  STR             R1, [SP,#0xF8+var_84]
59A92E:  MOV             R1, LR
59A930:  LDR.W           R12, [SP,#0xF8+var_AC]
59A934:  MOV             LR, R10
59A936:  MOV             R10, R1
59A938:  LDR             R1, [SP,#0xF8+var_A0]
59A93A:  STR.W           R12, [SP,#0xF8+var_70]
59A93E:  MOV             R12, R3
59A940:  STR             R6, [SP,#0xF8+var_6C]
59A942:  STR             R1, [SP,#0xF8+var_64]
59A944:  LDRD.W          R1, R3, [SP,#0xF8+var_94]
59A948:  STR             R5, [SP,#0xF8+var_8C]
59A94A:  STR             R5, [SP,#0xF8+var_68]
59A94C:  LDR             R5, [SP,#0xF8+var_7C]
59A94E:  MOV             R11, LR
59A950:  MOV             R9, R12
59A952:  MOV             R6, R8
59A954:  CMP             R5, #0xA9
59A956:  BGE             loc_59AA4E
59A958:  LDR.W           R8, [SP,#0xF8+var_80]
59A95C:  MOV             R4, R10
59A95E:  SUB.W           R5, R8, R2
59A962:  CMP             R5, #0xA9
59A964:  BLT.W           loc_59AB6E
59A968:  VMOV            S2, R0
59A96C:  LDR             R0, [SP,#0xF8+var_6C]
59A96E:  VMOV            S0, R6
59A972:  MOV.W           R10, #0
59A976:  VMOV            S4, R9
59A97A:  STR.W           R10, [SP,#0xF8+var_BC]
59A97E:  VMOV            S6, R0
59A982:  LDR             R0, [SP,#0xF8+var_70]
59A984:  VMOV            S8, R11
59A988:  STR.W           R10, [SP,#0xF8+var_CC]
59A98C:  VMOV            S12, R3
59A990:  VMOV            S10, R0
59A994:  LDR             R0, [SP,#0xF8+var_64]
59A996:  VMOV            S14, R1
59A99A:  STRD.W          R6, R9, [SP,#0xF8+var_E8]
59A99E:  VMUL.F32        S8, S8, S16
59A9A2:  STR             R1, [SP,#0xF8+var_F4]
59A9A4:  VMOV            S1, R0
59A9A8:  STR             R0, [SP,#0xF8+var_F8]
59A9AA:  VMUL.F32        S4, S4, S16
59A9AE:  LDR             R0, [SP,#0xF8+var_68]
59A9B0:  VMUL.F32        S0, S0, S16
59A9B4:  STR.W           R11, [SP,#0xF8+var_E0]
59A9B8:  VMUL.F32        S10, S10, S16
59A9BC:  STR             R3, [SP,#0xF8+var_F0]
59A9BE:  VMUL.F32        S12, S12, S16
59A9C2:  STR             R4, [SP,#0xF8+var_DC]
59A9C4:  VMUL.F32        S6, S6, S16
59A9C8:  STR             R0, [SP,#0xF8+var_EC]
59A9CA:  VMUL.F32        S14, S14, S16
59A9CE:  ADD.W           R0, R2, R8
59A9D2:  VMUL.F32        S2, S2, S16
59A9D6:  VMUL.F32        S1, S1, S16
59A9DA:  ADD.W           R0, R0, R0,LSR#31
59A9DE:  VADD.F32        S19, S28, S0
59A9E2:  VADD.F32        S30, S24, S8
59A9E6:  ASRS            R5, R0, #1
59A9E8:  VADD.F32        S17, S26, S4
59A9EC:  MOV             R3, R5
59A9EE:  VADD.F32        S21, S12, S10
59A9F2:  VADD.F32        S23, S14, S6
59A9F6:  VADD.F32        S25, S1, S2
59A9FA:  VSTR            S19, [SP,#0xF8+var_C8]
59A9FE:  VSTR            S17, [SP,#0xF8+var_C4]
59AA02:  VSTR            S30, [SP,#0xF8+var_C0]
59AA06:  VSTR            S25, [SP,#0xF8+var_D8]
59AA0A:  VSTR            S23, [SP,#0xF8+var_D4]
59AA0E:  VSTR            S21, [SP,#0xF8+var_D0]
59AA12:  LDRD.W          R1, R0, [SP,#0xF8+var_78]
59AA16:  BLX.W           j__ZN11CWaterLevel24RenderFlatWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderFlatWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
59AA1A:  VMOV            R0, S25
59AA1E:  MOVS            R2, #0
59AA20:  VMOV            R3, S21
59AA24:  VMOV            R1, S23
59AA28:  VMOV            LR, S30
59AA2C:  VMOV            R12, S17
59AA30:  VMOV            R8, S19
59AA34:  STR             R0, [SP,#0xF8+var_64]
59AA36:  LDR             R0, [SP,#0xF8+var_88]
59AA38:  LDRB            R0, [R0]
59AA3A:  STRD.W          R11, R9, [SP,#0xF8+var_70]
59AA3E:  CMP             R0, #0
59AA40:  STR             R2, [SP,#0xF8+var_68]
59AA42:  MOV             R0, R6
59AA44:  MOV             R2, R5
59AA46:  STR             R4, [SP,#0xF8+var_84]
59AA48:  BNE.W           loc_59A94C
59AA4C:  B               loc_59AB8E
59AA4E:  LDR             R5, [SP,#0xF8+var_9C]
59AA50:  MOVS            R0, #0
59AA52:  LDR             R6, [SP,#0xF8+var_AC]
59AA54:  LDR             R4, [SP,#0xF8+var_98]
59AA56:  LDR             R1, [SP,#0xF8+var_90]
59AA58:  VMOV            S0, R5
59AA5C:  LDR             R3, [SP,#0xF8+var_94]
59AA5E:  VMOV            S2, R6
59AA62:  LDR             R2, [SP,#0xF8+var_A0]
59AA64:  VMOV            S4, R4
59AA68:  VMOV            S6, R1
59AA6C:  STR             R0, [SP,#0xF8+var_BC]
59AA6E:  VMOV            S8, R3
59AA72:  STR             R4, [SP,#0xF8+var_D4]
59AA74:  VMOV            S10, R2
59AA78:  STRD.W          R0, R5, [SP,#0xF8+var_DC]
59AA7C:  VMUL.F32        S2, S2, S16
59AA80:  LDR             R0, [SP,#0xF8+var_A8]
59AA82:  VMUL.F32        S4, S4, S16
59AA86:  STR             R3, [SP,#0xF8+var_F4]
59AA88:  VMUL.F32        S0, S0, S16
59AA8C:  STR             R2, [SP,#0xF8+var_F8]
59AA8E:  VMUL.F32        S6, S6, S16
59AA92:  STR             R6, [SP,#0xF8+var_D0]
59AA94:  VMUL.F32        S8, S8, S16
59AA98:  STR             R1, [SP,#0xF8+var_F0]
59AA9A:  VMUL.F32        S10, S10, S16
59AA9E:  STR             R0, [SP,#0xF8+var_CC]
59AAA0:  LDR             R0, [SP,#0xF8+var_8C]
59AAA2:  VADD.F32        S30, S24, S2
59AAA6:  STR             R0, [SP,#0xF8+var_EC]
59AAA8:  VADD.F32        S17, S26, S4
59AAAC:  VADD.F32        S19, S28, S0
59AAB0:  VADD.F32        S21, S6, S18
59AAB4:  VADD.F32        S23, S8, S20
59AAB8:  VADD.F32        S25, S10, S22
59AABC:  VSTR            S19, [SP,#0xF8+var_C8]
59AAC0:  VSTR            S17, [SP,#0xF8+var_C4]
59AAC4:  VSTR            S30, [SP,#0xF8+var_C0]
59AAC8:  VSTR            S25, [SP,#0xF8+var_E8]
59AACC:  VSTR            S23, [SP,#0xF8+var_E4]
59AAD0:  VSTR            S21, [SP,#0xF8+var_E0]
59AAD4:  LDRD.W          R0, R1, [SP,#0xF8+var_78]
59AAD8:  LDR             R4, [SP,#0xF8+var_A4]
59AADA:  ADD             R0, R1
59AADC:  LDR.W           R8, [SP,#0xF8+var_80]
59AAE0:  ADD.W           R0, R0, R0,LSR#31
59AAE4:  MOV             R2, R4
59AAE6:  MOV             R3, R8
59AAE8:  ASRS            R6, R0, #1
59AAEA:  MOV             R0, R1
59AAEC:  MOV             R1, R6
59AAEE:  BLX.W           j__ZN11CWaterLevel24RenderFlatWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderFlatWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
59AAF2:  VMOV            R0, S30
59AAF6:  MOV             R2, R4
59AAF8:  VMOV            R1, S25
59AAFC:  MOVS            R5, #0
59AAFE:  MOV             R12, R6
59AB00:  STR             R0, [SP,#0xF8+var_AC]
59AB02:  VMOV            R0, S17
59AB06:  STR             R1, [SP,#0xF8+var_A0]
59AB08:  MOVS            R1, #0
59AB0A:  STR             R0, [SP,#0xF8+var_98]
59AB0C:  VMOV            R0, S19
59AB10:  STR             R0, [SP,#0xF8+var_9C]
59AB12:  VMOV            R0, S21
59AB16:  STR             R0, [SP,#0xF8+var_90]
59AB18:  VMOV            R0, S23
59AB1C:  STR             R0, [SP,#0xF8+var_94]
59AB1E:  LDR             R0, [SP,#0xF8+var_B0]
59AB20:  LDRB            R0, [R0]
59AB22:  LDRD.W          R11, R3, [R7,#arg_10]
59AB26:  LDRD.W          R10, R4, [R7,#arg_18]
59AB2A:  CMP             R0, #0
59AB2C:  MOV             LR, R4
59AB2E:  BNE.W           loc_59A918
59AB32:  STR             R6, [SP,#0xF8+var_74]
59AB34:  MOVS            R0, #0
59AB36:  LDR             R6, [R7,#arg_38]
59AB38:  STR             R0, [SP,#0xF8+var_A8]
59AB3A:  MOV             R0, R6
59AB3C:  LDRD.W          R6, R9, [R7,#arg_30]
59AB40:  MOV             R2, R6
59AB42:  LDRD.W          R6, R4, [SP,#0xF8+var_9C]
59AB46:  STR.W           R11, [SP,#0xF8+var_7C]
59AB4A:  MOV             R11, R0
59AB4C:  MOVS            R0, #0
59AB4E:  LDR             R1, [SP,#0xF8+var_AC]
59AB50:  STR             R0, [SP,#0xF8+var_8C]
59AB52:  STR.W           LR, [SP,#0xF8+var_64]
59AB56:  B               loc_59ABC0
59AB58:  LDR             R0, [R7,#arg_24]
59AB5A:  LDR             R2, [R7,#arg_30]
59AB5C:  STR             R5, [SP,#0xF8+var_7C]
59AB5E:  MOV             R4, R0
59AB60:  LDR             R0, [R7,#arg_2C]
59AB62:  STR             R0, [SP,#0xF8+var_A8]
59AB64:  STR.W           LR, [SP,#0xF8+var_64]
59AB68:  STR.W           R12, [SP,#0xF8+var_74]
59AB6C:  B               loc_59ABC0
59AB6E:  STR             R2, [SP,#0xF8+var_A4]
59AB70:  MOV             R10, R11
59AB72:  LDR             R2, [SP,#0xF8+var_64]
59AB74:  STR             R2, [SP,#0xF8+var_A0]
59AB76:  STRD.W          R1, R3, [SP,#0xF8+var_94]
59AB7A:  MOV             R3, R9
59AB7C:  LDR             R1, [SP,#0xF8+var_68]
59AB7E:  STR             R1, [SP,#0xF8+var_8C]
59AB80:  STR             R6, [SP,#0xF8+var_7C]
59AB82:  STR             R4, [SP,#0xF8+var_64]
59AB84:  LDRD.W          R1, R4, [SP,#0xF8+var_70]
59AB88:  LDR             R2, [SP,#0xF8+var_84]
59AB8A:  STR             R2, [SP,#0xF8+var_A8]
59AB8C:  B               loc_59ABB4
59AB8E:  LDR             R0, [SP,#0xF8+var_64]
59AB90:  MOV             R10, LR
59AB92:  STR             R0, [SP,#0xF8+var_A0]
59AB94:  MOV             R0, R6
59AB96:  STR             R5, [SP,#0xF8+var_A4]
59AB98:  STRD.W          R1, R3, [SP,#0xF8+var_94]
59AB9C:  MOVS            R1, #0
59AB9E:  STR.W           R8, [SP,#0xF8+var_7C]
59ABA2:  MOV             R3, R12
59ABA4:  LDR.W           R8, [SP,#0xF8+var_80]
59ABA8:  STR             R1, [SP,#0xF8+var_8C]
59ABAA:  MOVS            R1, #0
59ABAC:  STR             R1, [SP,#0xF8+var_64]
59ABAE:  MOV             R1, R11
59ABB0:  STR             R4, [SP,#0xF8+var_A8]
59ABB2:  MOV             R4, R9
59ABB4:  ADD.W           R11, R7, #0x38 ; '8'
59ABB8:  LDM.W           R11, {R6,R9,R11}
59ABBC:  MOV             R2, R6
59ABBE:  MOV             R6, R0
59ABC0:  MOVS            R0, #0
59ABC2:  STRD.W          R6, R4, [SP,#0xF8+var_9C]
59ABC6:  STR             R0, [SP,#0xF8+var_B8]
59ABC8:  MOV             R12, R1
59ABCA:  STRD.W          R2, R9, [SP,#0xF8+var_C8]
59ABCE:  STRD.W          R6, R4, [SP,#0xF8+var_D8]
59ABD2:  LDR             R5, [SP,#0xF8+var_7C]
59ABD4:  LDR             R0, [SP,#0xF8+var_94]
59ABD6:  STR             R3, [SP,#0xF8+var_E4]
59ABD8:  STR             R3, [SP,#0xF8+var_6C]
59ABDA:  MOV             R6, R5
59ABDC:  STR             R5, [SP,#0xF8+var_E8]
59ABDE:  MOV             R5, R12
59ABE0:  STR             R0, [SP,#0xF8+var_F4]
59ABE2:  LDR.W           R9, [SP,#0xF8+var_A0]
59ABE6:  LDR             R0, [SP,#0xF8+var_90]
59ABE8:  LDR             R3, [SP,#0xF8+var_8C]
59ABEA:  STR.W           R9, [SP,#0xF8+var_F8]
59ABEE:  STR.W           R11, [SP,#0xF8+var_C0]
59ABF2:  STR             R1, [SP,#0xF8+var_D0]
59ABF4:  STR.W           R10, [SP,#0xF8+var_E0]
59ABF8:  STR             R0, [SP,#0xF8+var_F0]
59ABFA:  LDR             R0, [R7,#arg_3C]
59ABFC:  STR.W           R10, [SP,#0xF8+var_68]
59AC00:  STR             R0, [SP,#0xF8+var_BC]
59AC02:  LDR             R0, [SP,#0xF8+var_64]
59AC04:  LDR.W           R10, [SP,#0xF8+var_A8]
59AC08:  STR.W           R10, [SP,#0xF8+var_CC]
59AC0C:  STR             R0, [SP,#0xF8+var_64]
59AC0E:  STR             R0, [SP,#0xF8+var_DC]
59AC10:  MOV             R0, R3
59AC12:  STR             R0, [SP,#0xF8+var_8C]
59AC14:  MOV             R3, R8
59AC16:  STR             R0, [SP,#0xF8+var_EC]
59AC18:  LDRD.W          R4, R0, [SP,#0xF8+var_78]
59AC1C:  LDR.W           R11, [SP,#0xF8+var_A4]
59AC20:  MOV             R1, R4
59AC22:  MOV             R2, R11
59AC24:  BLX             j__ZN11CWaterLevel33RenderFlatWaterRectangle_OneLayerEiiii7CRenParS0_S0_S0_i; CWaterLevel::RenderFlatWaterRectangle_OneLayer(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar,int)
59AC28:  MOVS            R0, #1
59AC2A:  ADD             R1, SP, #0xF8+var_D4
59AC2C:  STR             R0, [SP,#0xF8+var_B8]
59AC2E:  MOV             R2, R11
59AC30:  LDR             R0, [SP,#0xF8+var_9C]
59AC32:  MOV             R3, R8
59AC34:  STR             R0, [SP,#0xF8+var_D8]
59AC36:  LDR             R0, [SP,#0xF8+var_98]
59AC38:  STM.W           R1, {R0,R5,R10}
59AC3C:  MOV             R1, R4
59AC3E:  LDR             R0, [R7,#arg_30]
59AC40:  STR             R0, [SP,#0xF8+var_C8]
59AC42:  LDR             R0, [R7,#arg_34]
59AC44:  STR             R0, [SP,#0xF8+var_C4]
59AC46:  LDR             R0, [R7,#arg_38]
59AC48:  STR             R0, [SP,#0xF8+var_C0]
59AC4A:  LDR             R0, [R7,#arg_3C]
59AC4C:  STR             R0, [SP,#0xF8+var_BC]
59AC4E:  LDR             R0, [SP,#0xF8+var_94]
59AC50:  STR.W           R9, [SP,#0xF8+var_F8]
59AC54:  STR             R0, [SP,#0xF8+var_F4]
59AC56:  LDR             R0, [SP,#0xF8+var_90]
59AC58:  STR             R0, [SP,#0xF8+var_F0]
59AC5A:  LDR             R0, [SP,#0xF8+var_8C]
59AC5C:  STRD.W          R0, R6, [SP,#0xF8+var_EC]
59AC60:  LDR             R0, [SP,#0xF8+var_6C]
59AC62:  STR             R0, [SP,#0xF8+var_E4]
59AC64:  LDR             R0, [SP,#0xF8+var_68]
59AC66:  STR             R0, [SP,#0xF8+var_E0]
59AC68:  LDR             R0, [SP,#0xF8+var_64]
59AC6A:  STR             R0, [SP,#0xF8+var_DC]
59AC6C:  LDR             R0, [SP,#0xF8+var_74]
59AC6E:  BLX             j__ZN11CWaterLevel33RenderFlatWaterRectangle_OneLayerEiiii7CRenParS0_S0_S0_i; CWaterLevel::RenderFlatWaterRectangle_OneLayer(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar,int)
59AC72:  ADD             SP, SP, #0x98
59AC74:  VPOP            {D8-D15}
59AC78:  ADD             SP, SP, #4
59AC7A:  POP.W           {R8-R11}
59AC7E:  POP             {R4-R7,PC}
