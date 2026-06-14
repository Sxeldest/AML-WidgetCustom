; =========================================================
; Game Engine Function: _ZN10CCullZones22AddMirrorAttributeZoneERK7CVectorfffffftffff
; Address            : 0x5D0250 - 0x5D0350
; =========================================================

5D0250:  PUSH            {R7,LR}
5D0252:  MOV             R7, SP
5D0254:  VMOV            S4, R1
5D0258:  VLDR            S6, [R0]
5D025C:  VLDR            S0, [R7,#8+arg_18]
5D0260:  VMOV            S12, R3
5D0264:  VSUB.F32        S6, S6, S4
5D0268:  VLDR            S2, =100.0
5D026C:  VLDR            S10, [R7,#8+arg_14]
5D0270:  VCVT.S32.F32    S12, S12
5D0274:  VLDR            S3, [R7,#8+arg_0]
5D0278:  VMUL.F32        S0, S0, S2
5D027C:  LDR             R1, =(_ZN10CCullZones23NumMirrorAttributeZonesE_ptr - 0x5D028E)
5D027E:  VMUL.F32        S10, S10, S2
5D0282:  VLDR            S1, [R7,#8+arg_1C]
5D0286:  VMOV            S8, R2
5D028A:  ADD             R1, PC; _ZN10CCullZones23NumMirrorAttributeZonesE_ptr
5D028C:  VLDR            S14, [R7,#8+arg_4]
5D0290:  VMUL.F32        S2, S1, S2
5D0294:  LDR             R3, =(_ZN10CCullZones21aMirrorAttributeZonesE_ptr - 0x5D02AE)
5D0296:  VSUB.F32        S6, S6, S3
5D029A:  LDR.W           R12, [R1]; CCullZones::NumMirrorAttributeZones ...
5D029E:  VADD.F32        S1, S3, S3
5D02A2:  VLDR            S3, [R7,#8+arg_8]
5D02A6:  VADD.F32        S5, S14, S14
5D02AA:  ADD             R3, PC; _ZN10CCullZones21aMirrorAttributeZonesE_ptr
5D02AC:  VCVT.S32.F32    S3, S3
5D02B0:  LDR.W           LR, [R12]; CCullZones::NumMirrorAttributeZones
5D02B4:  VCVT.S32.F32    S0, S0
5D02B8:  LDR             R3, [R3]; CCullZones::aMirrorAttributeZones ...
5D02BA:  VCVT.S32.F32    S10, S10
5D02BE:  VLDR            S9, [R7,#8+arg_10]
5D02C2:  VADD.F32        S4, S4, S4
5D02C6:  ADD.W           R2, LR, LR,LSL#1
5D02CA:  VCVT.S32.F32    S6, S6
5D02CE:  VADD.F32        S7, S8, S8
5D02D2:  VCVT.S32.F32    S5, S5
5D02D6:  VMOV            R1, S6
5D02DA:  STRH.W          R1, [R3,R2,LSL#3]
5D02DE:  ADD.W           R1, R3, R2,LSL#3
5D02E2:  VLDR            S6, [R0,#4]
5D02E6:  VCVT.S32.F32    S2, S2
5D02EA:  VCVT.S32.F32    S1, S1
5D02EE:  LDR             R0, [R7,#8+arg_C]
5D02F0:  VSUB.F32        S6, S6, S8
5D02F4:  VCVT.S32.F32    S8, S7
5D02F8:  VCVT.S32.F32    S4, S4
5D02FC:  VMOV            R2, S4
5D0300:  VSUB.F32        S4, S6, S14
5D0304:  STRH            R2, [R1,#4]
5D0306:  VMOV            R2, S8
5D030A:  STRH            R2, [R1,#6]
5D030C:  VMOV            R2, S12
5D0310:  STRH            R2, [R1,#0xC]
5D0312:  VMOV            R2, S1
5D0316:  STRH            R2, [R1,#8]
5D0318:  VMOV            R2, S5
5D031C:  STRH            R2, [R1,#0xA]
5D031E:  VMOV            R2, S3
5D0322:  STRH            R2, [R1,#0xE]
5D0324:  STRB            R0, [R1,#0x17]
5D0326:  VMOV            R0, S10
5D032A:  VSTR            S9, [R1,#0x10]
5D032E:  STRB            R0, [R1,#0x14]
5D0330:  VMOV            R0, S0
5D0334:  STRB            R0, [R1,#0x15]
5D0336:  VMOV            R0, S2
5D033A:  VCVT.S32.F32    S0, S4
5D033E:  STRB            R0, [R1,#0x16]
5D0340:  VMOV            R0, S0
5D0344:  STRH            R0, [R1,#2]
5D0346:  ADD.W           R0, LR, #1
5D034A:  STR.W           R0, [R12]; CCullZones::NumMirrorAttributeZones
5D034E:  POP             {R7,PC}
