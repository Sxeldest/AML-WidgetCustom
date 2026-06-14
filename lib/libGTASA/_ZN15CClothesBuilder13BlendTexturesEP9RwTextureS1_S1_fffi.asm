; =========================================================
; Game Engine Function: _ZN15CClothesBuilder13BlendTexturesEP9RwTextureS1_S1_fffi
; Address            : 0x459A90 - 0x459BFC
; =========================================================

459A90:  PUSH            {R4-R7,LR}
459A92:  ADD             R7, SP, #0xC
459A94:  PUSH.W          {R8-R11}
459A98:  SUB             SP, SP, #4
459A9A:  VPUSH           {D8-D9}
459A9E:  SUB             SP, SP, #0x10
459AA0:  STR             R3, [SP,#0x40+var_40]
459AA2:  MOV             R4, R2
459AA4:  MOV             R11, R1
459AA6:  LDR             R5, [R0]
459AA8:  LDR             R6, [R4]
459AAA:  LDR.W           R9, [R11]
459AAE:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
459AB2:  MOV             R0, R9
459AB4:  MOVS            R1, #0
459AB6:  MOVS            R2, #2
459AB8:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
459ABC:  MOV             R8, R0
459ABE:  VLDR            S16, [R7,#arg_4]
459AC2:  VLDR            S18, [R7,#arg_0]
459AC6:  CMP             R11, R4
459AC8:  MOV             R10, R8
459ACA:  STR             R4, [SP,#0x40+var_38]
459ACC:  BEQ             loc_459ADA
459ACE:  MOV             R0, R6
459AD0:  MOVS            R1, #0
459AD2:  MOVS            R2, #2
459AD4:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
459AD8:  MOV             R10, R0
459ADA:  MOV             R0, R5
459ADC:  MOVS            R1, #0
459ADE:  MOVS            R2, #3
459AE0:  STR             R6, [SP,#0x40+var_3C]
459AE2:  STR             R5, [SP,#0x40+var_34]
459AE4:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
459AE8:  LDRD.W          R1, R2, [R9,#0xC]
459AEC:  MULS            R1, R2
459AEE:  CMP             R1, #1
459AF0:  BLT             loc_459BD0
459AF2:  LDR             R1, [SP,#0x40+var_40]
459AF4:  VMOV            S0, R1
459AF8:  MOVS            R1, #0
459AFA:  LDRB.W          R3, [R0,R1,LSL#2]
459AFE:  ADD.W           R6, R8, R1,LSL#2
459B02:  LDRB.W          R2, [R8,R1,LSL#2]
459B06:  LDRB.W          R4, [R10,R1,LSL#2]
459B0A:  VMOV            S4, R3
459B0E:  VMOV            S2, R2
459B12:  LDRB            R5, [R6,#1]
459B14:  LDRB.W          R12, [R6,#2]
459B18:  ADD.W           R2, R0, R1,LSL#2
459B1C:  VCVT.F32.U32    S2, S2
459B20:  VCVT.F32.U32    S4, S4
459B24:  LDRB            R3, [R2,#1]
459B26:  VMOV            S6, R5
459B2A:  LDRB            R6, [R2,#2]
459B2C:  VMOV            S8, R4
459B30:  VCVT.F32.U32    S6, S6
459B34:  VCVT.F32.U32    S8, S8
459B38:  VMOV            S10, R3
459B3C:  ADD.W           R3, R10, R1,LSL#2
459B40:  VMUL.F32        S2, S2, S18
459B44:  VMUL.F32        S4, S4, S0
459B48:  VMOV            S12, R6
459B4C:  VMOV            S14, R12
459B50:  VCVT.F32.U32    S10, S10
459B54:  VMUL.F32        S8, S8, S16
459B58:  VCVT.F32.U32    S12, S12
459B5C:  VCVT.F32.U32    S14, S14
459B60:  LDRB            R6, [R3,#1]
459B62:  VADD.F32        S2, S4, S2
459B66:  LDRB            R3, [R3,#2]
459B68:  VMUL.F32        S6, S6, S18
459B6C:  VMOV            S1, R6
459B70:  VMOV            S3, R3
459B74:  VCVT.F32.U32    S1, S1
459B78:  VCVT.F32.U32    S3, S3
459B7C:  VMUL.F32        S10, S10, S0
459B80:  VADD.F32        S2, S2, S8
459B84:  VMUL.F32        S14, S14, S18
459B88:  VMUL.F32        S12, S12, S0
459B8C:  VMUL.F32        S4, S1, S16
459B90:  VADD.F32        S6, S10, S6
459B94:  VCVT.U32.F32    S2, S2
459B98:  VMUL.F32        S10, S3, S16
459B9C:  VADD.F32        S12, S12, S14
459BA0:  VADD.F32        S4, S6, S4
459BA4:  VMOV            R3, S2
459BA8:  VADD.F32        S6, S12, S10
459BAC:  STRB.W          R3, [R0,R1,LSL#2]
459BB0:  VCVT.U32.F32    S2, S4
459BB4:  VCVT.U32.F32    S4, S6
459BB8:  ADDS            R1, #1
459BBA:  VMOV            R3, S2
459BBE:  STRB            R3, [R2,#1]
459BC0:  VMOV            R3, S4
459BC4:  STRB            R3, [R2,#2]
459BC6:  LDRD.W          R2, R3, [R9,#0xC]
459BCA:  MULS            R2, R3
459BCC:  CMP             R1, R2
459BCE:  BLT             loc_459AFA
459BD0:  MOV             R0, R9
459BD2:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459BD6:  LDR             R0, [SP,#0x40+var_38]
459BD8:  CMP             R11, R0
459BDA:  ITT NE
459BDC:  LDRNE           R0, [SP,#0x40+var_3C]
459BDE:  BLXNE           j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459BE2:  LDR             R0, [SP,#0x40+var_34]
459BE4:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459BE8:  ADD             SP, SP, #0x10
459BEA:  VPOP            {D8-D9}
459BEE:  ADD             SP, SP, #4
459BF0:  POP.W           {R8-R11}
459BF4:  POP.W           {R4-R7,LR}
459BF8:  B.W             sub_19F7CC
