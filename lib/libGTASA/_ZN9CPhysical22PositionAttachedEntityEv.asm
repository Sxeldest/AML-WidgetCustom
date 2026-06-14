; =========================================================
; Game Engine Function: _ZN9CPhysical22PositionAttachedEntityEv
; Address            : 0x406D8C - 0x4077DA
; =========================================================

406D8C:  PUSH            {R4-R7,LR}
406D8E:  ADD             R7, SP, #0xC
406D90:  PUSH.W          {R8,R9,R11}
406D94:  VPUSH           {D8-D14}
406D98:  SUB             SP, SP, #0x170
406D9A:  MOV             R9, R0
406D9C:  LDR.W           R5, [R9,#0x100]
406DA0:  CMP             R5, #0
406DA2:  BEQ.W           loc_4077CE
406DA6:  MOVS            R0, #0
406DA8:  ADD.W           R8, R9, #0x100
406DAC:  STRD.W          R0, R0, [SP,#0x1C0+var_A0]
406DB0:  STRD.W          R0, R0, [SP,#0x1C0+var_E8]
406DB4:  LDR             R1, [R5,#0x14]
406DB6:  CBNZ            R1, loc_406DC8
406DB8:  MOV             R0, R5; this
406DBA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
406DBE:  LDR             R1, [R5,#0x14]; CMatrix *
406DC0:  ADDS            R0, R5, #4; this
406DC2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
406DC6:  LDR             R1, [R5,#0x14]; CMatrix *
406DC8:  ADD             R0, SP, #0x1C0+var_170; this
406DCA:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
406DCE:  LDR.W           R0, [R8]; this
406DD2:  LDRB.W          R1, [R0,#0x3A]
406DD6:  AND.W           R1, R1, #7
406DDA:  CMP             R1, #2
406DDC:  ITT EQ
406DDE:  LDREQ.W         R1, [R0,#0x5A0]
406DE2:  CMPEQ           R1, #9
406DE4:  BEQ             loc_406E10
406DE6:  LDRB.W          R1, [R9,#0x3A]
406DEA:  AND.W           R1, R1, #7
406DEE:  CMP             R1, #4
406DF0:  BNE             loc_406E22
406DF2:  LDRH            R1, [R0,#0x26]
406DF4:  MOVW            R2, #0x212
406DF8:  CMP             R1, R2
406DFA:  BNE             loc_406E22
406DFC:  LDR.W           R0, [R0,#0x6AC]
406E00:  CBZ             R0, loc_406E22
406E02:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
406E06:  MOV             R1, R0
406E08:  ADD             R0, SP, #0x1C0+var_170
406E0A:  BLX             j__ZN7CMatrix12UpdateMatrixEP11RwMatrixTag; CMatrix::UpdateMatrix(RwMatrixTag *)
406E0E:  B               loc_406E22
406E10:  BLX             j__ZN5CBike19CalculateLeanMatrixEv; CBike::CalculateLeanMatrix(void)
406E14:  LDR.W           R0, [R8]
406E18:  ADD.W           R1, R0, #0x5E0
406E1C:  ADD             R0, SP, #0x1C0+var_170
406E1E:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
406E22:  VLDR            S0, [R9,#0x120]
406E26:  MOVS            R1, #0
406E28:  VLDR            S2, [R9,#0x11C]
406E2C:  MOVS            R2, #0
406E2E:  VCMP.F32        S0, #0.0
406E32:  MOVS            R0, #0
406E34:  VMRS            APSR_nzcv, FPSCR
406E38:  VCMP.F32        S2, #0.0
406E3C:  IT NE
406E3E:  MOVNE           R1, #1
406E40:  VMRS            APSR_nzcv, FPSCR
406E44:  IT NE
406E46:  MOVNE           R2, #1
406E48:  ORRS            R1, R2
406E4A:  BNE             loc_406E5C
406E4C:  VLDR            S4, [R9,#0x124]
406E50:  VCMP.F32        S4, #0.0
406E54:  VMRS            APSR_nzcv, FPSCR
406E58:  BEQ.W           loc_4072B2
406E5C:  VMUL.F32        S4, S0, S0
406E60:  VLDR            S8, [R9,#0x124]
406E64:  VMUL.F32        S6, S2, S2
406E68:  VLDR            S10, [R9,#0x128]
406E6C:  VMUL.F32        S12, S8, S8
406E70:  ADD             R5, SP, #0x1C0+var_E0
406E72:  STR             R0, [SP,#0x1C0+var_17C]
406E74:  ADD             R1, SP, #0x1C0+var_1B0
406E76:  STR             R0, [SP,#0x1C0+var_180]
406E78:  VADD.F32        S4, S6, S4
406E7C:  VMUL.F32        S6, S10, S10
406E80:  VADD.F32        S4, S4, S12
406E84:  VMOV.F32        S12, #2.0
406E88:  VADD.F32        S4, S6, S4
406E8C:  VDIV.F32        S4, S12, S4
406E90:  VMUL.F32        S6, S8, S4
406E94:  VMUL.F32        S12, S0, S4
406E98:  VMUL.F32        S4, S2, S4
406E9C:  VMUL.F32        S14, S8, S6
406EA0:  VMUL.F32        S1, S0, S12
406EA4:  VMUL.F32        S5, S2, S12
406EA8:  VMUL.F32        S2, S2, S4
406EAC:  VMUL.F32        S3, S10, S6
406EB0:  VMUL.F32        S8, S8, S4
406EB4:  VMUL.F32        S12, S10, S12
406EB8:  VMUL.F32        S4, S10, S4
406EBC:  VMUL.F32        S0, S0, S6
406EC0:  VADD.F32        S10, S1, S14
406EC4:  VMOV.F32        S6, #1.0
406EC8:  VADD.F32        S14, S14, S2
406ECC:  VADD.F32        S2, S2, S1
406ED0:  VADD.F32        S7, S5, S3
406ED4:  VSUB.F32        S1, S5, S3
406ED8:  VADD.F32        S3, S0, S4
406EDC:  VSUB.F32        S0, S0, S4
406EE0:  VSUB.F32        S9, S8, S12
406EE4:  VADD.F32        S4, S8, S12
406EE8:  VSUB.F32        S8, S6, S10
406EEC:  VSUB.F32        S10, S6, S14
406EF0:  VSTR            S7, [SP,#0x1C0+var_1AC]
406EF4:  VSUB.F32        S2, S6, S2
406EF8:  VSTR            S9, [SP,#0x1C0+var_1A8]
406EFC:  VSTR            S1, [SP,#0x1C0+var_1A0]
406F00:  VSTR            S3, [SP,#0x1C0+var_198]
406F04:  VSTR            S0, [SP,#0x1C0+var_18C]
406F08:  VSTR            S4, [SP,#0x1C0+var_190]
406F0C:  VSTR            S8, [SP,#0x1C0+var_1B0]
406F10:  STR             R0, [SP,#0x1C0+var_178]
406F12:  MOVS            R0, #2
406F14:  VSTR            S10, [SP,#0x1C0+var_19C]
406F18:  VSTR            S2, [SP,#0x1C0+var_188]
406F1C:  STR             R0, [SP,#0x1C0+var_1A4]
406F1E:  MOV             R0, R5
406F20:  BLX             j__ZN7CMatrix12UpdateMatrixEP11RwMatrixTag; CMatrix::UpdateMatrix(RwMatrixTag *)
406F24:  ADD             R6, SP, #0x1C0+var_98
406F26:  ADD             R4, SP, #0x1C0+var_170
406F28:  MOV             R2, R5
406F2A:  MOV             R0, R6
406F2C:  MOV             R1, R4
406F2E:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
406F32:  MOV             R0, R5
406F34:  MOV             R1, R6
406F36:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
406F3A:  MOV             R0, R6; this
406F3C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
406F40:  ADD.W           R2, R9, #0x104
406F44:  ADD             R0, SP, #0x1C0+var_98
406F46:  MOV             R1, R4
406F48:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
406F4C:  ADD             R3, SP, #0x1C0+var_98
406F4E:  MOV             R0, R5; this
406F50:  LDM             R3, {R1-R3}; float
406F52:  BLX             j__ZN7CMatrix16SetTranslateOnlyEfff; CMatrix::SetTranslateOnly(float,float,float)
406F56:  ADD             R1, SP, #0x1C0+var_E0; CMatrix *
406F58:  MOV             R0, R9; this
406F5A:  ADD.W           R4, R9, #0x11C
406F5E:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
406F62:  LDRB.W          R0, [R9,#0x3A]
406F66:  AND.W           R0, R0, #7
406F6A:  CMP             R0, #4
406F6C:  BNE             loc_406F96
406F6E:  LDR.W           R0, [R9,#0x1C]
406F72:  TST.W           R0, #0x40004
406F76:  BEQ             loc_406F84
406F78:  LDR.W           R0, [R9]
406F7C:  MOVS            R1, #0
406F7E:  LDR             R2, [R0,#0x14]
406F80:  MOV             R0, R9
406F82:  BLX             R2
406F84:  LDR.W           R0, [R9,#0x44]
406F88:  MOVS            R1, #0
406F8A:  STRB.W          R1, [R9,#0xBC]
406F8E:  ORR.W           R0, R0, #0x2000000
406F92:  STR.W           R0, [R9,#0x44]
406F96:  LDR.W           R5, [R8]
406F9A:  LDRB.W          R0, [R5,#0x3A]
406F9E:  AND.W           R0, R0, #7
406FA2:  CMP             R0, #2
406FA4:  BNE             loc_406FFC
406FA6:  LDRB.W          R1, [R9,#0x3A]
406FAA:  AND.W           R1, R1, #7
406FAE:  CMP             R1, #4
406FB0:  IT NE
406FB2:  CMPNE           R1, #2
406FB4:  BNE             loc_406FFC
406FB6:  LDRSH.W         R0, [R5,#0x26]
406FBA:  MOVW            R2, #0x212
406FBE:  CMP             R0, R2
406FC0:  IT NE
406FC2:  CMPNE.W         R0, #0x196
406FC6:  BNE.W           loc_407344
406FCA:  CMP             R0, R2
406FCC:  BEQ.W           loc_4073FC
406FD0:  CMP.W           R0, #0x196
406FD4:  BNE.W           loc_407434
406FD8:  LDRH.W          R0, [R5,#0x880]
406FDC:  CMP             R0, #0
406FDE:  ITT NE
406FE0:  LDRHNE.W        R1, [R5,#0x882]
406FE4:  CMPNE           R0, R1
406FE6:  BNE.W           loc_407596
406FEA:  VLDR            S0, [R9,#0xDC]
406FEE:  VCMPE.F32       S0, #0.0
406FF2:  VMRS            APSR_nzcv, FPSCR
406FF6:  BGT.W           loc_407420
406FFA:  B               loc_407434
406FFC:  LDRH.W          R1, [R9,#0x26]
407000:  MOVW            R2, #0x16B
407004:  CMP             R1, R2
407006:  BNE             loc_407016
407008:  CMP             R0, #4
40700A:  ITT EQ
40700C:  LDRBEQ          R0, [R5,#0x1C]
40700E:  MOVSEQ.W        R0, R0,LSL#31
407012:  BEQ.W           loc_407260
407016:  LDRB.W          R0, [R9,#0x44]
40701A:  LSLS            R0, R0, #0x19
40701C:  BMI             loc_4070A8
40701E:  LDR.W           R1, [R8]
407022:  LDRB.W          R0, [R1,#0x3A]
407026:  AND.W           R0, R0, #7
40702A:  CMP             R0, #4
40702C:  IT NE
40702E:  CMPNE           R0, #2
407030:  BNE.W           loc_4077BC
407034:  LDR             R0, [R1,#0x14]
407036:  LDR.W           R2, [R9,#0x14]
40703A:  ADD.W           R3, R0, #0x30 ; '0'
40703E:  CMP             R0, #0
407040:  IT EQ
407042:  ADDEQ           R3, R1, #4
407044:  ADD.W           R0, R2, #0x30 ; '0'
407048:  CMP             R2, #0
40704A:  VLDR            S0, [R3]
40704E:  VLDR            S2, [R3,#4]
407052:  VLDR            S4, [R3,#8]
407056:  IT EQ
407058:  ADDEQ.W         R0, R9, #4
40705C:  VLDR            S6, [R0]
407060:  VLDR            S8, [R0,#4]
407064:  VSUB.F32        S0, S6, S0
407068:  VLDR            S10, [R0,#8]
40706C:  VSUB.F32        S2, S8, S2
407070:  ADD             R0, SP, #0x1C0+var_98
407072:  VMOV            R2, S0
407076:  VMOV            R3, S2
40707A:  VSUB.F32        S0, S10, S4
40707E:  VSTR            S0, [SP,#0x1C0+var_1C0]
407082:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
407086:  VLDR            D16, [SP,#0x1C0+var_98]
40708A:  LDR             R0, [SP,#0x1C0+var_90]
40708C:  STR.W           R0, [R9,#0x50]
407090:  VSTR            D16, [R9,#0x48]
407094:  LDR.W           R0, [R9,#0x100]
407098:  VLDR            D16, [R0,#0x54]
40709C:  LDR             R0, [R0,#0x5C]
40709E:  STR.W           R0, [R9,#0x5C]
4070A2:  VSTR            D16, [R9,#0x54]
4070A6:  B               loc_4077BC
4070A8:  LDR.W           R1, [R9,#0x14]; CVector *
4070AC:  ADD.W           R4, R9, #4
4070B0:  VLDR            S2, [R9,#0x110]
4070B4:  CMP             R1, #0
4070B6:  MOV             R0, R4
4070B8:  VLDR            S0, [R9,#0x114]
4070BC:  VLDR            S4, [R9,#0x118]
4070C0:  IT NE
4070C2:  ADDNE.W         R0, R1, #0x30 ; '0'
4070C6:  VLDR            S6, [R0]
4070CA:  VLDR            S8, [R0,#4]
4070CE:  VSUB.F32        S2, S6, S2
4070D2:  VLDR            S10, [R0,#8]
4070D6:  VSUB.F32        S0, S8, S0
4070DA:  VLDR            D16, [R0]
4070DE:  VSUB.F32        S4, S10, S4
4070E2:  LDR             R0, [R0,#8]
4070E4:  STR.W           R0, [R9,#0x118]
4070E8:  VSTR            D16, [R9,#0x110]
4070EC:  VMUL.F32        S8, S2, S2
4070F0:  VMUL.F32        S6, S0, S0
4070F4:  VMUL.F32        S10, S4, S4
4070F8:  VADD.F32        S6, S8, S6
4070FC:  VMOV.F32        S8, #4.0
407100:  VADD.F32        S6, S6, S10
407104:  VCMPE.F32       S6, S8
407108:  VMRS            APSR_nzcv, FPSCR
40710C:  BLE             loc_407126
40710E:  VSQRT.F32       S6, S6
407112:  VMOV.F32        S8, #2.0
407116:  VDIV.F32        S6, S8, S6
40711A:  VMUL.F32        S4, S4, S6
40711E:  VMUL.F32        S0, S0, S6
407122:  VMUL.F32        S2, S2, S6
407126:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x40713A)
40712A:  VMOV.F32        S6, #1.0
40712E:  ADD.W           R2, R9, #0xA8
407132:  VLDR            S22, [R9,#0x48]
407136:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
407138:  VLDR            S24, [R9,#0x4C]
40713C:  VLDR            S26, [R9,#0x50]
407140:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
407142:  VLDR            S28, [R9,#0x90]
407146:  VLDR            S8, [R0]
40714A:  ADD             R0, SP, #0x1C0+var_98; CMatrix *
40714C:  VMAX.F32        D4, D4, D3
407150:  VDIV.F32        S6, S6, S8
407154:  VMUL.F32        S16, S2, S6
407158:  VMUL.F32        S18, S4, S6
40715C:  VMUL.F32        S20, S0, S6
407160:  VSTR            S16, [R9,#0x48]
407164:  VSTR            S20, [R9,#0x4C]
407168:  VSTR            S18, [R9,#0x50]
40716C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
407170:  VSUB.F32        S0, S16, S22
407174:  ADD             R2, SP, #0x1C0+var_98
407176:  VSUB.F32        S2, S20, S24
40717A:  MOVS            R3, #1
40717C:  VSUB.F32        S4, S18, S26
407180:  LDM             R2, {R0-R2}
407182:  STMEA.W         SP, {R0-R3}
407186:  MOV             R0, R9
407188:  VNMUL.F32       S0, S28, S0
40718C:  VNMUL.F32       S2, S28, S2
407190:  VNMUL.F32       S4, S28, S4
407194:  VMOV            R8, S0
407198:  VMOV            R6, S2
40719C:  VMOV            R5, S4
4071A0:  MOV             R1, R8
4071A2:  MOV             R2, R6
4071A4:  MOV             R3, R5
4071A6:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
4071AA:  LDR.W           R0, [R9,#0x100]
4071AE:  LDRB.W          R1, [R0,#0x3A]
4071B2:  AND.W           R1, R1, #7
4071B6:  CMP             R1, #4
4071B8:  IT NE
4071BA:  CMPNE           R1, #2
4071BC:  BNE.W           loc_4077BC
4071C0:  LDRB            R1, [R0,#0x1C]
4071C2:  LSLS            R1, R1, #0x1F
4071C4:  BEQ             loc_407246
4071C6:  LDRB.W          R1, [R0,#0x44]
4071CA:  LSLS            R1, R1, #0x1D
4071CC:  BMI             loc_407246
4071CE:  LDR.W           R1, [R9,#0x14]
4071D2:  EOR.W           R3, R5, #0x80000000
4071D6:  VLDR            S0, [SP,#0x1C0+var_98]
4071DA:  CMP             R1, #0
4071DC:  VLDR            S2, [SP,#0x1C0+var_98+4]
4071E0:  VLDR            S4, [SP,#0x1C0+var_90]
4071E4:  IT NE
4071E6:  ADDNE.W         R4, R1, #0x30 ; '0'
4071EA:  VLDR            S6, [R4]
4071EE:  VLDR            S8, [R4,#4]
4071F2:  VLDR            S10, [R4,#8]
4071F6:  VADD.F32        S0, S0, S6
4071FA:  VADD.F32        S2, S2, S8
4071FE:  LDR             R1, [R0,#0x14]
407200:  VADD.F32        S4, S4, S10
407204:  ADD.W           R2, R1, #0x30 ; '0'
407208:  CMP             R1, #0
40720A:  IT EQ
40720C:  ADDEQ           R2, R0, #4
40720E:  MOVS            R1, #1
407210:  VLDR            S6, [R2]
407214:  VLDR            S8, [R2,#4]
407218:  VLDR            S10, [R2,#8]
40721C:  VSUB.F32        S0, S0, S6
407220:  VSUB.F32        S2, S2, S8
407224:  STR             R1, [SP,#0x1C0+var_1B4]
407226:  VSUB.F32        S4, S4, S10
40722A:  EOR.W           R1, R8, #0x80000000
40722E:  EOR.W           R2, R6, #0x80000000
407232:  VSTR            S0, [SP,#0x1C0+var_1C0]
407236:  VSTR            S2, [SP,#0x1C0+var_1BC]
40723A:  VSTR            S4, [SP,#0x1C0+var_1B8]
40723E:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
407242:  LDR.W           R0, [R9,#0x100]
407246:  LDR             R1, [R0,#0x14]
407248:  CMP             R1, #0
40724A:  BEQ.W           loc_4074FC
40724E:  LDRD.W          R0, R1, [R1,#0x10]; x
407252:  EOR.W           R0, R0, #0x80000000; y
407256:  BLX             atan2f
40725A:  VMOV            S16, R0
40725E:  B               loc_407500
407260:  LDR.W           R0, [R9]
407264:  MOVS            R1, #0
407266:  MOVS            R5, #0
407268:  LDR             R2, [R0,#0x14]
40726A:  MOV             R0, R9
40726C:  BLX             R2
40726E:  LDR.W           R1, [R9,#0x44]
407272:  STRB.W          R5, [R9,#0xBC]
407276:  BIC.W           R0, R1, #0x2000000
40727A:  TST.W           R1, #4
40727E:  STR.W           R0, [R9,#0x44]
407282:  BNE             loc_4072F4
407284:  LDR.W           R0, [R8]
407288:  LDRB.W          R1, [R0,#0x3A]
40728C:  AND.W           R1, R1, #7
407290:  CMP             R1, #2
407292:  BNE             loc_407310
407294:  VLDR            D16, [R0,#0x48]
407298:  LDR             R1, [R0,#0x50]
40729A:  STR.W           R1, [R9,#0x50]
40729E:  VSTR            D16, [R9,#0x48]
4072A2:  VLDR            D16, [R0,#0x54]
4072A6:  LDR             R0, [R0,#0x5C]
4072A8:  STR.W           R0, [R9,#0x5C]
4072AC:  VSTR            D16, [R9,#0x54]
4072B0:  B               loc_407310
4072B2:  LDRB.W          R0, [R9,#0x44]
4072B6:  LSLS            R0, R0, #0x19
4072B8:  BMI             loc_4073B4
4072BA:  ADD             R4, SP, #0x1C0+var_128
4072BC:  MOV             R0, R4; this
4072BE:  BLX             j__ZN7CMatrix16ResetOrientationEv; CMatrix::ResetOrientation(void)
4072C2:  ADD.W           R3, R9, #0x110
4072C6:  MOV             R0, R4; this
4072C8:  LDM             R3, {R1-R3}; float
4072CA:  BLX             j__ZN7CMatrix6RotateEfff; CMatrix::Rotate(float,float,float)
4072CE:  ADD             R5, SP, #0x1C0+var_E0
4072D0:  ADD             R1, SP, #0x1C0+var_170
4072D2:  MOV             R0, R5
4072D4:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
4072D8:  ADD             R6, SP, #0x1C0+var_98
4072DA:  MOV             R1, R5
4072DC:  MOV             R2, R4
4072DE:  MOV             R0, R6
4072E0:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
4072E4:  MOV             R0, R5
4072E6:  MOV             R1, R6
4072E8:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
4072EC:  MOV             R0, R6; this
4072EE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4072F2:  B               loc_4073BE
4072F4:  STRD.W          R5, R5, [R9,#0x54]
4072F8:  ORR.W           R0, R0, #8
4072FC:  VLDR            D16, [R9,#0x54]
407300:  STR.W           R0, [R9,#0x44]
407304:  STR.W           R5, [R9,#0x5C]
407308:  STR.W           R5, [R9,#0x50]
40730C:  VSTR            D16, [R9,#0x48]
407310:  VMOV.I32        Q8, #0
407314:  MOVS            R0, #0
407316:  VST1.32         {D16-D17}, [R8]
40731A:  VST1.32         {D16-D17}, [R4]!
40731E:  STR             R0, [R4]
407320:  LDRB.W          R0, [R9,#0x3A]
407324:  AND.W           R0, R0, #7
407328:  CMP             R0, #4
40732A:  ITTT EQ
40732C:  LDREQ.W         R0, [R9,#0x164]
407330:  LDREQ           R0, [R0,#0xC]
407332:  STREQ.W         R0, [R9,#0xA0]
407336:  LDR.W           R0, [R9,#0x1C]
40733A:  ORR.W           R0, R0, #1
40733E:  STR.W           R0, [R9,#0x1C]
407342:  B               loc_4077BC
407344:  CMP             R1, #2
407346:  BNE.W           loc_407016
40734A:  LDR             R0, [R5,#0x14]
40734C:  CBNZ            R0, loc_40735E
40734E:  MOV             R0, R5; this
407350:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
407354:  LDR             R1, [R5,#0x14]; CMatrix *
407356:  ADDS            R0, R5, #4; this
407358:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
40735C:  LDR             R0, [R5,#0x14]
40735E:  VLDR            S0, [R0,#8]
407362:  VLDR            S16, =0.707
407366:  VABS.F32        S0, S0
40736A:  VCMPE.F32       S0, S16
40736E:  VMRS            APSR_nzcv, FPSCR
407372:  BGT             loc_4073A0
407374:  LDR.W           R5, [R8]
407378:  LDR             R0, [R5,#0x14]
40737A:  CBNZ            R0, loc_40738C
40737C:  MOV             R0, R5; this
40737E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
407382:  LDR             R1, [R5,#0x14]; CMatrix *
407384:  ADDS            R0, R5, #4; this
407386:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
40738A:  LDR             R0, [R5,#0x14]
40738C:  VLDR            S0, [R0,#0x18]
407390:  VABS.F32        S0, S0
407394:  VCMPE.F32       S0, S16
407398:  VMRS            APSR_nzcv, FPSCR
40739C:  BLE.W           loc_407016
4073A0:  MOVS            R0, #0
4073A2:  MOVS            R1, #0; float
4073A4:  STR             R0, [SP,#0x1C0+var_1C0]; bool
4073A6:  MOV             R0, R9; this
4073A8:  MOVS            R2, #0; float
4073AA:  MOV.W           R3, #0x3F800000; float
4073AE:  BLX             j__ZN9CPhysical23DettachEntityFromEntityEfffb; CPhysical::DettachEntityFromEntity(float,float,float,bool)
4073B2:  B               loc_4077BC
4073B4:  LDR.W           R1, [R9,#0x14]
4073B8:  ADD             R0, SP, #0x1C0+var_E0
4073BA:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
4073BE:  ADD.W           R2, R9, #0x104
4073C2:  ADD             R0, SP, #0x1C0+var_98; CMatrix *
4073C4:  ADD             R1, SP, #0x1C0+var_170; CVector *
4073C6:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4073CA:  VLDR            S0, [SP,#0x1C0+var_140]
4073CE:  VLDR            S6, [SP,#0x1C0+var_98]
4073D2:  VLDR            S2, [SP,#0x1C0+var_13C]
4073D6:  VLDR            S8, [SP,#0x1C0+var_98+4]
4073DA:  VADD.F32        S0, S6, S0
4073DE:  VLDR            S4, [SP,#0x1C0+var_138]
4073E2:  VLDR            S10, [SP,#0x1C0+var_90]
4073E6:  VADD.F32        S2, S8, S2
4073EA:  VADD.F32        S4, S10, S4
4073EE:  VSTR            S2, [SP,#0x1C0+var_AC]
4073F2:  VSTR            S0, [SP,#0x1C0+var_B0]
4073F6:  VSTR            S4, [SP,#0x1C0+var_A8]
4073FA:  B               loc_406F56
4073FC:  LDRH.W          R0, [R5,#0x880]
407400:  CMP             R0, #0
407402:  BEQ.W           loc_40758C
407406:  VLDR            S0, =0.1
40740A:  VLDR            S2, [R9,#0x90]
40740E:  VLDR            S4, [R9,#0xDC]
407412:  VMUL.F32        S0, S2, S0
407416:  VCMPE.F32       S4, S0
40741A:  VMRS            APSR_nzcv, FPSCR
40741E:  BLE             loc_407434
407420:  LDR.W           R0, [R9,#0xE0]
407424:  CBZ             R0, loc_407434
407426:  LDRB.W          R0, [R0,#0x3A]
40742A:  AND.W           R0, R0, #7
40742E:  CMP             R0, #1
407430:  BEQ.W           loc_407596
407434:  VLDR            S0, [R5,#0xDC]
407438:  VCMPE.F32       S0, #0.0
40743C:  VMRS            APSR_nzcv, FPSCR
407440:  BLE             loc_407458
407442:  LDR             R0, [R5,#0x14]
407444:  VLDR            S2, =0.1
407448:  VLDR            S4, [R0,#0x28]
40744C:  VCMPE.F32       S4, S2
407450:  VMRS            APSR_nzcv, FPSCR
407454:  BLT.W           loc_407596
407458:  VMOV.F32        S2, #1.0
40745C:  VCMPE.F32       S0, S2
407460:  VMRS            APSR_nzcv, FPSCR
407464:  BLE             loc_40747C
407466:  LDR             R0, [R5,#0x14]
407468:  VLDR            S2, =0.87
40746C:  VLDR            S4, [R0,#0x18]
407470:  VCMPE.F32       S4, S2
407474:  VMRS            APSR_nzcv, FPSCR
407478:  BGT.W           loc_407596
40747C:  VLDR            S2, =500.0
407480:  VCMPE.F32       S0, S2
407484:  VMRS            APSR_nzcv, FPSCR
407488:  BLE.W           loc_407016
40748C:  LDR             R0, [R5,#0x14]
40748E:  VLDR            S0, [R5,#0xE4]
407492:  VLDR            S2, [R5,#0xE8]
407496:  VLDR            S6, [R0,#0x20]
40749A:  VLDR            S8, [R0,#0x24]
40749E:  VMUL.F32        S0, S0, S6
4074A2:  VLDR            S4, [R5,#0xEC]
4074A6:  VMUL.F32        S2, S2, S8
4074AA:  VLDR            S10, [R0,#0x28]
4074AE:  VMUL.F32        S4, S4, S10
4074B2:  VADD.F32        S0, S0, S2
4074B6:  VLDR            S2, =0.7
4074BA:  VADD.F32        S0, S0, S4
4074BE:  VCMPE.F32       S0, S2
4074C2:  VMRS            APSR_nzcv, FPSCR
4074C6:  BGE.W           loc_407016
4074CA:  VLDR            S0, [R5,#0x48]
4074CE:  VLDR            S2, [R5,#0x4C]
4074D2:  VMUL.F32        S0, S0, S0
4074D6:  VLDR            S4, [R5,#0x50]
4074DA:  VMUL.F32        S2, S2, S2
4074DE:  VMUL.F32        S4, S4, S4
4074E2:  VADD.F32        S0, S0, S2
4074E6:  VLDR            S2, =0.09
4074EA:  VADD.F32        S0, S0, S4
4074EE:  VCMPE.F32       S0, S2
4074F2:  VMRS            APSR_nzcv, FPSCR
4074F6:  BGE.W           loc_407016
4074FA:  B               loc_407596
4074FC:  VLDR            S16, [R0,#0x10]
407500:  LDR.W           R0, [R9,#0x14]
407504:  CBZ             R0, loc_407518
407506:  LDRD.W          R2, R1, [R0,#0x10]; x
40750A:  EOR.W           R0, R2, #0x80000000; y
40750E:  BLX             atan2f
407512:  VMOV            S0, R0
407516:  B               loc_40751C
407518:  VLDR            S0, [R9,#0x10]
40751C:  VSUB.F32        S0, S16, S0
407520:  VLDR            S2, =3.1416
407524:  VCMPE.F32       S0, S2
407528:  VMRS            APSR_nzcv, FPSCR
40752C:  BLE             loc_407534
40752E:  VLDR            S2, =-6.2832
407532:  B               loc_407546
407534:  VLDR            S2, =-3.1416
407538:  VCMPE.F32       S0, S2
40753C:  VMRS            APSR_nzcv, FPSCR
407540:  BGE             loc_40754A
407542:  VLDR            S2, =6.2832
407546:  VADD.F32        S0, S0, S2
40754A:  VMOV.F32        S2, #0.5
40754E:  VCMPE.F32       S0, S2
407552:  VMRS            APSR_nzcv, FPSCR
407556:  BGT             loc_40756E
407558:  VMOV.F32        S4, #-0.5
40755C:  VMOV.F32        S2, S0
407560:  VCMPE.F32       S0, S4
407564:  VMRS            APSR_nzcv, FPSCR
407568:  IT LT
40756A:  VMOVLT.F32      S2, S4
40756E:  VLDR            S4, [R9,#0x90]
407572:  VLDR            S0, [R9,#0x5C]
407576:  VMUL.F32        S2, S2, S4
40757A:  VLDR            S4, =0.00001
40757E:  VMUL.F32        S2, S2, S4
407582:  VADD.F32        S0, S0, S2
407586:  VSTR            S0, [R9,#0x5C]
40758A:  B               loc_4077BC
40758C:  LDRH.W          R0, [R5,#0x882]
407590:  CMP             R0, #0
407592:  BEQ.W           loc_407406
407596:  LDR.W           R0, [R9]
40759A:  MOVS            R1, #0
40759C:  MOVS            R6, #0
40759E:  LDR             R2, [R0,#0x14]
4075A0:  MOV             R0, R9
4075A2:  BLX             R2
4075A4:  LDR.W           R1, [R9,#0x44]
4075A8:  STRB.W          R6, [R9,#0xBC]
4075AC:  BIC.W           R0, R1, #0x2000000
4075B0:  TST.W           R1, #4
4075B4:  STR.W           R0, [R9,#0x44]
4075B8:  BNE             loc_4075F0
4075BA:  LDR.W           R1, [R8]
4075BE:  LDRB.W          R2, [R1,#0x3A]
4075C2:  AND.W           R2, R2, #7
4075C6:  CMP             R2, #2
4075C8:  BNE             loc_40760C
4075CA:  VLDR            D16, [R1,#0x48]
4075CE:  LDR             R2, [R1,#0x50]
4075D0:  STR.W           R2, [R9,#0x50]
4075D4:  VSTR            D16, [R9,#0x48]
4075D8:  VLDR            D16, [R1,#0x54]
4075DC:  LDR             R1, [R1,#0x5C]
4075DE:  STR.W           R1, [R9,#0x5C]
4075E2:  VSTR            D16, [R9,#0x54]
4075E6:  B               loc_40760C
4075E8:  DCFS 0.707
4075EC:  DCFS 0.1
4075F0:  STRD.W          R6, R6, [R9,#0x54]
4075F4:  ORR.W           R0, R0, #8
4075F8:  VLDR            D16, [R9,#0x54]
4075FC:  STR.W           R0, [R9,#0x44]
407600:  STR.W           R6, [R9,#0x5C]
407604:  STR.W           R6, [R9,#0x50]
407608:  VSTR            D16, [R9,#0x48]
40760C:  VMOV.I32        Q8, #0
407610:  MOVS            R1, #0
407612:  VST1.32         {D16-D17}, [R8]
407616:  VST1.32         {D16-D17}, [R4]!
40761A:  STR             R1, [R4]
40761C:  LDRB.W          R1, [R9,#0x3A]
407620:  AND.W           R1, R1, #7
407624:  CMP             R1, #4
407626:  ITTT EQ
407628:  LDREQ.W         R1, [R9,#0x164]
40762C:  LDREQ           R1, [R1,#0xC]
40762E:  STREQ.W         R1, [R9,#0xA0]
407632:  LSLS            R0, R0, #0x1D
407634:  BMI.W           loc_4077BC
407638:  BLX             rand
40763C:  VMOV            S0, R0
407640:  VCVT.F32.S32    S18, S0
407644:  LDR             R1, [R5,#0x14]
407646:  VLDR            S16, [R9,#0x90]
40764A:  CBNZ            R1, loc_40765C
40764C:  MOV             R0, R5; this
40764E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
407652:  LDR             R1, [R5,#0x14]; CMatrix *
407654:  ADDS            R0, R5, #4; this
407656:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
40765A:  LDR             R1, [R5,#0x14]
40765C:  VLDR            S20, [R1,#0x10]
407660:  CMP             R1, #0
407662:  VLDR            S22, [R1,#0x14]
407666:  VLDR            S24, [R1,#0x18]
40766A:  BNE             loc_40767C
40766C:  MOV             R0, R5; this
40766E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
407672:  LDR             R1, [R5,#0x14]; CMatrix *
407674:  ADDS            R0, R5, #4; this
407676:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
40767A:  LDR             R1, [R5,#0x14]
40767C:  LDR.W           R0, [R9,#0x44]
407680:  TST.W           R0, #0x60
407684:  BNE             loc_407726
407686:  VLDR            S0, =4.6566e-10
40768A:  VMOV.F32        S2, #-1.0
40768E:  VMOV.F32        S10, #1.0
407692:  VLDR            S4, =0.01
407696:  VMUL.F32        S0, S18, S0
40769A:  VLDR            S12, [R1]
40769E:  VLDR            S14, [R1,#4]
4076A2:  VLDR            S1, [R1,#8]
4076A6:  LSLS            R1, R0, #0x18
4076A8:  VLDR            S9, [R9,#0x90]
4076AC:  VLDR            S3, [R9,#0x48]
4076B0:  VLDR            S5, [R9,#0x4C]
4076B4:  VDIV.F32        S10, S10, S9
4076B8:  VADD.F32        S0, S0, S0
4076BC:  VLDR            S7, [R9,#0x50]
4076C0:  VADD.F32        S0, S0, S2
4076C4:  VMUL.F32        S2, S16, S4
4076C8:  VMUL.F32        S4, S0, S24
4076CC:  VMUL.F32        S6, S0, S22
4076D0:  VMUL.F32        S14, S0, S14
4076D4:  VMUL.F32        S8, S0, S20
4076D8:  VMUL.F32        S12, S0, S12
4076DC:  VMUL.F32        S0, S0, S1
4076E0:  VADD.F32        S6, S6, S14
4076E4:  VADD.F32        S8, S8, S12
4076E8:  VADD.F32        S0, S4, S0
4076EC:  VMUL.F32        S6, S2, S6
4076F0:  VMUL.F32        S4, S2, S8
4076F4:  VLDR            S8, =0.0
4076F8:  VMUL.F32        S0, S2, S0
4076FC:  VMUL.F32        S2, S10, S6
407700:  IT PL
407702:  VMOVPL.F32      S8, S0
407706:  VMUL.F32        S0, S4, S10
40770A:  VMUL.F32        S4, S10, S8
40770E:  VADD.F32        S2, S2, S5
407712:  VADD.F32        S0, S3, S0
407716:  VADD.F32        S4, S4, S7
40771A:  VSTR            S0, [R9,#0x48]
40771E:  VSTR            S2, [R9,#0x4C]
407722:  VSTR            S4, [R9,#0x50]
407726:  LDRH.W          R1, [R5,#0x882]
40772A:  LDRH.W          R2, [R5,#0x880]
40772E:  CMP             R2, R1
407730:  BLS             loc_4077BC
407732:  LDR             R1, [R5,#0x14]
407734:  VLDR            S16, [R9,#0x90]
407738:  CBNZ            R1, loc_40774E
40773A:  MOV             R0, R5; this
40773C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
407740:  LDR             R1, [R5,#0x14]; CMatrix *
407742:  ADDS            R0, R5, #4; this
407744:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
407748:  LDR.W           R0, [R9,#0x44]
40774C:  LDR             R1, [R5,#0x14]
40774E:  TST.W           R0, #0x60
407752:  BNE             loc_4077BC
407754:  VMOV.F32        S2, #1.0
407758:  VLDR            S10, [R9,#0x90]
40775C:  VLDR            S0, =0.02
407760:  LSLS            R0, R0, #0x18
407762:  VLDR            S12, [R1,#0x24]
407766:  VMUL.F32        S0, S16, S0
40776A:  VLDR            S14, [R1,#0x28]
40776E:  VLDR            S1, =0.0
407772:  VLDR            S4, [R9,#0x48]
407776:  VLDR            S6, [R9,#0x4C]
40777A:  VDIV.F32        S2, S2, S10
40777E:  VLDR            S10, [R1,#0x20]
407782:  VMUL.F32        S12, S0, S12
407786:  VLDR            S8, [R9,#0x50]
40778A:  VMUL.F32        S10, S0, S10
40778E:  VMUL.F32        S0, S0, S14
407792:  IT PL
407794:  VMOVPL.F32      S1, S0
407798:  VMUL.F32        S0, S10, S2
40779C:  VMUL.F32        S10, S12, S2
4077A0:  VMUL.F32        S2, S1, S2
4077A4:  VADD.F32        S0, S4, S0
4077A8:  VADD.F32        S4, S10, S6
4077AC:  VADD.F32        S2, S2, S8
4077B0:  VSTR            S0, [R9,#0x48]
4077B4:  VSTR            S4, [R9,#0x4C]
4077B8:  VSTR            S2, [R9,#0x50]
4077BC:  ADD             R0, SP, #0x1C0+var_170; this
4077BE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4077C2:  ADD             R0, SP, #0x1C0+var_128; this
4077C4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4077C8:  ADD             R0, SP, #0x1C0+var_E0; this
4077CA:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4077CE:  ADD             SP, SP, #0x170
4077D0:  VPOP            {D8-D14}
4077D4:  POP.W           {R8,R9,R11}
4077D8:  POP             {R4-R7,PC}
