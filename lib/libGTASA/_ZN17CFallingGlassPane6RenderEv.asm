; =========================================================
; Game Engine Function: _ZN17CFallingGlassPane6RenderEv
; Address            : 0x5AB838 - 0x5ABD5E
; =========================================================

5AB838:  PUSH            {R4-R7,LR}
5AB83A:  ADD             R7, SP, #0xC
5AB83C:  PUSH.W          {R8-R11}
5AB840:  SUB             SP, SP, #4
5AB842:  VPUSH           {D8-D14}
5AB846:  SUB             SP, SP, #0x48
5AB848:  MOV             R4, R0
5AB84A:  LDR.W           R0, =(TheCamera_ptr - 0x5AB856)
5AB84E:  VLDR            D16, [R4,#0x10]
5AB852:  ADD             R0, PC; TheCamera_ptr
5AB854:  VLDR            S16, [R4,#0x30]
5AB858:  VLDR            S20, [R4,#0x34]
5AB85C:  LDR             R5, [R0]; TheCamera
5AB85E:  VLDR            S18, [R4,#0x38]
5AB862:  LDR             R1, [R4,#0x18]
5AB864:  LDR             R0, [R5,#(dword_951FBC - 0x951FA8)]
5AB866:  ADD.W           R2, R0, #0x30 ; '0'
5AB86A:  CMP             R0, #0
5AB86C:  ADD             R0, SP, #0xA0+var_68; this
5AB86E:  IT EQ
5AB870:  ADDEQ           R2, R5, #4
5AB872:  VLDR            S22, [R2]
5AB876:  VLDR            S26, [R2,#4]
5AB87A:  VLDR            S24, [R2,#8]
5AB87E:  STR             R1, [SP,#0xA0+var_60]
5AB880:  VSTR            D16, [SP,#0xA0+var_68]
5AB884:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5AB888:  ADD.W           R0, R5, #0x910
5AB88C:  VLDR            S0, [SP,#0xA0+var_68]
5AB890:  VLDR            S2, [SP,#0xA0+var_68+4]
5AB894:  VLDR            S6, [R0]
5AB898:  ADDW            R0, R5, #0x90C
5AB89C:  VLDR            S4, [SP,#0xA0+var_60]
5AB8A0:  VLDR            S8, [R0]
5AB8A4:  VMUL.F32        S10, S6, S2
5AB8A8:  ADDW            R0, R5, #0x914
5AB8AC:  VMUL.F32        S12, S8, S0
5AB8B0:  VLDR            S14, [R0]
5AB8B4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5AB8C0)
5AB8B8:  VMUL.F32        S1, S14, S4
5AB8BC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5AB8BE:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
5AB8C0:  VADD.F32        S10, S12, S10
5AB8C4:  LDR             R0, [R4,#0x60]
5AB8C6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
5AB8C8:  SUBS            R2, R1, R0
5AB8CA:  VADD.F32        S10, S10, S1
5AB8CE:  VADD.F32        S10, S10, S10
5AB8D2:  VMUL.F32        S2, S2, S10
5AB8D6:  VMUL.F32        S0, S0, S10
5AB8DA:  VMUL.F32        S4, S4, S10
5AB8DE:  VSUB.F32        S2, S6, S2
5AB8E2:  VLDR            S6, =0.57
5AB8E6:  VSUB.F32        S0, S8, S0
5AB8EA:  VSUB.F32        S4, S14, S4
5AB8EE:  VMUL.F32        S2, S2, S6
5AB8F2:  VMUL.F32        S0, S0, S6
5AB8F6:  VMUL.F32        S4, S4, S6
5AB8FA:  VADD.F32        S0, S0, S2
5AB8FE:  VSUB.F32        S0, S0, S4
5AB902:  VMOV.F32        S4, #20.0
5AB906:  VMUL.F32        S2, S0, S0
5AB90A:  VMUL.F32        S2, S0, S2
5AB90E:  VMUL.F32        S2, S0, S2
5AB912:  VMUL.F32        S2, S0, S2
5AB916:  VMUL.F32        S0, S0, S2
5AB91A:  VLDR            S2, =235.0
5AB91E:  VMUL.F32        S0, S0, S2
5AB922:  VLDR            S2, =500.0
5AB926:  VADD.F32        S0, S0, S4
5AB92A:  VCVT.U32.F32    S0, S0
5AB92E:  BLT             loc_5AB93A
5AB930:  VMOV.F32        S4, S2
5AB934:  CMP.W           R2, #0x1F4
5AB938:  BGT             loc_5AB94E
5AB93A:  VMOV            S4, R2
5AB93E:  VLDR            S6, =0.0
5AB942:  CMP             R1, R0
5AB944:  VCVT.F32.S32    S4, S4
5AB948:  IT LT
5AB94A:  VMOVLT.F32      S4, S6
5AB94E:  VDIV.F32        S2, S4, S2
5AB952:  LDR.W           R0, =(TempBufferIndicesStoredHiLight_ptr - 0x5AB95A)
5AB956:  ADD             R0, PC; TempBufferIndicesStoredHiLight_ptr
5AB958:  LDR             R0, [R0]; TempBufferIndicesStoredHiLight
5AB95A:  VCVT.F32.U32    S0, S0
5AB95E:  LDR             R0, [R0]; this
5AB960:  CMP.W           R0, #0x7F8
5AB964:  VMUL.F32        S0, S2, S0
5AB968:  VCVT.U32.F32    S28, S0
5AB96C:  BGT             loc_5AB984
5AB96E:  LDR.W           R0, =(TempBufferVerticesStoredHiLight_ptr - 0x5AB976)
5AB972:  ADD             R0, PC; TempBufferVerticesStoredHiLight_ptr
5AB974:  LDR             R0, [R0]; TempBufferVerticesStoredHiLight
5AB976:  LDR             R0, [R0]; this
5AB978:  CMP.W           R0, #0x3FC
5AB97C:  IT GE
5AB97E:  BLXGE.W         j__ZN6CGlass18RenderHiLightPolysEv; CGlass::RenderHiLightPolys(void)
5AB982:  B               loc_5AB988
5AB984:  BLX.W           j__ZN6CGlass18RenderHiLightPolysEv; CGlass::RenderHiLightPolys(void)
5AB988:  VMOV            R0, S28
5AB98C:  LDRB.W          R1, [R4,#0x6F]
5AB990:  CBZ             R1, loc_5AB998
5AB992:  CMP             R0, #0x40 ; '@'
5AB994:  IT LS
5AB996:  MOVLS           R0, #0x40 ; '@'
5AB998:  LDR             R1, =(TempBufferVerticesStoredHiLight_ptr - 0x5AB9A8)
5AB99A:  MOVW            R5, #0x999A
5AB99E:  LDR             R3, =(CentersWithTriangle_ptr - 0x5AB9AE)
5AB9A0:  MOVT            R5, #0x3F19
5AB9A4:  ADD             R1, PC; TempBufferVerticesStoredHiLight_ptr
5AB9A6:  MOV.W           R8, #4
5AB9AA:  ADD             R3, PC; CentersWithTriangle_ptr
5AB9AC:  MOV.W           R9, #0
5AB9B0:  LDR             R2, [R1]; TempBufferVerticesStoredHiLight
5AB9B2:  LDR             R1, =(TempVertexBuffer_ptr - 0x5AB9BC)
5AB9B4:  STR             R2, [SP,#0xA0+var_84]
5AB9B6:  LDR             R2, [R2]
5AB9B8:  ADD             R1, PC; TempVertexBuffer_ptr
5AB9BA:  LDR             R6, [R1]; TempVertexBuffer
5AB9BC:  ADD.W           R1, R2, R2,LSL#3
5AB9C0:  ORR.W           R2, R0, R0,LSL#16
5AB9C4:  ORR.W           R2, R2, R0,LSL#24
5AB9C8:  STR             R6, [SP,#0xA0+var_88]
5AB9CA:  ADD.W           R1, R6, R1,LSL#2
5AB9CE:  ORR.W           R0, R2, R0,LSL#8
5AB9D2:  MOV.W           R2, #0x3F000000
5AB9D6:  ADD.W           R12, R1, #0x3C ; '<'
5AB9DA:  STRD.W          R0, R2, [R1,#0x18]
5AB9DE:  STR             R2, [R1,#0x20]
5AB9E0:  STM.W           R12, {R0,R2,R5}
5AB9E4:  STRD.W          R0, R5, [R1,#0x60]
5AB9E8:  STR             R5, [R1,#0x68]
5AB9EA:  LDRB.W          R0, [R4,#0x6C]
5AB9EE:  LDR             R5, [R3]; CentersWithTriangle
5AB9F0:  MOVS            R3, #4
5AB9F2:  LDR             R6, =(unk_61FB60 - 0x5ABA06)
5AB9F4:  ORR.W           R1, R3, R0,LSL#3
5AB9F8:  ADD.W           R2, R5, R0,LSL#3
5AB9FC:  ADD             R1, R5
5AB9FE:  ADD.W           R0, R0, R0,LSL#1
5ABA02:  ADD             R6, PC; unk_61FB60
5ABA04:  VLDR            S0, [R2]
5ABA08:  VLDR            S2, [R1]
5ABA0C:  ADD.W           R1, R6, R0,LSL#3
5ABA10:  ORR.W           R0, R3, R0,LSL#3
5ABA14:  ADD             R2, SP, #0xA0+var_80
5ABA16:  ADD             R0, R6
5ABA18:  VLDR            S4, [R1]
5ABA1C:  MOV             R1, R4
5ABA1E:  VLDR            S6, [R0]
5ABA22:  VSUB.F32        S0, S4, S0
5ABA26:  MOVS            R0, #0
5ABA28:  VSUB.F32        S2, S6, S2
5ABA2C:  STR             R0, [SP,#0xA0+var_7C]
5ABA2E:  ADD             R0, SP, #0xA0+var_74
5ABA30:  VSTR            S0, [SP,#0xA0+var_80]
5ABA34:  VSTR            S2, [SP,#0xA0+var_78]
5ABA38:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5ABA3C:  LDRD.W          R10, R11, [SP,#0xA0+var_74]
5ABA40:  ADD             R2, SP, #0xA0+var_80
5ABA42:  LDR             R0, [SP,#0xA0+var_6C]
5ABA44:  STR             R0, [SP,#0xA0+var_8C]
5ABA46:  LDRB.W          R0, [R4,#0x6C]
5ABA4A:  STR.W           R9, [SP,#0xA0+var_7C]
5ABA4E:  ORR.W           R1, R8, R0,LSL#3
5ABA52:  ADD             R1, R5
5ABA54:  VLDR            S0, [R1]
5ABA58:  ADD.W           R1, R5, R0,LSL#3
5ABA5C:  ADD.W           R0, R0, R0,LSL#1
5ABA60:  VLDR            S2, [R1]
5ABA64:  MOV             R1, R4
5ABA66:  ADD.W           R0, R6, R0,LSL#3
5ABA6A:  MOVS            R6, #0
5ABA6C:  VLDR            S4, [R0,#8]
5ABA70:  VLDR            S6, [R0,#0xC]
5ABA74:  ADD             R0, SP, #0xA0+var_74
5ABA76:  VSUB.F32        S2, S4, S2
5ABA7A:  VSUB.F32        S0, S6, S0
5ABA7E:  VSTR            S2, [SP,#0xA0+var_80]
5ABA82:  VSTR            S0, [SP,#0xA0+var_78]
5ABA86:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5ABA8A:  LDR             R0, [SP,#0xA0+var_74]
5ABA8C:  MOVS            R1, #4
5ABA8E:  STR             R0, [SP,#0xA0+var_90]
5ABA90:  ADD             R2, SP, #0xA0+var_80
5ABA92:  LDRD.W          R8, R9, [SP,#0xA0+var_70]
5ABA96:  LDRB.W          R0, [R4,#0x6C]
5ABA9A:  STR             R6, [SP,#0xA0+var_7C]
5ABA9C:  ORR.W           R1, R1, R0,LSL#3
5ABAA0:  ADD             R1, R5
5ABAA2:  VLDR            S0, [R1]
5ABAA6:  ADD.W           R1, R5, R0,LSL#3
5ABAAA:  ADD.W           R0, R0, R0,LSL#1
5ABAAE:  VLDR            S2, [R1]
5ABAB2:  LDR             R1, =(unk_61FB60 - 0x5ABAB8)
5ABAB4:  ADD             R1, PC; unk_61FB60
5ABAB6:  ADD.W           R0, R1, R0,LSL#3
5ABABA:  MOV             R1, R4
5ABABC:  VLDR            S4, [R0,#0x10]
5ABAC0:  VLDR            S6, [R0,#0x14]
5ABAC4:  ADD             R0, SP, #0xA0+var_74
5ABAC6:  VSUB.F32        S2, S4, S2
5ABACA:  VSUB.F32        S0, S6, S0
5ABACE:  VSTR            S2, [SP,#0xA0+var_80]
5ABAD2:  VSTR            S0, [SP,#0xA0+var_78]
5ABAD6:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5ABADA:  LDRD.W          LR, R2, [SP,#0xA0+var_74]
5ABADE:  LDR             R5, [SP,#0xA0+var_84]
5ABAE0:  LDR             R6, [SP,#0xA0+var_88]
5ABAE2:  STR.W           R10, [SP,#0xA0+var_94]
5ABAE6:  LDR             R0, [R5]
5ABAE8:  STR.W           R11, [SP,#0xA0+var_88]
5ABAEC:  LDR             R3, [SP,#0xA0+var_6C]
5ABAEE:  ADD.W           R1, R0, R0,LSL#3
5ABAF2:  STR.W           R10, [R6,R1,LSL#2]
5ABAF6:  ADD.W           R1, R6, R1,LSL#2
5ABAFA:  ADDS            R6, R0, #2
5ABAFC:  STR.W           R11, [R1,#4]
5ABB00:  LDR.W           R11, [SP,#0xA0+var_8C]
5ABB04:  LDR.W           R10, [SP,#0xA0+var_90]
5ABB08:  STR.W           R11, [R1,#8]
5ABB0C:  STRD.W          R10, R8, [R1,#0x24]
5ABB10:  STR.W           R9, [R1,#0x2C]
5ABB14:  STR.W           LR, [R1,#0x48]
5ABB18:  STR             R2, [R1,#0x4C]
5ABB1A:  STR             R2, [SP,#0xA0+var_98]
5ABB1C:  LDR             R2, =(TempBufferIndicesStoredHiLight_ptr - 0x5ABB24)
5ABB1E:  STR             R3, [R1,#0x50]
5ABB20:  ADD             R2, PC; TempBufferIndicesStoredHiLight_ptr
5ABB22:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5ABB2C)
5ABB24:  STR             R3, [SP,#0xA0+var_9C]
5ABB26:  LDR             R2, [R2]; TempBufferIndicesStoredHiLight
5ABB28:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5ABB2A:  LDR             R1, [R1]; TempBufferRenderIndexList
5ABB2C:  LDR             R3, [R2]
5ABB2E:  STRH.W          R0, [R1,R3,LSL#1]
5ABB32:  ADD.W           R1, R1, R3,LSL#1
5ABB36:  STRH            R6, [R1,#4]
5ABB38:  STRH            R6, [R1,#8]
5ABB3A:  ADDS            R6, R0, #1
5ABB3C:  STRH            R6, [R1,#2]
5ABB3E:  STRH            R0, [R1,#6]
5ABB40:  ADDS            R0, #3
5ABB42:  STR             R0, [R5]
5ABB44:  ADDS            R0, R3, #6
5ABB46:  STRH            R6, [R1,#0xA]
5ABB48:  STR             R0, [R2]
5ABB4A:  LDRB.W          R0, [R4,#0x6E]
5ABB4E:  CMP             R0, #0
5ABB50:  BEQ.W           loc_5ABD50
5ABB54:  VSUB.F32        S0, S26, S20
5ABB58:  LDR             R0, =(TempBufferIndicesStoredShattered_ptr - 0x5ABB6A)
5ABB5A:  VSUB.F32        S2, S22, S16
5ABB5E:  MOVW            R1, #0xBF8
5ABB62:  VSUB.F32        S4, S24, S18
5ABB66:  ADD             R0, PC; TempBufferIndicesStoredShattered_ptr
5ABB68:  LDR             R0, [R0]; TempBufferIndicesStoredShattered
5ABB6A:  VMUL.F32        S0, S0, S0
5ABB6E:  LDR             R0, [R0]
5ABB70:  VMUL.F32        S2, S2, S2
5ABB74:  VMUL.F32        S4, S4, S4
5ABB78:  CMP             R0, R1
5ABB7A:  VADD.F32        S0, S2, S0
5ABB7E:  VADD.F32        S0, S0, S4
5ABB82:  VSQRT.F32       S16, S0
5ABB86:  BGT             loc_5ABB98
5ABB88:  LDR             R0, =(TempBufferVerticesStoredShattered_ptr - 0x5ABB92)
5ABB8A:  MOVW            R1, #0x5FC
5ABB8E:  ADD             R0, PC; TempBufferVerticesStoredShattered_ptr
5ABB90:  LDR             R0, [R0]; TempBufferVerticesStoredShattered
5ABB92:  LDR             R0, [R0]; this
5ABB94:  CMP             R0, R1
5ABB96:  BLT             loc_5ABBA0
5ABB98:  MOV             R5, LR
5ABB9A:  BLX.W           j__ZN6CGlass20RenderShatteredPolysEv; CGlass::RenderShatteredPolys(void)
5ABB9E:  MOV             LR, R5
5ABBA0:  VMOV.F32        S0, #30.0
5ABBA4:  VCMPE.F32       S16, S0
5ABBA8:  VMRS            APSR_nzcv, FPSCR
5ABBAC:  BLE             loc_5ABBF0
5ABBAE:  VMOV.F32        S0, #-30.0
5ABBB2:  VMOV.F32        S2, #-4.0
5ABBB6:  VADD.F32        S0, S16, S0
5ABBBA:  VMUL.F32        S0, S0, S2
5ABBBE:  VLDR            S2, =40.0
5ABBC2:  VDIV.F32        S0, S0, S2
5ABBC6:  VMOV.F32        S2, #1.0
5ABBCA:  VADD.F32        S0, S0, S2
5ABBCE:  VLDR            S2, =140.0
5ABBD2:  VMUL.F32        S0, S0, S2
5ABBD6:  VCVT.U32.F32    S0, S0
5ABBDA:  VMOV            R6, S0
5ABBDE:  B               loc_5ABBF2
5ABBE0:  DCFS 0.57
5ABBE4:  DCFS 235.0
5ABBE8:  DCFS 500.0
5ABBEC:  DCFS 0.0
5ABBF0:  MOVS            R6, #0x8C
5ABBF2:  LDR             R0, =(TempBufferVerticesStoredShattered_ptr - 0x5ABC02)
5ABBF4:  ORR.W           R5, R6, R6,LSL#16
5ABBF8:  LDR             R1, =(TempVertexBuffer_ptr - 0x5ABC08)
5ABBFA:  ORR.W           R5, R5, R6,LSL#24
5ABBFE:  ADD             R0, PC; TempBufferVerticesStoredShattered_ptr
5ABC00:  ORR.W           R6, R5, R6,LSL#8
5ABC04:  ADD             R1, PC; TempVertexBuffer_ptr
5ABC06:  VMOV.F32        S0, #4.0
5ABC0A:  LDR.W           R12, [R0]; TempBufferVerticesStoredShattered
5ABC0E:  MOVS            R0, #4
5ABC10:  LDR             R1, [R1]; TempVertexBuffer
5ABC12:  LDR.W           R2, [R12]
5ABC16:  ADD.W           R3, R2, R2,LSL#3
5ABC1A:  ADD.W           R2, R1, R3,LSL#2
5ABC1E:  STR             R6, [R2,#0x3C]
5ABC20:  STR             R6, [R2,#0x18]
5ABC22:  STR             R6, [R2,#0x60]
5ABC24:  LDRB.W          R5, [R4,#0x6C]
5ABC28:  LDR             R6, =(unk_61FB60 - 0x5ABC36)
5ABC2A:  VLDR            S4, [R4,#0x68]
5ABC2E:  ADD.W           R5, R5, R5,LSL#1
5ABC32:  ADD             R6, PC; unk_61FB60
5ABC34:  ADD.W           R5, R6, R5,LSL#3
5ABC38:  VLDR            S2, [R5]
5ABC3C:  VMUL.F32        S2, S2, S0
5ABC40:  VMUL.F32        S2, S2, S4
5ABC44:  VSTR            S2, [R2,#0x1C]
5ABC48:  LDRB.W          R5, [R4,#0x6C]
5ABC4C:  VLDR            S4, [R4,#0x68]
5ABC50:  ADD.W           R5, R5, R5,LSL#1
5ABC54:  ORR.W           R0, R0, R5,LSL#3
5ABC58:  LDR             R5, [SP,#0xA0+var_94]
5ABC5A:  ADD             R0, R6
5ABC5C:  VLDR            S2, [R0]
5ABC60:  VMUL.F32        S2, S2, S0
5ABC64:  VMUL.F32        S2, S2, S4
5ABC68:  VSTR            S2, [R2,#0x20]
5ABC6C:  LDRB.W          R0, [R4,#0x6C]
5ABC70:  VLDR            S4, [R4,#0x68]
5ABC74:  ADD.W           R0, R0, R0,LSL#1
5ABC78:  ADD.W           R0, R6, R0,LSL#3
5ABC7C:  VLDR            S2, [R0,#8]
5ABC80:  VMUL.F32        S2, S2, S0
5ABC84:  VMUL.F32        S2, S2, S4
5ABC88:  VSTR            S2, [R2,#0x40]
5ABC8C:  LDRB.W          R0, [R4,#0x6C]
5ABC90:  VLDR            S4, [R4,#0x68]
5ABC94:  ADD.W           R0, R0, R0,LSL#1
5ABC98:  ADD.W           R0, R6, R0,LSL#3
5ABC9C:  VLDR            S2, [R0,#0xC]
5ABCA0:  VMUL.F32        S2, S2, S0
5ABCA4:  VMUL.F32        S2, S2, S4
5ABCA8:  VSTR            S2, [R2,#0x44]
5ABCAC:  LDRB.W          R0, [R4,#0x6C]
5ABCB0:  VLDR            S4, [R4,#0x68]
5ABCB4:  ADD.W           R0, R0, R0,LSL#1
5ABCB8:  ADD.W           R0, R6, R0,LSL#3
5ABCBC:  VLDR            S2, [R0,#0x10]
5ABCC0:  VMUL.F32        S2, S2, S0
5ABCC4:  VMUL.F32        S2, S2, S4
5ABCC8:  VSTR            S2, [R2,#0x64]
5ABCCC:  LDRB.W          R0, [R4,#0x6C]
5ABCD0:  ADD.W           R0, R0, R0,LSL#1
5ABCD4:  ADD.W           R0, R6, R0,LSL#3
5ABCD8:  LDR             R6, =(TempBufferIndicesStoredShattered_ptr - 0x5ABCE2)
5ABCDA:  VLDR            S2, [R0,#0x14]
5ABCDE:  ADD             R6, PC; TempBufferIndicesStoredShattered_ptr
5ABCE0:  LDR             R0, =(TempBufferRenderIndexList_ptr - 0x5ABCF2)
5ABCE2:  VMUL.F32        S0, S2, S0
5ABCE6:  VLDR            S2, [R4,#0x68]
5ABCEA:  STR.W           R5, [R1,R3,LSL#2]
5ABCEE:  ADD             R0, PC; TempBufferRenderIndexList_ptr
5ABCF0:  MOVW            R5, #0xFC02
5ABCF4:  STRD.W          R10, R8, [R2,#0x24]
5ABCF8:  MOVW            R4, #0xFC01
5ABCFC:  LDR             R3, [SP,#0xA0+var_88]
5ABCFE:  STR.W           R9, [R2,#0x2C]
5ABD02:  STRD.W          R3, R11, [R2,#4]
5ABD06:  VMUL.F32        S0, S0, S2
5ABD0A:  LDR             R3, [R6]; TempBufferIndicesStoredShattered
5ABD0C:  LDR             R0, [R0]; TempBufferRenderIndexList
5ABD0E:  VSTR            S0, [R2,#0x68]
5ABD12:  LDR.W           R2, [R12]
5ABD16:  ADD             R5, R2
5ABD18:  ADD             R4, R2
5ABD1A:  ADD.W           R6, R2, R2,LSL#3
5ABD1E:  ADD.W           R1, R1, R6,LSL#2
5ABD22:  LDR             R6, [SP,#0xA0+var_98]
5ABD24:  STR.W           LR, [R1,#0x48]
5ABD28:  STR             R6, [R1,#0x4C]
5ABD2A:  LDR             R6, [SP,#0xA0+var_9C]
5ABD2C:  STR             R6, [R1,#0x50]
5ABD2E:  ADD.W           R6, R2, #0xFC00
5ABD32:  LDR             R1, [R3]
5ABD34:  STRH.W          R6, [R0,R1,LSL#1]
5ABD38:  ADD.W           R0, R0, R1,LSL#1
5ABD3C:  STRH            R4, [R0,#2]
5ABD3E:  STRH            R5, [R0,#4]
5ABD40:  STRH            R6, [R0,#6]
5ABD42:  STRH            R5, [R0,#8]
5ABD44:  STRH            R4, [R0,#0xA]
5ABD46:  ADDS            R0, R2, #3
5ABD48:  STR.W           R0, [R12]
5ABD4C:  ADDS            R0, R1, #6
5ABD4E:  STR             R0, [R3]
5ABD50:  ADD             SP, SP, #0x48 ; 'H'
5ABD52:  VPOP            {D8-D14}
5ABD56:  ADD             SP, SP, #4
5ABD58:  POP.W           {R8-R11}
5ABD5C:  POP             {R4-R7,PC}
