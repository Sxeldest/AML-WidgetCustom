; =========================================================
; Game Engine Function: _ZN9CPhysical13ApplyFrictionEPS_fR9CColPoint
; Address            : 0x405F0C - 0x40690A
; =========================================================

405F0C:  PUSH            {R4-R7,LR}
405F0E:  ADD             R7, SP, #0xC
405F10:  PUSH.W          {R8-R11}
405F14:  SUB             SP, SP, #4
405F16:  VPUSH           {D8-D15}
405F1A:  SUB             SP, SP, #0x78
405F1C:  MOV             R4, R1
405F1E:  MOV             R5, R0
405F20:  LDR             R0, [R4,#0x44]
405F22:  VMOV            S18, R2
405F26:  LDR             R1, [R5,#0x44]
405F28:  MOV             R6, R3
405F2A:  AND.W           R2, R0, #0x10
405F2E:  TST.W           R1, #0x10
405F32:  BNE.W           loc_406238
405F36:  CMP             R2, #0
405F38:  BNE.W           loc_4064CC
405F3C:  LDR             R0, [R5,#0x14]
405F3E:  MOV             R1, R5
405F40:  VSTR            D9, [SP,#0xD8+var_C0]
405F44:  VLDR            S18, [R6]
405F48:  VLDR            S0, [R0,#0x30]
405F4C:  VLDR            S22, [R6,#4]
405F50:  VLDR            S2, [R0,#0x34]
405F54:  VSUB.F32        S31, S18, S0
405F58:  VLDR            S4, [R0,#0x38]
405F5C:  VSUB.F32        S16, S22, S2
405F60:  VLDR            S24, [R6,#8]
405F64:  LDR             R0, [R4,#0x14]
405F66:  VSUB.F32        S20, S24, S4
405F6A:  VLDR            S26, [R0,#0x30]
405F6E:  VMOV            R11, S31
405F72:  VLDR            S28, [R0,#0x34]
405F76:  VLDR            S30, [R0,#0x38]
405F7A:  ADD             R0, SP, #0xD8+var_6C
405F7C:  VMOV            R10, S16
405F80:  VSTR            S20, [SP,#0xD8+var_D8]
405F84:  MOV             R2, R11
405F86:  MOV             R3, R10
405F88:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
405F8C:  VSUB.F32        S19, S18, S26
405F90:  ADD             R0, SP, #0xD8+var_78
405F92:  VSUB.F32        S23, S22, S28
405F96:  MOV             R1, R4
405F98:  VSUB.F32        S21, S24, S30
405F9C:  VMOV            R9, S19
405FA0:  VMOV            R8, S23
405FA4:  VSTR            S21, [SP,#0xD8+var_D8]
405FA8:  MOV             R2, R9
405FAA:  MOV             R3, R8
405FAC:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
405FB0:  VLDR            S28, [R6,#0x10]
405FB4:  ADD.W           R2, R5, #0xA8
405FB8:  VLDR            S0, [SP,#0xD8+var_6C]
405FBC:  ADD             R0, SP, #0xD8+var_90; CMatrix *
405FBE:  VLDR            S30, [R6,#0x14]
405FC2:  VLDR            S2, [SP,#0xD8+var_68]
405FC6:  VMUL.F32        S8, S0, S28
405FCA:  VLDR            S26, [R6,#0x18]
405FCE:  VMUL.F32        S6, S2, S30
405FD2:  VLDR            S4, [SP,#0xD8+var_64]
405FD6:  VLDR            S27, [SP,#0xD8+var_78]
405FDA:  VMUL.F32        S10, S4, S26
405FDE:  VLDR            S29, [SP,#0xD8+var_74]
405FE2:  VLDR            S25, [SP,#0xD8+var_70]
405FE6:  VADD.F32        S6, S8, S6
405FEA:  VADD.F32        S24, S6, S10
405FEE:  VMUL.F32        S6, S30, S24
405FF2:  VMUL.F32        S8, S28, S24
405FF6:  VMUL.F32        S10, S26, S24
405FFA:  VSUB.F32        S2, S2, S6
405FFE:  VSUB.F32        S0, S0, S8
406002:  VSUB.F32        S4, S4, S10
406006:  VMUL.F32        S6, S2, S2
40600A:  VMUL.F32        S8, S0, S0
40600E:  VMUL.F32        S10, S4, S4
406012:  VADD.F32        S6, S8, S6
406016:  VADD.F32        S6, S10, S6
40601A:  VSQRT.F32       S22, S6
40601E:  VMOV.F32        S6, #1.0
406022:  VDIV.F32        S6, S6, S22
406026:  VMUL.F32        S2, S2, S6
40602A:  VMUL.F32        S0, S0, S6
40602E:  VMUL.F32        S4, S4, S6
406032:  VSTR            S2, [SP,#0xD8+var_80]
406036:  VSTR            S0, [SP,#0xD8+var_84]
40603A:  VSTR            S4, [SP,#0xD8+var_7C]
40603E:  LDR             R1, [R5,#0x14]; CVector *
406040:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
406044:  VLDR            S0, [R5,#0x90]
406048:  ADD             R6, SP, #0xD8+var_84
40604A:  VLDR            S2, [SP,#0xD8+var_8C]
40604E:  ADD             R0, SP, #0xD8+var_9C; CVector *
406050:  VLDR            S4, [SP,#0xD8+var_88]
406054:  ADD             R1, SP, #0xD8+var_A8; CVector *
406056:  VSTR            S0, [SP,#0xD8+var_C4]
40605A:  VSUB.F32        S2, S16, S2
40605E:  VLDR            S0, [SP,#0xD8+var_90]
406062:  VSUB.F32        S4, S20, S4
406066:  MOV             R2, R6
406068:  VSTR            S20, [SP,#0xD8+var_C8]
40606C:  VSUB.F32        S0, S31, S0
406070:  VSTR            S0, [SP,#0xD8+var_A8]
406074:  VSTR            S2, [SP,#0xD8+var_A4]
406078:  VSTR            S4, [SP,#0xD8+var_A0]
40607C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
406080:  LDR             R1, [R4,#0x14]; CVector *
406082:  ADD.W           R2, R4, #0xA8
406086:  ADD             R0, SP, #0xD8+var_9C; CMatrix *
406088:  VLDR            S16, [SP,#0xD8+var_9C]
40608C:  VLDR            S31, [SP,#0xD8+var_98]
406090:  VLDR            S18, [SP,#0xD8+var_94]
406094:  VLDR            S20, [R5,#0x94]
406098:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
40609C:  VLDR            S0, [SP,#0xD8+var_9C]
4060A0:  ADD             R0, SP, #0xD8+var_A8; CVector *
4060A2:  VLDR            S2, [SP,#0xD8+var_98]
4060A6:  ADD             R1, SP, #0xD8+var_B4; CVector *
4060A8:  VLDR            S4, [SP,#0xD8+var_94]
4060AC:  VSUB.F32        S0, S19, S0
4060B0:  VSUB.F32        S2, S23, S2
4060B4:  MOV             R2, R6
4060B6:  VSUB.F32        S4, S21, S4
4060BA:  VLDR            S17, [R4,#0x90]
4060BE:  VSTR            S0, [SP,#0xD8+var_B4]
4060C2:  VSTR            S2, [SP,#0xD8+var_B0]
4060C6:  VSTR            S4, [SP,#0xD8+var_AC]
4060CA:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4060CE:  VMUL.F32        S0, S30, S29
4060D2:  VLDR            S10, [SP,#0xD8+var_A4]
4060D6:  VMUL.F32        S2, S28, S27
4060DA:  VLDR            S12, [SP,#0xD8+var_A0]
4060DE:  VMUL.F32        S4, S31, S31
4060E2:  VMUL.F32        S6, S16, S16
4060E6:  VMUL.F32        S8, S26, S25
4060EA:  VMOV.F32        S1, #1.0
4060EE:  VADD.F32        S0, S2, S0
4060F2:  VMUL.F32        S2, S18, S18
4060F6:  VLDR            D9, [SP,#0xD8+var_C0]
4060FA:  VADD.F32        S4, S6, S4
4060FE:  VLDR            S6, [SP,#0xD8+var_A8]
406102:  VMUL.F32        S6, S6, S6
406106:  VDIV.F32        S14, S1, S17
40610A:  VADD.F32        S0, S0, S8
40610E:  VMUL.F32        S8, S10, S10
406112:  VMUL.F32        S10, S12, S12
406116:  VLDR            S12, [SP,#0xD8+var_C4]
40611A:  VADD.F32        S2, S4, S2
40611E:  VDIV.F32        S12, S1, S12
406122:  VADD.F32        S6, S6, S8
406126:  VMUL.F32        S4, S30, S0
40612A:  VMUL.F32        S8, S28, S0
40612E:  VDIV.F32        S2, S2, S20
406132:  VADD.F32        S6, S6, S10
406136:  VLDR            S10, [R4,#0x94]
40613A:  VMUL.F32        S0, S26, S0
40613E:  VSUB.F32        S4, S29, S4
406142:  VSUB.F32        S8, S27, S8
406146:  VADD.F32        S2, S12, S2
40614A:  VDIV.F32        S6, S6, S10
40614E:  VSUB.F32        S0, S25, S0
406152:  VMUL.F32        S4, S4, S4
406156:  VMUL.F32        S8, S8, S8
40615A:  VADD.F32        S6, S14, S6
40615E:  VMUL.F32        S0, S0, S0
406162:  VADD.F32        S4, S8, S4
406166:  VDIV.F32        S16, S1, S6
40616A:  VADD.F32        S4, S0, S4
40616E:  VDIV.F32        S0, S1, S2
406172:  VSQRT.F32       S26, S4
406176:  VMUL.F32        S2, S22, S0
40617A:  VMUL.F32        S4, S26, S16
40617E:  VADD.F32        S6, S0, S16
406182:  VADD.F32        S2, S2, S4
406186:  VLDR            S4, =0.05
40618A:  VMUL.F32        S4, S18, S4
40618E:  VDIV.F32        S28, S2, S6
406192:  VABS.F32        S2, S24
406196:  VLDR            S6, =0.1414
40619A:  VSUB.F32        S8, S22, S28
40619E:  VCMPE.F32       S2, S6
4061A2:  VMRS            APSR_nzcv, FPSCR
4061A6:  VCMPE.F32       S8, #0.0
4061AA:  IT LT
4061AC:  VMOVLT.F32      S18, S4
4061B0:  VMRS            APSR_nzcv, FPSCR
4061B4:  BLE.W           loc_4068FA
4061B8:  LDRB.W          R0, [R5,#0x44]
4061BC:  VLDR            S2, [SP,#0xD8+var_C8]
4061C0:  VLDR            S24, [SP,#0xD8+var_84]
4061C4:  VLDR            S30, [SP,#0xD8+var_80]
4061C8:  LSLS            R0, R0, #0x1D
4061CA:  VLDR            S17, [SP,#0xD8+var_7C]
4061CE:  BMI             loc_406208
4061D0:  VMOV            R0, S2
4061D4:  STRD.W          R11, R10, [SP,#0xD8+var_D8]
4061D8:  VSUB.F32        S2, S28, S22
4061DC:  VNEG.F32        S4, S18
4061E0:  VMUL.F32        S0, S0, S2
4061E4:  VMAX.F32        D0, D0, D2
4061E8:  STR             R0, [SP,#0xD8+var_D0]
4061EA:  MOV             R0, R5
4061EC:  VMUL.F32        S2, S0, S24
4061F0:  VMUL.F32        S4, S0, S30
4061F4:  VMUL.F32        S0, S0, S17
4061F8:  VMOV            R1, S2
4061FC:  VMOV            R2, S4
406200:  VMOV            R3, S0
406204:  BLX             j__ZN9CPhysical18ApplyFrictionForceE7CVectorS0_; CPhysical::ApplyFrictionForce(CVector,CVector)
406208:  LDRB.W          R0, [R4,#0x44]
40620C:  LSLS            R0, R0, #0x1D
40620E:  BMI.W           loc_4068F6
406212:  VSUB.F32        S0, S28, S26
406216:  VMOV            R0, S21
40621A:  VMUL.F32        S0, S16, S0
40621E:  VMIN.F32        D0, D0, D9
406222:  VMUL.F32        S2, S0, S17
406226:  VMUL.F32        S4, S0, S30
40622A:  VMUL.F32        S0, S0, S24
40622E:  VMOV            R3, S2
406232:  VMOV            R2, S4
406236:  B               loc_4064AE
406238:  CMP             R2, #0
40623A:  BNE.W           loc_406740
40623E:  LDRB.W          R0, [R4,#0x3A]
406242:  AND.W           R0, R0, #7
406246:  CMP             R0, #2
406248:  BEQ.W           loc_4068FA
40624C:  VSTR            D9, [SP,#0xD8+var_C0]
406250:  MOV             R1, R4
406252:  LDR             R0, [R4,#0x14]
406254:  VLDR            S0, [R6]
406258:  VLDR            S2, [R6,#4]
40625C:  VLDR            S6, [R0,#0x30]
406260:  VLDR            S8, [R0,#0x34]
406264:  VSUB.F32        S30, S0, S6
406268:  VLDR            S10, [R0,#0x38]
40626C:  VSUB.F32        S17, S2, S8
406270:  VLDR            S4, [R6,#8]
406274:  ADD             R0, SP, #0xD8+var_6C
406276:  VSUB.F32        S18, S4, S10
40627A:  VMOV            R9, S30
40627E:  VMOV            R8, S17
406282:  VSTR            S18, [SP,#0xD8+var_D8]
406286:  MOV             R2, R9
406288:  MOV             R3, R8
40628A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
40628E:  VLDR            S26, [R6,#0x10]
406292:  VMOV.F32        S20, #1.0
406296:  VLDR            S0, [R5,#0x48]
40629A:  ADD.W           R2, R4, #0xA8
40629E:  VLDR            S28, [R6,#0x14]
4062A2:  ADD             R0, SP, #0xD8+var_84; CMatrix *
4062A4:  VLDR            S2, [R5,#0x4C]
4062A8:  VMUL.F32        S8, S0, S26
4062AC:  VLDR            S16, [R6,#0x18]
4062B0:  VMUL.F32        S6, S2, S28
4062B4:  VLDR            S4, [R5,#0x50]
4062B8:  VLDR            S19, [SP,#0xD8+var_6C]
4062BC:  VMUL.F32        S10, S4, S16
4062C0:  VLDR            S21, [SP,#0xD8+var_68]
4062C4:  VLDR            S23, [SP,#0xD8+var_64]
4062C8:  VADD.F32        S6, S8, S6
4062CC:  VADD.F32        S6, S6, S10
4062D0:  VMUL.F32        S8, S28, S6
4062D4:  VMUL.F32        S10, S26, S6
4062D8:  VMUL.F32        S6, S16, S6
4062DC:  VSUB.F32        S2, S2, S8
4062E0:  VSUB.F32        S0, S0, S10
4062E4:  VSUB.F32        S4, S4, S6
4062E8:  VMUL.F32        S6, S2, S2
4062EC:  VMUL.F32        S8, S0, S0
4062F0:  VMUL.F32        S10, S4, S4
4062F4:  VADD.F32        S6, S8, S6
4062F8:  VADD.F32        S6, S10, S6
4062FC:  VSQRT.F32       S22, S6
406300:  VDIV.F32        S6, S20, S22
406304:  VMUL.F32        S2, S2, S6
406308:  VMUL.F32        S0, S0, S6
40630C:  VMUL.F32        S4, S4, S6
406310:  VSTR            S2, [SP,#0xD8+var_74]
406314:  VSTR            S0, [SP,#0xD8+var_78]
406318:  VSTR            S4, [SP,#0xD8+var_70]
40631C:  LDR             R1, [R4,#0x14]; CVector *
40631E:  VLDR            S24, [R5,#0x90]
406322:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
406326:  VLDR            S0, [SP,#0xD8+var_84]
40632A:  ADD             R0, SP, #0xD8+var_90; CVector *
40632C:  VLDR            S2, [SP,#0xD8+var_80]
406330:  ADD             R1, SP, #0xD8+var_9C; CVector *
406332:  VLDR            S4, [SP,#0xD8+var_7C]
406336:  VSUB.F32        S0, S30, S0
40633A:  VSUB.F32        S2, S17, S2
40633E:  ADD             R2, SP, #0xD8+var_78
406340:  VSUB.F32        S4, S18, S4
406344:  VLDR            S25, [R4,#0x90]
406348:  VSTR            S0, [SP,#0xD8+var_9C]
40634C:  VSTR            S2, [SP,#0xD8+var_98]
406350:  VSTR            S4, [SP,#0xD8+var_94]
406354:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
406358:  VMUL.F32        S0, S28, S21
40635C:  VLDR            S4, [SP,#0xD8+var_90]
406360:  VMUL.F32        S2, S26, S19
406364:  VLDR            S6, [SP,#0xD8+var_8C]
406368:  VMUL.F32        S10, S16, S23
40636C:  VLDR            S8, [SP,#0xD8+var_88]
406370:  VMUL.F32        S4, S4, S4
406374:  VADD.F32        S0, S2, S0
406378:  VMUL.F32        S2, S6, S6
40637C:  VMUL.F32        S6, S8, S8
406380:  VADD.F32        S0, S0, S10
406384:  VADD.F32        S2, S4, S2
406388:  VDIV.F32        S10, S20, S25
40638C:  VMUL.F32        S4, S28, S0
406390:  VADD.F32        S2, S2, S6
406394:  VLDR            S6, [R4,#0x94]
406398:  VMUL.F32        S8, S26, S0
40639C:  VMUL.F32        S0, S16, S0
4063A0:  VSUB.F32        S4, S21, S4
4063A4:  VDIV.F32        S2, S2, S6
4063A8:  VSUB.F32        S6, S19, S8
4063AC:  VSUB.F32        S0, S23, S0
4063B0:  VMUL.F32        S4, S4, S4
4063B4:  VADD.F32        S2, S10, S2
4063B8:  VMUL.F32        S6, S6, S6
4063BC:  VMUL.F32        S0, S0, S0
4063C0:  VADD.F32        S4, S6, S4
4063C4:  VADD.F32        S4, S0, S4
4063C8:  VDIV.F32        S0, S20, S2
4063CC:  VSQRT.F32       S2, S4
4063D0:  VMUL.F32        S4, S24, S22
4063D4:  VMUL.F32        S6, S2, S0
4063D8:  VADD.F32        S8, S24, S0
4063DC:  VADD.F32        S4, S4, S6
4063E0:  VDIV.F32        S6, S4, S8
4063E4:  VSUB.F32        S4, S22, S6
4063E8:  VCMPE.F32       S4, #0.0
4063EC:  VMRS            APSR_nzcv, FPSCR
4063F0:  BLE.W           loc_4068FA
4063F4:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x406400)
4063F8:  VLDR            S4, [SP,#0xD8+var_78]
4063FC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4063FE:  VLDR            S8, [SP,#0xD8+var_74]
406402:  VLDR            S10, [SP,#0xD8+var_70]
406406:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
406408:  VLDR            S12, [R0]
40640C:  LDR             R0, [R5,#0x44]
40640E:  TST.W           R0, #0x60
406412:  BNE             loc_406478
406414:  VSUB.F32        S14, S6, S22
406418:  VLDR            S7, [R5,#0x90]
40641C:  VLDR            D8, [SP,#0xD8+var_C0]
406420:  LSLS            R0, R0, #0x18
406422:  VDIV.F32        S7, S20, S7
406426:  VMUL.F32        S14, S24, S14
40642A:  VLDR            S11, =0.0
40642E:  VNMUL.F32       S16, S12, S16
406432:  VLDR            S1, [R5,#0x60]
406436:  VLDR            S3, [R5,#0x64]
40643A:  VLDR            S5, [R5,#0x68]
40643E:  VMAX.F32        D7, D7, D8
406442:  VMUL.F32        S9, S4, S14
406446:  VMUL.F32        S13, S8, S14
40644A:  VMUL.F32        S14, S10, S14
40644E:  IT PL
406450:  VMOVPL.F32      S11, S14
406454:  VMUL.F32        S14, S9, S7
406458:  VMUL.F32        S9, S13, S7
40645C:  VMUL.F32        S7, S11, S7
406460:  VADD.F32        S14, S1, S14
406464:  VADD.F32        S1, S9, S3
406468:  VADD.F32        S3, S7, S5
40646C:  VSTR            S14, [R5,#0x60]
406470:  VSTR            S1, [R5,#0x64]
406474:  VSTR            S3, [R5,#0x68]
406478:  LDRB.W          R0, [R4,#0x44]
40647C:  LSLS            R0, R0, #0x1D
40647E:  BMI.W           loc_4068F6
406482:  VSUB.F32        S2, S6, S2
406486:  VMOV            R0, S18
40648A:  VMUL.F32        S0, S0, S2
40648E:  VLDR            D1, [SP,#0xD8+var_C0]
406492:  VMUL.F32        S2, S12, S2
406496:  VMIN.F32        D0, D0, D1
40649A:  VMUL.F32        S2, S10, S0
40649E:  VMUL.F32        S6, S8, S0
4064A2:  VMUL.F32        S0, S4, S0
4064A6:  VMOV            R3, S2
4064AA:  VMOV            R2, S6
4064AE:  VMOV            R1, S0
4064B2:  STRD.W          R9, R8, [SP,#0xD8+var_D8]
4064B6:  STR             R0, [SP,#0xD8+var_D0]
4064B8:  MOV             R0, R4
4064BA:  BLX             j__ZN9CPhysical18ApplyFrictionForceE7CVectorS0_; CPhysical::ApplyFrictionForce(CVector,CVector)
4064BE:  B               loc_4068F6
4064C0:  DCFS 0.05
4064C4:  DCFS 0.1414
4064C8:  DCFS 0.0
4064CC:  LDRB.W          R0, [R5,#0x3A]
4064D0:  AND.W           R0, R0, #7
4064D4:  CMP             R0, #2
4064D6:  BEQ.W           loc_4068FA
4064DA:  VSTR            D9, [SP,#0xD8+var_C0]
4064DE:  MOV             R1, R5
4064E0:  LDR             R0, [R5,#0x14]
4064E2:  VLDR            S0, [R6]
4064E6:  VLDR            S2, [R6,#4]
4064EA:  VLDR            S6, [R0,#0x30]
4064EE:  VLDR            S8, [R0,#0x34]
4064F2:  VSUB.F32        S28, S0, S6
4064F6:  VLDR            S10, [R0,#0x38]
4064FA:  VSUB.F32        S30, S2, S8
4064FE:  VLDR            S4, [R6,#8]
406502:  ADD             R0, SP, #0xD8+var_6C
406504:  VSUB.F32        S20, S4, S10
406508:  VMOV            R9, S28
40650C:  VMOV            R8, S30
406510:  VSTR            S20, [SP,#0xD8+var_D8]
406514:  MOV             R2, R9
406516:  MOV             R3, R8
406518:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
40651C:  VLDR            S16, [R6,#0x10]
406520:  VMOV.F32        S18, #1.0
406524:  VLDR            S0, [SP,#0xD8+var_6C]
406528:  ADD.W           R2, R5, #0xA8
40652C:  VLDR            S26, [R6,#0x14]
406530:  ADD             R0, SP, #0xD8+var_84; CMatrix *
406532:  VLDR            S2, [SP,#0xD8+var_68]
406536:  VMUL.F32        S8, S0, S16
40653A:  VLDR            S24, [R6,#0x18]
40653E:  VMUL.F32        S6, S2, S26
406542:  VLDR            S4, [SP,#0xD8+var_64]
406546:  VLDR            S17, [R4,#0x48]
40654A:  VMUL.F32        S10, S4, S24
40654E:  VLDR            S19, [R4,#0x4C]
406552:  VLDR            S21, [R4,#0x50]
406556:  VADD.F32        S6, S8, S6
40655A:  VADD.F32        S6, S6, S10
40655E:  VMUL.F32        S8, S26, S6
406562:  VMUL.F32        S10, S16, S6
406566:  VMUL.F32        S6, S24, S6
40656A:  VSUB.F32        S2, S2, S8
40656E:  VSUB.F32        S0, S0, S10
406572:  VSUB.F32        S4, S4, S6
406576:  VMUL.F32        S6, S2, S2
40657A:  VMUL.F32        S8, S0, S0
40657E:  VMUL.F32        S10, S4, S4
406582:  VADD.F32        S6, S8, S6
406586:  VADD.F32        S6, S10, S6
40658A:  VSQRT.F32       S22, S6
40658E:  VDIV.F32        S6, S18, S22
406592:  VMUL.F32        S2, S2, S6
406596:  VMUL.F32        S0, S0, S6
40659A:  VMUL.F32        S4, S4, S6
40659E:  VSTR            S2, [SP,#0xD8+var_74]
4065A2:  VSTR            S0, [SP,#0xD8+var_78]
4065A6:  VSTR            S4, [SP,#0xD8+var_70]
4065AA:  LDR             R1, [R5,#0x14]; CVector *
4065AC:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4065B0:  VLDR            S0, [SP,#0xD8+var_84]
4065B4:  ADD             R0, SP, #0xD8+var_90; CVector *
4065B6:  VLDR            S2, [SP,#0xD8+var_80]
4065BA:  ADD             R1, SP, #0xD8+var_9C; CVector *
4065BC:  VLDR            S4, [SP,#0xD8+var_7C]
4065C0:  VSUB.F32        S0, S28, S0
4065C4:  VSUB.F32        S2, S30, S2
4065C8:  ADD             R2, SP, #0xD8+var_78
4065CA:  VSUB.F32        S4, S20, S4
4065CE:  VLDR            S23, [R5,#0x90]
4065D2:  VSTR            S0, [SP,#0xD8+var_9C]
4065D6:  VSTR            S2, [SP,#0xD8+var_98]
4065DA:  VSTR            S4, [SP,#0xD8+var_94]
4065DE:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4065E2:  VMUL.F32        S0, S26, S19
4065E6:  VLDR            S6, [SP,#0xD8+var_88]
4065EA:  VMUL.F32        S2, S16, S17
4065EE:  VMUL.F32        S4, S24, S21
4065F2:  VMUL.F32        S6, S6, S6
4065F6:  VADD.F32        S0, S2, S0
4065FA:  VLDR            S2, [SP,#0xD8+var_90]
4065FE:  VMUL.F32        S2, S2, S2
406602:  VADD.F32        S0, S0, S4
406606:  VLDR            S4, [SP,#0xD8+var_8C]
40660A:  VMUL.F32        S4, S4, S4
40660E:  VMUL.F32        S8, S26, S0
406612:  VMUL.F32        S10, S16, S0
406616:  VADD.F32        S2, S2, S4
40661A:  VMUL.F32        S0, S24, S0
40661E:  VLDR            S24, [R4,#0x90]
406622:  VSUB.F32        S8, S19, S8
406626:  VSUB.F32        S4, S17, S10
40662A:  VADD.F32        S2, S2, S6
40662E:  VLDR            S6, [R5,#0x94]
406632:  VDIV.F32        S10, S18, S23
406636:  VDIV.F32        S2, S2, S6
40663A:  VSUB.F32        S0, S21, S0
40663E:  VMUL.F32        S8, S8, S8
406642:  VMUL.F32        S4, S4, S4
406646:  VADD.F32        S2, S10, S2
40664A:  VMUL.F32        S0, S0, S0
40664E:  VADD.F32        S4, S4, S8
406652:  VADD.F32        S0, S0, S4
406656:  VSQRT.F32       S16, S0
40665A:  VDIV.F32        S0, S18, S2
40665E:  VMUL.F32        S2, S16, S24
406662:  VMUL.F32        S4, S22, S0
406666:  VADD.F32        S6, S24, S0
40666A:  VADD.F32        S2, S2, S4
40666E:  VDIV.F32        S28, S2, S6
406672:  VSUB.F32        S2, S22, S28
406676:  VCMPE.F32       S2, #0.0
40667A:  VMRS            APSR_nzcv, FPSCR
40667E:  BLE.W           loc_4068FA
406682:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x40668C)
406684:  VLDR            S26, [SP,#0xD8+var_78]
406688:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
40668A:  VLDR            S30, [SP,#0xD8+var_74]
40668E:  VLDR            S17, [SP,#0xD8+var_70]
406692:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
406694:  VLDR            S19, [R0]
406698:  LDRB.W          R0, [R5,#0x44]
40669C:  LSLS            R0, R0, #0x1D
40669E:  BMI             loc_4066DC
4066A0:  VSUB.F32        S2, S28, S22
4066A4:  VMOV            R0, S20
4066A8:  VMUL.F32        S0, S0, S2
4066AC:  VLDR            D1, [SP,#0xD8+var_C0]
4066B0:  STRD.W          R9, R8, [SP,#0xD8+var_D8]
4066B4:  VNMUL.F32       S2, S19, S2
4066B8:  VMAX.F32        D0, D0, D1
4066BC:  STR             R0, [SP,#0xD8+var_D0]
4066BE:  MOV             R0, R5
4066C0:  VMUL.F32        S2, S26, S0
4066C4:  VMUL.F32        S4, S30, S0
4066C8:  VMUL.F32        S0, S17, S0
4066CC:  VMOV            R1, S2
4066D0:  VMOV            R2, S4
4066D4:  VMOV            R3, S0
4066D8:  BLX             j__ZN9CPhysical18ApplyFrictionForceE7CVectorS0_; CPhysical::ApplyFrictionForce(CVector,CVector)
4066DC:  LDR             R0, [R4,#0x44]
4066DE:  TST.W           R0, #0x60
4066E2:  BNE.W           loc_4068F6
4066E6:  VSUB.F32        S0, S28, S16
4066EA:  VLDR            S12, [R4,#0x90]
4066EE:  VLDR            D1, [SP,#0xD8+var_C0]
4066F2:  LSLS            R0, R0, #0x18
4066F4:  VDIV.F32        S12, S18, S12
4066F8:  VMUL.F32        S0, S24, S0
4066FC:  VLDR            S14, =0.0
406700:  VMUL.F32        S2, S19, S2
406704:  VLDR            S6, [R4,#0x60]
406708:  VLDR            S8, [R4,#0x64]
40670C:  VLDR            S10, [R4,#0x68]
406710:  VMIN.F32        D0, D0, D1
406714:  VMUL.F32        S2, S17, S0
406718:  VMUL.F32        S4, S30, S0
40671C:  VMUL.F32        S0, S26, S0
406720:  IT PL
406722:  VMOVPL.F32      S14, S2
406726:  VMUL.F32        S2, S4, S12
40672A:  VMUL.F32        S0, S0, S12
40672E:  VMUL.F32        S4, S14, S12
406732:  VADD.F32        S2, S2, S8
406736:  VADD.F32        S0, S6, S0
40673A:  VADD.F32        S4, S4, S10
40673E:  B               loc_4068EA
406740:  VLDR            S4, [R4,#0x48]
406744:  VLDR            S10, [R6,#0x10]
406748:  VLDR            S5, [R5,#0x48]
40674C:  VLDR            S6, [R4,#0x4C]
406750:  VMUL.F32        S3, S10, S4
406754:  VLDR            S12, [R6,#0x14]
406758:  VMUL.F32        S13, S5, S10
40675C:  VLDR            S7, [R5,#0x4C]
406760:  VMUL.F32        S1, S12, S6
406764:  VLDR            S8, [R4,#0x50]
406768:  VMUL.F32        S11, S7, S12
40676C:  VLDR            S14, [R6,#0x18]
406770:  VLDR            S9, [R5,#0x50]
406774:  VMUL.F32        S15, S14, S8
406778:  VLDR            S0, [R4,#0x90]
40677C:  VLDR            S2, [R5,#0x90]
406780:  VADD.F32        S1, S3, S1
406784:  VMUL.F32        S3, S9, S14
406788:  VADD.F32        S11, S13, S11
40678C:  VADD.F32        S1, S1, S15
406790:  VADD.F32        S3, S11, S3
406794:  VMUL.F32        S11, S12, S1
406798:  VMUL.F32        S13, S10, S1
40679C:  VMUL.F32        S12, S12, S3
4067A0:  VMUL.F32        S15, S10, S3
4067A4:  VMUL.F32        S16, S14, S1
4067A8:  VMUL.F32        S14, S14, S3
4067AC:  VSUB.F32        S6, S6, S11
4067B0:  VSUB.F32        S4, S4, S13
4067B4:  VSUB.F32        S10, S7, S12
4067B8:  VSUB.F32        S1, S5, S15
4067BC:  VSUB.F32        S8, S8, S16
4067C0:  VSUB.F32        S12, S9, S14
4067C4:  VMUL.F32        S6, S6, S6
4067C8:  VMUL.F32        S4, S4, S4
4067CC:  VMUL.F32        S14, S10, S10
4067D0:  VMUL.F32        S3, S1, S1
4067D4:  VMUL.F32        S8, S8, S8
4067D8:  VADD.F32        S4, S4, S6
4067DC:  VMUL.F32        S6, S12, S12
4067E0:  VADD.F32        S14, S3, S14
4067E4:  VADD.F32        S4, S8, S4
4067E8:  VADD.F32        S6, S6, S14
4067EC:  VADD.F32        S14, S2, S0
4067F0:  VSQRT.F32       S4, S4
4067F4:  VSQRT.F32       S3, S6
4067F8:  VMUL.F32        S6, S0, S4
4067FC:  VMUL.F32        S8, S2, S3
406800:  VADD.F32        S6, S8, S6
406804:  VDIV.F32        S8, S6, S14
406808:  VSUB.F32        S6, S3, S8
40680C:  VCMPE.F32       S6, #0.0
406810:  VMRS            APSR_nzcv, FPSCR
406814:  BLE             loc_4068FA
406816:  VMOV.F32        S6, #1.0
40681A:  TST.W           R1, #0x60
40681E:  VDIV.F32        S5, S6, S3
406822:  VMUL.F32        S14, S12, S5
406826:  VMUL.F32        S12, S10, S5
40682A:  VMUL.F32        S10, S1, S5
40682E:  BNE             loc_406898
406830:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x40683A)
406832:  VSUB.F32        S1, S8, S3
406836:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
406838:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
40683A:  VLDR            S3, [R0]
40683E:  VMUL.F32        S16, S2, S1
406842:  VDIV.F32        S2, S6, S2
406846:  LSLS            R0, R1, #0x18
406848:  VNMUL.F32       S18, S3, S18
40684C:  VLDR            S3, =0.0
406850:  VMAX.F32        D8, D8, D9
406854:  VMUL.F32        S7, S14, S16
406858:  VMUL.F32        S1, S10, S16
40685C:  VMUL.F32        S5, S12, S16
406860:  IT PL
406862:  VMOVPL.F32      S3, S7
406866:  VLDR            S7, [R5,#0x64]
40686A:  VMUL.F32        S1, S2, S1
40686E:  VLDR            S9, [R5,#0x68]
406872:  VMUL.F32        S5, S2, S5
406876:  VMUL.F32        S2, S2, S3
40687A:  VLDR            S3, [R5,#0x60]
40687E:  VADD.F32        S1, S1, S3
406882:  VADD.F32        S3, S5, S7
406886:  VADD.F32        S2, S2, S9
40688A:  VSTR            S1, [R5,#0x60]
40688E:  VSTR            S3, [R5,#0x64]
406892:  VSTR            S2, [R5,#0x68]
406896:  LDR             R0, [R4,#0x44]
406898:  TST.W           R0, #0x60
40689C:  BNE             loc_4068F6
40689E:  VSUB.F32        S2, S8, S4
4068A2:  LSLS            R0, R0, #0x18
4068A4:  VLDR            S8, [R4,#0x60]
4068A8:  VMUL.F32        S0, S0, S2
4068AC:  VMUL.F32        S2, S14, S0
4068B0:  VLDR            S14, [R4,#0x90]
4068B4:  VMUL.F32        S4, S12, S0
4068B8:  VLDR            S12, [R4,#0x68]
4068BC:  VDIV.F32        S6, S6, S14
4068C0:  VMUL.F32        S0, S10, S0
4068C4:  VLDR            S14, =0.0
4068C8:  VLDR            S10, [R4,#0x64]
4068CC:  IT PL
4068CE:  VMOVPL.F32      S14, S2
4068D2:  VMUL.F32        S2, S4, S6
4068D6:  VMUL.F32        S4, S14, S6
4068DA:  VMUL.F32        S0, S0, S6
4068DE:  VADD.F32        S2, S2, S10
4068E2:  VADD.F32        S4, S4, S12
4068E6:  VADD.F32        S0, S8, S0
4068EA:  VSTR            S0, [R4,#0x60]
4068EE:  VSTR            S2, [R4,#0x64]
4068F2:  VSTR            S4, [R4,#0x68]
4068F6:  MOVS            R0, #1
4068F8:  B               loc_4068FC
4068FA:  MOVS            R0, #0
4068FC:  ADD             SP, SP, #0x78 ; 'x'
4068FE:  VPOP            {D8-D15}
406902:  ADD             SP, SP, #4
406904:  POP.W           {R8-R11}
406908:  POP             {R4-R7,PC}
