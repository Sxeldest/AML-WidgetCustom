; =========================================================
; Game Engine Function: _ZN11CAutomobile16FireTruckControlEP5CFire
; Address            : 0x5CBBC8 - 0x5CC150
; =========================================================

5CBBC8:  PUSH            {R4-R7,LR}
5CBBCA:  ADD             R7, SP, #0xC
5CBBCC:  PUSH.W          {R8-R10}
5CBBD0:  VPUSH           {D8-D13}
5CBBD4:  SUB             SP, SP, #0x48
5CBBD6:  MOV             R5, R1
5CBBD8:  MOV             R8, R0
5CBBDA:  MOV.W           R0, #0xFFFFFFFF; int
5CBBDE:  MOVS            R1, #0; bool
5CBBE0:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5CBBE4:  ADD.W           R10, R8, #4
5CBBE8:  CMP             R8, R0
5CBBEA:  BEQ             loc_5CBC52
5CBBEC:  CMP             R5, #0
5CBBEE:  BEQ.W           loc_5CC144
5CBBF2:  LDRB.W          R0, [R8,#0x3A]
5CBBF6:  BIC.W           R0, R0, #7
5CBBFA:  UXTB            R0, R0
5CBBFC:  CMP             R0, #0x18
5CBBFE:  BNE.W           loc_5CC144
5CBC02:  LDR.W           R4, [R8,#0x14]
5CBC06:  MOV             R0, R10
5CBC08:  VLDR            S0, [R5,#4]
5CBC0C:  CMP             R4, #0
5CBC0E:  VLDR            S2, [R5,#8]
5CBC12:  IT NE
5CBC14:  ADDNE.W         R0, R4, #0x30 ; '0'
5CBC18:  VLDR            S4, [R0]
5CBC1C:  VLDR            S6, [R0,#4]
5CBC20:  VSUB.F32        S0, S0, S4
5CBC24:  VSUB.F32        S2, S2, S6
5CBC28:  VMOV            R0, S0
5CBC2C:  VMOV            R1, S2; x
5CBC30:  EOR.W           R0, R0, #0x80000000; y
5CBC34:  BLX.W           atan2f
5CBC38:  VMOV            S16, R0
5CBC3C:  CMP             R4, #0
5CBC3E:  BEQ             loc_5CBD1E
5CBC40:  LDRD.W          R0, R1, [R4,#0x10]; x
5CBC44:  EOR.W           R0, R0, #0x80000000; y
5CBC48:  BLX.W           atan2f
5CBC4C:  VMOV            S2, R0
5CBC50:  B               loc_5CBD22
5CBC52:  LDR.W           R0, =(TheCamera_ptr - 0x5CBC5A)
5CBC56:  ADD             R0, PC; TheCamera_ptr
5CBC58:  LDR             R1, [R0]; TheCamera
5CBC5A:  LDRB.W          R0, [R1,#(byte_951FFF - 0x951FA8)]
5CBC5E:  ADD.W           R0, R0, R0,LSL#5
5CBC62:  ADD.W           R1, R1, R0,LSL#4
5CBC66:  LDRH.W          R1, [R1,#0x17E]
5CBC6A:  CMP             R1, #0x12
5CBC6C:  BNE             loc_5CBD14
5CBC6E:  LDR.W           R1, =(TheCamera_ptr - 0x5CBC76)
5CBC72:  ADD             R1, PC; TheCamera_ptr
5CBC74:  LDR             R1, [R1]; TheCamera
5CBC76:  ADD.W           R0, R1, R0,LSL#4
5CBC7A:  ADD             R1, SP, #0x90+var_58; CMatrix *
5CBC7C:  VLDR            D16, [R0,#0x2D8]
5CBC80:  LDR.W           R0, [R0,#0x2E0]
5CBC84:  STR             R0, [SP,#0x90+y]
5CBC86:  ADD             R0, SP, #0x90+var_68; CVector *
5CBC88:  VSTR            D16, [SP,#0x90+var_58]
5CBC8C:  LDR.W           R2, [R8,#0x14]
5CBC90:  BLX.W           j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
5CBC94:  VLDR            D16, [SP,#0x90+var_68]
5CBC98:  LDR             R0, [SP,#0x90+var_60]
5CBC9A:  STR             R0, [SP,#0x90+y]
5CBC9C:  VSTR            D16, [SP,#0x90+var_58]
5CBCA0:  VLDR            S16, [SP,#0x90+var_58]
5CBCA4:  VLDR            S18, [SP,#0x90+var_58+4]
5CBCA8:  VMOV            R0, S16
5CBCAC:  VMOV            R1, S18; x
5CBCB0:  EOR.W           R0, R0, #0x80000000; y
5CBCB4:  BLX.W           atan2f
5CBCB8:  VMUL.F32        S0, S18, S18
5CBCBC:  MOV             R5, R0
5CBCBE:  VMUL.F32        S2, S16, S16
5CBCC2:  LDR             R0, [SP,#0x90+y]; y
5CBCC4:  VADD.F32        S0, S2, S0
5CBCC8:  VSQRT.F32       S0, S0
5CBCCC:  VMOV            R1, S0; x
5CBCD0:  BLX.W           atan2f
5CBCD4:  ADD.W           R1, R8, #0x960
5CBCD8:  VLDR            S0, =3.1416
5CBCDC:  LDRH.W          R3, [R8,#0x26]
5CBCE0:  MOVW            R6, #0x259
5CBCE4:  VLDR            S4, [R1]
5CBCE8:  ADR.W           R2, dword_5CC184
5CBCEC:  CMP             R3, R6
5CBCEE:  VMOV            S2, R0
5CBCF2:  VADD.F32        S8, S4, S0
5CBCF6:  IT EQ
5CBCF8:  ADDEQ           R2, #4
5CBCFA:  VMOV            S0, R5
5CBCFE:  VLDR            S6, [R2]
5CBD02:  VCMPE.F32       S0, S8
5CBD06:  VMRS            APSR_nzcv, FPSCR
5CBD0A:  BLE.W           loc_5CBE18
5CBD0E:  VLDR            S8, =-6.2832
5CBD12:  B               loc_5CBE2E
5CBD14:  ADD.W           R1, R8, #0x960
5CBD18:  VLDR            S0, [R1]
5CBD1C:  B               loc_5CBEB4
5CBD1E:  VLDR            S2, [R8,#0x10]
5CBD22:  VLDR            S4, =3.1416
5CBD26:  VADD.F32        S0, S2, S4
5CBD2A:  VCMPE.F32       S16, S0
5CBD2E:  VMRS            APSR_nzcv, FPSCR
5CBD32:  BLE             loc_5CBD3A
5CBD34:  VLDR            S0, =-6.2832
5CBD38:  B               loc_5CBD50
5CBD3A:  VLDR            S0, =-3.1416
5CBD3E:  VADD.F32        S0, S2, S0
5CBD42:  VCMPE.F32       S16, S0
5CBD46:  VMRS            APSR_nzcv, FPSCR
5CBD4A:  BGE             loc_5CBD54
5CBD4C:  VLDR            S0, =6.2832
5CBD50:  VADD.F32        S16, S16, S0
5CBD54:  ADD.W           R0, R8, #0x960
5CBD58:  VSUB.F32        S2, S16, S2
5CBD5C:  VLDR            S0, [R0]
5CBD60:  VADD.F32        S4, S0, S4
5CBD64:  VCMPE.F32       S2, S4
5CBD68:  VMRS            APSR_nzcv, FPSCR
5CBD6C:  BLE             loc_5CBD74
5CBD6E:  VLDR            S4, =-6.2832
5CBD72:  B               loc_5CBD8A
5CBD74:  VLDR            S4, =-3.1416
5CBD78:  VADD.F32        S4, S0, S4
5CBD7C:  VCMPE.F32       S2, S4
5CBD80:  VMRS            APSR_nzcv, FPSCR
5CBD84:  BGE             loc_5CBD8E
5CBD86:  VLDR            S4, =6.2832
5CBD8A:  VADD.F32        S2, S2, S4
5CBD8E:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5CBD9E)
5CBD92:  VSUB.F32        S4, S2, S0
5CBD96:  VLDR            S6, =0.01
5CBD9A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5CBD9C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5CBD9E:  VLDR            S8, [R1]
5CBDA2:  VABS.F32        S10, S4
5CBDA6:  VMUL.F32        S6, S8, S6
5CBDAA:  VCMPE.F32       S10, S6
5CBDAE:  VMRS            APSR_nzcv, FPSCR
5CBDB2:  BLT             loc_5CBDCA
5CBDB4:  VCMPE.F32       S4, #0.0
5CBDB8:  VMRS            APSR_nzcv, FPSCR
5CBDBC:  VNEG.F32        S2, S6
5CBDC0:  IT GT
5CBDC2:  VMOVGT.F32      S2, S6
5CBDC6:  VADD.F32        S2, S0, S2
5CBDCA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5CBDD4)
5CBDCC:  VSTR            S2, [R0]
5CBDD0:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5CBDD2:  VLDR            S2, =6.28
5CBDD6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
5CBDD8:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds
5CBDDA:  BFC.W           R0, #0xC, #0x14
5CBDDE:  VMOV            S0, R0
5CBDE2:  VCVT.F32.U32    S0, S0
5CBDE6:  VMUL.F32        S0, S0, S2
5CBDEA:  VLDR            S2, =0.00024414
5CBDEE:  VMUL.F32        S0, S0, S2
5CBDF2:  VMOV            R0, S0; x
5CBDF6:  BLX.W           sinf
5CBDFA:  VMOV            S2, R0
5CBDFE:  VLDR            S0, =0.15
5CBE02:  ADDW            R0, R8, #0x964
5CBE06:  VMUL.F32        S0, S2, S0
5CBE0A:  VLDR            S2, =0.0
5CBE0E:  VADD.F32        S0, S0, S2
5CBE12:  VSTR            S0, [R0]
5CBE16:  B               loc_5CBF3C
5CBE18:  VLDR            S8, =-3.1416
5CBE1C:  VADD.F32        S8, S4, S8
5CBE20:  VCMPE.F32       S0, S8
5CBE24:  VMRS            APSR_nzcv, FPSCR
5CBE28:  BGE             loc_5CBE32
5CBE2A:  VLDR            S8, =6.2832
5CBE2E:  VADD.F32        S0, S0, S8
5CBE32:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5CBE44)
5CBE34:  VADD.F32        S2, S2, S6
5CBE38:  VLDR            S8, =0.05
5CBE3C:  VSUB.F32        S10, S0, S4
5CBE40:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5CBE42:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5CBE44:  VLDR            S6, [R0]
5CBE48:  VMUL.F32        S8, S6, S8
5CBE4C:  VCMPE.F32       S10, S8
5CBE50:  VMRS            APSR_nzcv, FPSCR
5CBE54:  BLE             loc_5CBE5C
5CBE56:  VADD.F32        S0, S4, S8
5CBE5A:  B               loc_5CBE72
5CBE5C:  VLDR            S12, =-0.05
5CBE60:  VMUL.F32        S12, S6, S12
5CBE64:  VCMPE.F32       S10, S12
5CBE68:  VMRS            APSR_nzcv, FPSCR
5CBE6C:  IT LT
5CBE6E:  VSUBLT.F32      S0, S4, S8
5CBE72:  ADDW            R0, R8, #0x964
5CBE76:  VSTR            S0, [R1]
5CBE7A:  VLDR            S8, =0.02
5CBE7E:  VLDR            S4, [R0]
5CBE82:  VMUL.F32        S8, S6, S8
5CBE86:  VSUB.F32        S10, S2, S4
5CBE8A:  VCMPE.F32       S10, S8
5CBE8E:  VMRS            APSR_nzcv, FPSCR
5CBE92:  BLE             loc_5CBE9A
5CBE94:  VADD.F32        S2, S4, S8
5CBE98:  B               loc_5CBEB0
5CBE9A:  VLDR            S12, =-0.02
5CBE9E:  VMUL.F32        S6, S6, S12
5CBEA2:  VCMPE.F32       S10, S6
5CBEA6:  VMRS            APSR_nzcv, FPSCR
5CBEAA:  IT LT
5CBEAC:  VSUBLT.F32      S2, S4, S8
5CBEB0:  VSTR            S2, [R0]
5CBEB4:  VLDR            S2, =-3.1416
5CBEB8:  VCMPE.F32       S0, S2
5CBEBC:  VMRS            APSR_nzcv, FPSCR
5CBEC0:  BGE             loc_5CBEC8
5CBEC2:  VLDR            S2, =6.2832
5CBEC6:  B               loc_5CBEDA
5CBEC8:  VLDR            S2, =3.1416
5CBECC:  VCMPE.F32       S0, S2
5CBED0:  VMRS            APSR_nzcv, FPSCR
5CBED4:  BLE             loc_5CBEE2
5CBED6:  VLDR            S2, =-6.2832
5CBEDA:  VADD.F32        S0, S0, S2
5CBEDE:  VSTR            S0, [R1]
5CBEE2:  LDRH.W          R3, [R8,#0x26]
5CBEE6:  MOVW            R6, #0x259
5CBEEA:  ADR             R2, dword_5CC1A0
5CBEEC:  ADDW            R0, R8, #0x964
5CBEF0:  CMP             R3, R6
5CBEF2:  ADR             R1, dword_5CC1A8
5CBEF4:  IT EQ
5CBEF6:  ADDEQ           R2, #4
5CBEF8:  VLDR            S2, [R0]
5CBEFC:  VLDR            S0, [R2]
5CBF00:  CMP             R3, R6
5CBF02:  IT EQ
5CBF04:  ADDEQ           R1, #4; int
5CBF06:  VCMPE.F32       S2, S0
5CBF0A:  VMRS            APSR_nzcv, FPSCR
5CBF0E:  BGE             loc_5CBF16
5CBF10:  VSTR            S0, [R0]
5CBF14:  B               loc_5CBF28
5CBF16:  VLDR            S0, [R1]
5CBF1A:  VCMPE.F32       S2, S0
5CBF1E:  VMRS            APSR_nzcv, FPSCR
5CBF22:  IT GT
5CBF24:  VSTRGT          S0, [R0]
5CBF28:  MOVS            R0, #0; this
5CBF2A:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5CBF2E:  MOVS            R1, #1; bool
5CBF30:  MOVS            R2, #0; bool
5CBF32:  BLX.W           j__ZN4CPad14GetCarGunFiredEbb; CPad::GetCarGunFired(bool,bool)
5CBF36:  CMP             R0, #0
5CBF38:  BEQ.W           loc_5CC144
5CBF3C:  LDR.W           R0, [R8,#0x6AC]
5CBF40:  CBZ             R0, loc_5CBF60
5CBF42:  BLX.W           j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5CBF46:  VLDR            D16, [R0,#0x30]
5CBF4A:  LDR             R0, [R0,#0x38]
5CBF4C:  B               loc_5CBF86
5CBF4E:  ALIGN 0x10
5CBF50:  DCFS 3.1416
5CBF54:  DCFS -6.2832
5CBF58:  DCFS -3.1416
5CBF5C:  DCFS 6.2832
5CBF60:  MOVW            R0, #0x6666
5CBF64:  ADD             R2, SP, #0x90+var_58
5CBF66:  MOVT            R0, #0x3FE6
5CBF6A:  STR             R0, [SP,#0x90+y]
5CBF6C:  MOV.W           R0, #0x3FC00000
5CBF70:  STR             R0, [SP,#0x90+var_58+4]
5CBF72:  MOVS            R0, #0
5CBF74:  STR             R0, [SP,#0x90+var_58]
5CBF76:  ADD             R0, SP, #0x90+var_78
5CBF78:  LDR.W           R1, [R8,#0x14]
5CBF7C:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5CBF80:  LDR             R0, [SP,#0x90+var_70]
5CBF82:  VLDR            D16, [SP,#0x90+var_78]
5CBF86:  STR             R0, [SP,#0x90+var_60]
5CBF88:  VSTR            D16, [SP,#0x90+var_68]
5CBF8C:  LDR.W           R5, [R8,#0x960]
5CBF90:  LDR.W           R6, [R8,#0x964]
5CBF94:  MOV             R0, R5; x
5CBF96:  BLX.W           sinf
5CBF9A:  MOV             R9, R0
5CBF9C:  MOV             R0, R6; x
5CBF9E:  BLX.W           cosf
5CBFA2:  MOV             R4, R0
5CBFA4:  MOV             R0, R5; x
5CBFA6:  BLX.W           cosf
5CBFAA:  VMOV            S0, R0
5CBFAE:  MOV             R0, R6; x
5CBFB0:  VMOV            S2, R4
5CBFB4:  VMOV            S4, R9
5CBFB8:  VMUL.F32        S16, S2, S0
5CBFBC:  VNMUL.F32       S18, S4, S2
5CBFC0:  BLX.W           sinf
5CBFC4:  STR             R0, [SP,#0x90+y]
5CBFC6:  ADD             R0, SP, #0x90+var_88; CMatrix *
5CBFC8:  VSTR            S16, [SP,#0x90+var_58+4]
5CBFCC:  ADD             R2, SP, #0x90+var_58
5CBFCE:  VSTR            S18, [SP,#0x90+var_58]
5CBFD2:  LDR.W           R1, [R8,#0x14]; CVector *
5CBFD6:  BLX.W           j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5CBFDA:  VLDR            D16, [SP,#0x90+var_88]
5CBFDE:  LDR             R0, [SP,#0x90+var_80]
5CBFE0:  STR             R0, [SP,#0x90+var_70]
5CBFE2:  VSTR            D16, [SP,#0x90+var_78]
5CBFE6:  LDR.W           R0, [R8,#0x6AC]
5CBFEA:  CMP             R0, #0
5CBFEC:  BEQ             loc_5CC0C2
5CBFEE:  VMOV.F32        S2, #2.0
5CBFF2:  LDRH.W          R0, [R8,#0x26]
5CBFF6:  MOVW            R1, #0x259
5CBFFA:  VLDR            S0, =1.2
5CBFFE:  CMP             R0, R1
5CC000:  MOV             R1, R8
5CC002:  IT EQ
5CC004:  VMOVEQ.F32      S0, S2
5CC008:  VLDR            S16, [SP,#0x90+var_78]
5CC00C:  VLDR            S18, [SP,#0x90+var_78+4]
5CC010:  VMUL.F32        S2, S16, S0
5CC014:  VLDR            S6, [SP,#0x90+var_68]
5CC018:  VMUL.F32        S4, S18, S0
5CC01C:  VLDR            S8, [SP,#0x90+var_68+4]
5CC020:  LDR.W           R0, [R8,#0x14]
5CC024:  VLDR            S20, [SP,#0x90+var_70]
5CC028:  CMP             R0, #0
5CC02A:  VLDR            S10, [SP,#0x90+var_60]
5CC02E:  IT NE
5CC030:  ADDNE.W         R10, R0, #0x30 ; '0'
5CC034:  VMUL.F32        S0, S0, S20
5CC038:  ADD             R0, SP, #0x90+var_88
5CC03A:  VADD.F32        S22, S2, S6
5CC03E:  VLDR            S2, [R10]
5CC042:  VADD.F32        S24, S4, S8
5CC046:  VLDR            S4, [R10,#4]
5CC04A:  VLDR            S6, [R10,#8]
5CC04E:  VADD.F32        S26, S0, S10
5CC052:  VSUB.F32        S2, S22, S2
5CC056:  VSUB.F32        S4, S24, S4
5CC05A:  VSUB.F32        S0, S26, S6
5CC05E:  VMOV            R2, S2
5CC062:  VSTR            S2, [SP,#0x90+var_58]
5CC066:  VMOV            R3, S4
5CC06A:  VSTR            S4, [SP,#0x90+var_58+4]
5CC06E:  VSTR            S0, [SP,#0x90+y]
5CC072:  VSTR            S0, [SP,#0x90+var_90]
5CC076:  BLX.W           j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
5CC07A:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5CC084)
5CC07C:  VLDR            D16, [SP,#0x90+var_88]
5CC080:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5CC082:  LDR             R1, [SP,#0x90+var_80]
5CC084:  STR             R1, [SP,#0x90+y]
5CC086:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5CC088:  VSTR            D16, [SP,#0x90+var_58]
5CC08C:  VLDR            S0, [SP,#0x90+var_58]
5CC090:  VLDR            S6, [R0]
5CC094:  VLDR            S2, [SP,#0x90+var_58+4]
5CC098:  VLDR            S4, [SP,#0x90+y]
5CC09C:  VMUL.F32        S0, S6, S0
5CC0A0:  VMUL.F32        S2, S6, S2
5CC0A4:  VMUL.F32        S4, S6, S4
5CC0A8:  VADD.F32        S0, S0, S22
5CC0AC:  VADD.F32        S2, S2, S24
5CC0B0:  VADD.F32        S4, S4, S26
5CC0B4:  VSTR            S0, [SP,#0x90+var_68]
5CC0B8:  VSTR            S2, [SP,#0x90+var_68+4]
5CC0BC:  VSTR            S4, [SP,#0x90+var_60]
5CC0C0:  B               loc_5CC0CE
5CC0C2:  VLDR            S16, [SP,#0x90+var_78]
5CC0C6:  VLDR            S18, [SP,#0x90+var_78+4]
5CC0CA:  VLDR            S20, [SP,#0x90+var_70]
5CC0CE:  BLX.W           rand
5CC0D2:  AND.W           R0, R0, #0xF
5CC0D6:  VLDR            S4, =0.001
5CC0DA:  VMOV.F32        S2, #0.5
5CC0DE:  MOVW            R1, #0x259
5CC0E2:  VMOV            S0, R0
5CC0E6:  ADD             R2, SP, #0x90+var_78; CVector *
5CC0E8:  VCVT.F32.S32    S0, S0
5CC0EC:  LDRH.W          R0, [R8,#0x26]
5CC0F0:  CMP             R0, R1
5CC0F2:  ADD             R1, SP, #0x90+var_68; unsigned int
5CC0F4:  MOV             R0, R8; this
5CC0F6:  VMUL.F32        S0, S0, S4
5CC0FA:  VLDR            S4, =0.4
5CC0FE:  IT EQ
5CC100:  VMOVEQ.F32      S2, S4
5CC104:  VLDR            S4, =0.3
5CC108:  VLDR            S10, [R8,#0x50]
5CC10C:  VMUL.F32        S12, S2, S18
5CC110:  VMUL.F32        S14, S16, S2
5CC114:  VLDR            S6, [R8,#0x48]
5CC118:  VMUL.F32        S4, S10, S4
5CC11C:  VLDR            S8, [R8,#0x4C]
5CC120:  VADD.F32        S0, S20, S0
5CC124:  VADD.F32        S6, S6, S14
5CC128:  VMUL.F32        S0, S2, S0
5CC12C:  VADD.F32        S2, S8, S12
5CC130:  VADD.F32        S0, S4, S0
5CC134:  VSTR            S2, [SP,#0x90+var_78+4]
5CC138:  VSTR            S6, [SP,#0x90+var_78]
5CC13C:  VSTR            S0, [SP,#0x90+var_70]
5CC140:  BLX.W           j__ZN13CWaterCannons9UpdateOneEjP7CVectorS1_; CWaterCannons::UpdateOne(uint,CVector *,CVector *)
5CC144:  ADD             SP, SP, #0x48 ; 'H'
5CC146:  VPOP            {D8-D13}
5CC14A:  POP.W           {R8-R10}
5CC14E:  POP             {R4-R7,PC}
