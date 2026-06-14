; =========================================================
; Game Engine Function: _Z24RtAnimBlendKeyFrameApplyPvS_
; Address            : 0x390288 - 0x3903D8
; =========================================================

390288:  VLDR            S0, [R1]
39028C:  VLDR            D16, =-1.01
390290:  VCVT.F64.F32    D18, S0
390294:  VCMPE.F64       D18, D16
390298:  VMRS            APSR_nzcv, FPSCR
39029C:  BLT             loc_390300
39029E:  VLDR            D17, =1.01
3902A2:  VCMPE.F64       D18, D17
3902A6:  VMRS            APSR_nzcv, FPSCR
3902AA:  BGT             loc_390300
3902AC:  VLDR            S2, [R1,#4]
3902B0:  VCVT.F64.F32    D18, S2
3902B4:  VCMPE.F64       D18, D16
3902B8:  VMRS            APSR_nzcv, FPSCR
3902BC:  BLT             loc_390300
3902BE:  VCMPE.F64       D18, D17
3902C2:  VMRS            APSR_nzcv, FPSCR
3902C6:  BGT             loc_390300
3902C8:  VLDR            S4, [R1,#8]
3902CC:  VCVT.F64.F32    D18, S4
3902D0:  VCMPE.F64       D18, D16
3902D4:  VMRS            APSR_nzcv, FPSCR
3902D8:  BLT             loc_390300
3902DA:  VCMPE.F64       D18, D17
3902DE:  VMRS            APSR_nzcv, FPSCR
3902E2:  BGT             loc_390300
3902E4:  VLDR            S6, [R1,#0xC]
3902E8:  VCVT.F64.F32    D18, S6
3902EC:  VCMPE.F64       D18, D16
3902F0:  VMRS            APSR_nzcv, FPSCR
3902F4:  BLT             loc_390300
3902F6:  VCMPE.F64       D18, D17
3902FA:  VMRS            APSR_nzcv, FPSCR
3902FE:  BLE             loc_390318
390300:  VLDR            S6, =0.0
390304:  VMOV.I32        Q8, #0
390308:  VMOV.F32        S4, S6
39030C:  VMOV.F32        S2, S6
390310:  VST1.32         {D16-D17}, [R1]
390314:  VMOV.F32        S0, S6
390318:  VMUL.F32        S8, S4, S4
39031C:  MOVS            R2, #0
39031E:  VMUL.F32        S10, S2, S2
390322:  STRD.W          R2, R2, [R0,#0x30]
390326:  VMUL.F32        S5, S0, S0
39032A:  STR             R2, [R0,#0x38]
39032C:  VMUL.F32        S12, S4, S6
390330:  MOVS            R2, #3
390332:  VMUL.F32        S14, S0, S2
390336:  STR             R2, [R0,#0xC]
390338:  VMUL.F32        S1, S2, S6
39033C:  VMUL.F32        S3, S0, S4
390340:  VMUL.F32        S0, S0, S6
390344:  VADD.F32        S6, S10, S8
390348:  VADD.F32        S8, S5, S8
39034C:  VADD.F32        S10, S5, S10
390350:  VMUL.F32        S2, S2, S4
390354:  VMOV.F32        S4, #-2.0
390358:  VADD.F32        S7, S14, S12
39035C:  VSUB.F32        S12, S14, S12
390360:  VSUB.F32        S9, S3, S1
390364:  VADD.F32        S1, S3, S1
390368:  VADD.F32        S8, S8, S8
39036C:  VADD.F32        S14, S2, S0
390370:  VSUB.F32        S0, S2, S0
390374:  VMOV.F32        S2, #1.0
390378:  VMUL.F32        S4, S6, S4
39037C:  VADD.F32        S10, S10, S10
390380:  VADD.F32        S6, S7, S7
390384:  VADD.F32        S3, S9, S9
390388:  VADD.F32        S12, S12, S12
39038C:  VADD.F32        S14, S14, S14
390390:  VADD.F32        S1, S1, S1
390394:  VADD.F32        S4, S4, S2
390398:  VSUB.F32        S8, S2, S8
39039C:  VADD.F32        S0, S0, S0
3903A0:  VSUB.F32        S2, S2, S10
3903A4:  VSTR            S4, [R0]
3903A8:  VSTR            S6, [R0,#4]
3903AC:  VSTR            S3, [R0,#8]
3903B0:  VSTR            S12, [R0,#0x10]
3903B4:  VSTR            S8, [R0,#0x14]
3903B8:  VSTR            S14, [R0,#0x18]
3903BC:  VSTR            S1, [R0,#0x20]
3903C0:  VSTR            S0, [R0,#0x24]
3903C4:  VSTR            S2, [R0,#0x28]
3903C8:  LDR             R2, [R1,#0x10]
3903CA:  STR             R2, [R0,#0x30]
3903CC:  LDR             R2, [R1,#0x14]
3903CE:  STR             R2, [R0,#0x34]
3903D0:  LDR             R1, [R1,#0x18]
3903D2:  STR             R1, [R0,#0x38]
3903D4:  B.W             sub_191010
