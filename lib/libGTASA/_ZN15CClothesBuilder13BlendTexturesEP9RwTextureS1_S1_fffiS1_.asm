; =========================================================
; Game Engine Function: _ZN15CClothesBuilder13BlendTexturesEP9RwTextureS1_S1_fffiS1_
; Address            : 0x4598A4 - 0x459A8C
; =========================================================

4598A4:  PUSH            {R4-R7,LR}
4598A6:  ADD             R7, SP, #0xC
4598A8:  PUSH.W          {R8-R11}
4598AC:  SUB             SP, SP, #0x14
4598AE:  STR             R3, [SP,#0x30+var_2C]
4598B0:  LDR             R3, [R7,#arg_C]
4598B2:  LDR             R6, [R0]
4598B4:  LDR             R4, [R2]
4598B6:  LDR.W           R9, [R1]
4598BA:  LDR             R5, [R3]
4598BC:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
4598C0:  MOV             R0, R9
4598C2:  MOVS            R1, #0
4598C4:  MOVS            R2, #2
4598C6:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
4598CA:  MOV             R11, R0
4598CC:  MOV             R0, R4
4598CE:  MOVS            R1, #0
4598D0:  MOVS            R2, #2
4598D2:  STR             R4, [SP,#0x30+var_28]
4598D4:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
4598D8:  MOV             R10, R0
4598DA:  MOV             R0, R6
4598DC:  MOVS            R1, #0
4598DE:  MOVS            R2, #3
4598E0:  STR             R6, [SP,#0x30+var_24]
4598E2:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
4598E6:  MOV             R8, R0
4598E8:  MOV             R0, R5
4598EA:  MOVS            R1, #0
4598EC:  MOVS            R2, #2
4598EE:  STR             R5, [SP,#0x30+var_20]
4598F0:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
4598F4:  LDRD.W          R1, R2, [R9,#0xC]
4598F8:  MULS            R1, R2
4598FA:  CMP             R1, #1
4598FC:  BLT.W           loc_459A66
459900:  LDR             R1, [SP,#0x30+var_2C]
459902:  VLDR            S2, [R7,#arg_4]
459906:  VLDR            S4, [R7,#arg_0]
45990A:  VMOV            S0, R1
45990E:  VLDR            S6, =255.0
459912:  MOVS            R1, #0
459914:  ADD.W           R2, R10, R1,LSL#2
459918:  LDRB            R5, [R2,#1]
45991A:  LDRB            R4, [R2,#2]
45991C:  ADD.W           R2, R0, R1,LSL#2
459920:  LDRB.W          R12, [R2,#1]
459924:  VMOV            S8, R5
459928:  LDRB.W          LR, [R2,#2]
45992C:  VMOV            S10, R4
459930:  LDRB            R3, [R2,#3]
459932:  ADD.W           R2, R8, R1,LSL#2
459936:  LDRB            R5, [R2,#1]
459938:  LDRB            R4, [R2,#2]
45993A:  VMOV            S12, R5
45993E:  ADD.W           R5, R11, R1,LSL#2
459942:  VMOV            S1, R4
459946:  LDRB            R6, [R5,#1]
459948:  LDRB            R5, [R5,#2]
45994A:  VMOV            S14, R6
45994E:  VMOV            S3, R5
459952:  VCVT.F32.U32    S3, S3
459956:  VCVT.F32.U32    S1, S1
45995A:  VCVT.F32.U32    S14, S14
45995E:  VCVT.F32.U32    S12, S12
459962:  VCVT.F32.U32    S10, S10
459966:  VCVT.F32.U32    S8, S8
45996A:  VMUL.F32        S3, S3, S4
45996E:  VMUL.F32        S1, S1, S0
459972:  VMUL.F32        S14, S14, S4
459976:  VMUL.F32        S12, S12, S0
45997A:  VMUL.F32        S10, S10, S2
45997E:  VMUL.F32        S8, S8, S2
459982:  VADD.F32        S1, S1, S3
459986:  VADD.F32        S12, S12, S14
45998A:  VADD.F32        S10, S1, S10
45998E:  VADD.F32        S8, S12, S8
459992:  VCVT.U32.F32    S10, S10
459996:  VCVT.U32.F32    S8, S8
45999A:  LDRB.W          R6, [R10,R1,LSL#2]
45999E:  VMOV            S12, R6
4599A2:  LDRB.W          R6, [R8,R1,LSL#2]
4599A6:  VMOV            R4, S10
4599AA:  VMOV            S14, R6
4599AE:  LDRB.W          R6, [R11,R1,LSL#2]
4599B2:  VMOV            R5, S8
4599B6:  VMOV            S1, R6
4599BA:  SUB.W           LR, LR, R4
4599BE:  LDRB.W          R4, [R0,R1,LSL#2]
4599C2:  VCVT.F32.U32    S1, S1
4599C6:  VCVT.F32.U32    S14, S14
4599CA:  SUB.W           R5, R12, R5
4599CE:  VCVT.F32.U32    S12, S12
4599D2:  SMULBB.W        R5, R5, R3
4599D6:  VMUL.F32        S1, S1, S4
4599DA:  VMUL.F32        S14, S14, S0
4599DE:  VMUL.F32        S12, S12, S2
4599E2:  VADD.F32        S14, S14, S1
4599E6:  VMOV            S1, R5
4599EA:  VADD.F32        S12, S14, S12
4599EE:  VCVT.U32.F32    S12, S12
4599F2:  VMOV            R6, S12
4599F6:  SUBS            R6, R4, R6
4599F8:  SMULBB.W        R6, R6, R3
4599FC:  SMULBB.W        R3, LR, R3
459A00:  VMOV            S14, R6
459A04:  VMOV            S3, R3
459A08:  VCVT.F32.S32    S14, S14
459A0C:  VCVT.F32.S32    S1, S1
459A10:  VCVT.F32.S32    S3, S3
459A14:  VCVT.F32.U32    S12, S12
459A18:  VCVT.F32.U32    S8, S8
459A1C:  VCVT.F32.U32    S10, S10
459A20:  VDIV.F32        S14, S14, S6
459A24:  VADD.F32        S12, S14, S12
459A28:  VDIV.F32        S1, S1, S6
459A2C:  VCVT.U32.F32    S12, S12
459A30:  VDIV.F32        S3, S3, S6
459A34:  VMOV            R3, S12
459A38:  VADD.F32        S8, S1, S8
459A3C:  VADD.F32        S10, S3, S10
459A40:  STRB.W          R3, [R8,R1,LSL#2]
459A44:  VCVT.U32.F32    S8, S8
459A48:  VCVT.U32.F32    S10, S10
459A4C:  ADDS            R1, #1
459A4E:  VMOV            R3, S8
459A52:  STRB            R3, [R2,#1]
459A54:  VMOV            R3, S10
459A58:  STRB            R3, [R2,#2]
459A5A:  LDRD.W          R2, R3, [R9,#0xC]
459A5E:  MULS            R2, R3
459A60:  CMP             R1, R2
459A62:  BLT.W           loc_459914
459A66:  MOV             R0, R9
459A68:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459A6C:  LDR             R0, [SP,#0x30+var_28]
459A6E:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459A72:  LDR             R0, [SP,#0x30+var_24]
459A74:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459A78:  LDR             R0, [SP,#0x30+var_20]
459A7A:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
459A7E:  ADD             SP, SP, #0x14
459A80:  POP.W           {R8-R11}
459A84:  POP.W           {R4-R7,LR}
459A88:  B.W             sub_19F7CC
