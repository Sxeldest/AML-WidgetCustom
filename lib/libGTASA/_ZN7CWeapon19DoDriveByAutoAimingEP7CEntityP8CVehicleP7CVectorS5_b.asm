; =========================================================
; Game Engine Function: _ZN7CWeapon19DoDriveByAutoAimingEP7CEntityP8CVehicleP7CVectorS5_b
; Address            : 0x5DFB30 - 0x5DFEC4
; =========================================================

5DFB30:  PUSH            {R4-R7,LR}
5DFB32:  ADD             R7, SP, #0xC
5DFB34:  PUSH.W          {R8-R11}
5DFB38:  SUB             SP, SP, #4
5DFB3A:  VPUSH           {D8-D10}
5DFB3E:  SUB             SP, SP, #0xB0
5DFB40:  MOVS            R4, #0
5DFB42:  MOV             R11, R0
5DFB44:  MOV             R5, R2
5DFB46:  CMP.W           R11, #0
5DFB4A:  STRH.W          R4, [R7,#var_BA]
5DFB4E:  STRH.W          R4, [SP,#0xE8+var_BC]
5DFB52:  BEQ.W           loc_5DFEB6
5DFB56:  STR             R1, [SP,#0xE8+var_C8]
5DFB58:  ADD             R0, SP, #0xE8+var_B8
5DFB5A:  VLDR            S0, [R5]
5DFB5E:  MOVS            R6, #word_10
5DFB60:  VLDR            S6, [R3]
5DFB64:  MOV.W           R10, #1
5DFB68:  VLDR            S2, [R5,#4]
5DFB6C:  MOVS            R2, #1; float
5DFB6E:  VLDR            S8, [R3,#4]
5DFB72:  VSUB.F32        S0, S6, S0
5DFB76:  VLDR            S4, [R5,#8]
5DFB7A:  VSUB.F32        S2, S8, S2
5DFB7E:  STR             R3, [SP,#0xE8+var_C4]
5DFB80:  VLDR            S10, [R3,#8]
5DFB84:  SUB.W           R3, R7, #-var_BA; bool
5DFB88:  STRD.W          R6, R0, [SP,#0xE8+var_E8]; __int16 *
5DFB8C:  MOV             R0, R5; this
5DFB8E:  VSUB.F32        S4, S10, S4
5DFB92:  STRD.W          R4, R4, [SP,#0xE8+var_E0]; CEntity **
5DFB96:  STRD.W          R10, R4, [SP,#0xE8+var_D8]; bool
5DFB9A:  VMUL.F32        S0, S0, S0
5DFB9E:  LDR.W           R8, [R7,#arg_0]
5DFBA2:  STR             R4, [SP,#0xE8+var_D0]; bool
5DFBA4:  VMUL.F32        S2, S2, S2
5DFBA8:  VMUL.F32        S4, S4, S4
5DFBAC:  VADD.F32        S0, S0, S2
5DFBB0:  VADD.F32        S0, S0, S4
5DFBB4:  VSQRT.F32       S0, S0
5DFBB8:  VMOV            R9, S0
5DFBBC:  MOV             R1, R9; CVector *
5DFBBE:  BLX.W           j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
5DFBC2:  CMP.W           R8, #1
5DFBC6:  BNE             loc_5DFBF2
5DFBC8:  LDRSH.W         R0, [R7,#var_BA]
5DFBCC:  ADD             R2, SP, #0xE8+var_B8
5DFBCE:  MOVS            R1, #0
5DFBD0:  ADD             R3, SP, #0xE8+var_BC; bool
5DFBD2:  ADD.W           R0, R2, R0,LSL#2
5DFBD6:  MOVS            R2, #1; float
5DFBD8:  STRD.W          R6, R0, [SP,#0xE8+var_E8]; __int16 *
5DFBDC:  MOV             R0, R5; this
5DFBDE:  STRD.W          R1, R10, [SP,#0xE8+var_E0]; CEntity **
5DFBE2:  STRD.W          R1, R1, [SP,#0xE8+var_D8]; bool
5DFBE6:  STR             R1, [SP,#0xE8+var_D0]; bool
5DFBE8:  MOV             R1, R9; CVector *
5DFBEA:  BLX.W           j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
5DFBEE:  LDRH.W          R4, [SP,#0xE8+var_BC]
5DFBF2:  LDRH.W          R0, [R7,#var_BA]
5DFBF6:  ADD             R0, R4
5DFBF8:  LSLS            R1, R0, #0x10
5DFBFA:  CMP             R1, #1
5DFBFC:  BLT.W           loc_5DFDB2
5DFC00:  VMOV.F32        S18, #5.0
5DFC04:  SXTH.W          R8, R0
5DFC08:  VLDR            S16, =10000.0
5DFC0C:  ADD             R4, SP, #0xE8+var_B8
5DFC0E:  STR             R0, [SP,#0xE8+var_C0]
5DFC10:  MOV.W           R9, #0
5DFC14:  LDRD.W          R6, R1, [SP,#0xE8+var_C8]; CVector *
5DFC18:  MOV.W           R10, #0
5DFC1C:  VLDR            S20, =0.15
5DFC20:  LDR.W           R0, [R4,R9,LSL#2]
5DFC24:  CMP             R0, R11
5DFC26:  BEQ.W           loc_5DFDA2
5DFC2A:  LDRB.W          R3, [R0,#0x3A]
5DFC2E:  AND.W           R3, R3, #7
5DFC32:  CMP             R3, #3
5DFC34:  BNE             loc_5DFC4C
5DFC36:  LDR.W           R3, [R0,#0x44C]
5DFC3A:  BIC.W           R3, R3, #1
5DFC3E:  CMP             R3, #0x36 ; '6'
5DFC40:  ITT NE
5DFC42:  LDRNE.W         R3, [R0,#0x100]
5DFC46:  CMPNE           R3, R6
5DFC48:  BEQ.W           loc_5DFDA2
5DFC4C:  LDR             R3, [R0,#0x14]; CVector *
5DFC4E:  ADD.W           R2, R3, #0x30 ; '0'
5DFC52:  CMP             R3, #0
5DFC54:  IT EQ
5DFC56:  ADDEQ           R2, R0, #4; CVector *
5DFC58:  MOV             R0, R5; this
5DFC5A:  BLX.W           j__ZN10CCollision10DistToLineEPK7CVectorS2_S2_; CCollision::DistToLine(CVector const*,CVector const*,CVector const*)
5DFC5E:  LDR.W           R1, [R4,R9,LSL#2]
5DFC62:  VMOV            S6, R0
5DFC66:  LDR             R6, [SP,#0xE8+var_C8]
5DFC68:  LDR             R2, [R1,#0x14]
5DFC6A:  LDR.W           R3, [R6,#0x5A4]
5DFC6E:  ADD.W           R0, R2, #0x30 ; '0'
5DFC72:  CMP             R2, #0
5DFC74:  IT EQ
5DFC76:  ADDEQ           R0, R1, #4
5DFC78:  SUBS            R1, R3, #3
5DFC7A:  CMP             R1, #1
5DFC7C:  BHI             loc_5DFCD6
5DFC7E:  LDR             R1, [R6,#0x14]
5DFC80:  VLDR            S0, [R0]
5DFC84:  VLDR            S4, [R0,#4]
5DFC88:  CMP             R1, #0
5DFC8A:  VLDR            S2, [R0,#8]
5DFC8E:  ADD.W           R0, R1, #0x30 ; '0'
5DFC92:  IT EQ
5DFC94:  ADDEQ           R0, R6, #4
5DFC96:  VLDR            S8, [R0]
5DFC9A:  VLDR            S10, [R0,#4]
5DFC9E:  VSUB.F32        S8, S0, S8
5DFCA2:  VLDR            S12, [R0,#8]
5DFCA6:  VSUB.F32        S10, S4, S10
5DFCAA:  VSUB.F32        S12, S2, S12
5DFCAE:  VMUL.F32        S8, S8, S8
5DFCB2:  VMUL.F32        S10, S10, S10
5DFCB6:  VMUL.F32        S12, S12, S12
5DFCBA:  VADD.F32        S8, S8, S10
5DFCBE:  VADD.F32        S8, S8, S12
5DFCC2:  VSQRT.F32       S8, S8
5DFCC6:  VCMPE.F32       S8, S18
5DFCCA:  VMRS            APSR_nzcv, FPSCR
5DFCCE:  BGE             loc_5DFD2C
5DFCD0:  VDIV.F32        S6, S6, S18
5DFCD4:  B               loc_5DFD30
5DFCD6:  LDR.W           R1, [R11,#0x14]
5DFCDA:  VLDR            S0, [R0]
5DFCDE:  VLDR            S4, [R0,#4]
5DFCE2:  CMP             R1, #0
5DFCE4:  VLDR            S2, [R0,#8]
5DFCE8:  ADD.W           R0, R1, #0x30 ; '0'
5DFCEC:  IT EQ
5DFCEE:  ADDEQ.W         R0, R11, #4
5DFCF2:  VLDR            S8, [R0]
5DFCF6:  VLDR            S10, [R0,#4]
5DFCFA:  VSUB.F32        S8, S0, S8
5DFCFE:  VLDR            S12, [R0,#8]
5DFD02:  VSUB.F32        S10, S4, S10
5DFD06:  VSUB.F32        S12, S2, S12
5DFD0A:  VMUL.F32        S8, S8, S8
5DFD0E:  VMUL.F32        S10, S10, S10
5DFD12:  VMUL.F32        S12, S12, S12
5DFD16:  VADD.F32        S8, S8, S10
5DFD1A:  VADD.F32        S8, S8, S12
5DFD1E:  VSQRT.F32       S8, S8
5DFD22:  VMUL.F32        S8, S8, S20
5DFD26:  VADD.F32        S6, S6, S8
5DFD2A:  B               loc_5DFD30
5DFD2C:  VDIV.F32        S6, S6, S8
5DFD30:  LDR             R1, [SP,#0xE8+var_C4]
5DFD32:  MOVS            R0, #0
5DFD34:  VLDR            S8, [R5]
5DFD38:  MOVS            R3, #0
5DFD3A:  VLDR            S10, [R5,#4]
5DFD3E:  VLDR            S14, [R1]
5DFD42:  VSUB.F32        S0, S0, S8
5DFD46:  VLDR            S1, [R1,#4]
5DFD4A:  VSUB.F32        S4, S4, S10
5DFD4E:  VSUB.F32        S8, S14, S8
5DFD52:  VLDR            S12, [R5,#8]
5DFD56:  VSUB.F32        S10, S1, S10
5DFD5A:  VLDR            S3, [R1,#8]
5DFD5E:  VSUB.F32        S2, S2, S12
5DFD62:  VSUB.F32        S12, S3, S12
5DFD66:  VMUL.F32        S0, S8, S0
5DFD6A:  VMUL.F32        S4, S10, S4
5DFD6E:  VMUL.F32        S2, S12, S2
5DFD72:  VADD.F32        S0, S0, S4
5DFD76:  VADD.F32        S0, S0, S2
5DFD7A:  VCMPE.F32       S0, #0.0
5DFD7E:  VMRS            APSR_nzcv, FPSCR
5DFD82:  VCMPE.F32       S6, S16
5DFD86:  IT GT
5DFD88:  MOVGT           R0, #1
5DFD8A:  VMRS            APSR_nzcv, FPSCR
5DFD8E:  IT LT
5DFD90:  MOVLT           R3, #1
5DFD92:  ANDS            R0, R3
5DFD94:  IT NE
5DFD96:  VMOVNE.F32      S16, S6
5DFD9A:  LDR             R0, [SP,#0xE8+var_C0]
5DFD9C:  IT NE
5DFD9E:  MOVNE           R0, R10
5DFDA0:  STR             R0, [SP,#0xE8+var_C0]
5DFDA2:  ADD.W           R10, R10, #1
5DFDA6:  SXTH.W          R9, R10
5DFDAA:  CMP             R8, R9
5DFDAC:  BGT.W           loc_5DFC20
5DFDB0:  B               loc_5DFDBC
5DFDB2:  VLDR            S16, =10000.0
5DFDB6:  ADD             R4, SP, #0xE8+var_B8
5DFDB8:  STR             R0, [SP,#0xE8+var_C0]
5DFDBA:  LDR             R6, [SP,#0xE8+var_C8]
5DFDBC:  MOV             R0, R6; this
5DFDBE:  BLX.W           j__ZN8CVehicle24GetPlaneGunsAutoAimAngleEv; CVehicle::GetPlaneGunsAutoAimAngle(void)
5DFDC2:  VMOV.F32        S2, #0.5
5DFDC6:  VMOV            S0, R0
5DFDCA:  VCMPE.F32       S0, S2
5DFDCE:  VMRS            APSR_nzcv, FPSCR
5DFDD2:  BLE             loc_5DFDF2
5DFDD4:  VLDR            S2, =3.1416
5DFDD8:  VMUL.F32        S0, S0, S2
5DFDDC:  VLDR            S2, =180.0
5DFDE0:  VDIV.F32        S0, S0, S2
5DFDE4:  VMOV            R0, S0; x
5DFDE8:  BLX.W           tanf
5DFDEC:  VMOV            S0, R0
5DFDF0:  B               loc_5DFDF6
5DFDF2:  VMOV.F32        S0, #2.5
5DFDF6:  LDR             R3, [SP,#0xE8+var_C4]
5DFDF8:  VCMPE.F32       S16, S0
5DFDFC:  VMRS            APSR_nzcv, FPSCR
5DFE00:  BGE             loc_5DFEB6
5DFE02:  LDR             R0, [SP,#0xE8+var_C0]
5DFE04:  VLDR            S0, [R3]
5DFE08:  VLDR            S6, [R5]
5DFE0C:  SXTH            R0, R0
5DFE0E:  VLDR            S2, [R3,#4]
5DFE12:  LDR.W           R0, [R4,R0,LSL#2]
5DFE16:  VSUB.F32        S0, S6, S0
5DFE1A:  VLDR            S8, [R5,#4]
5DFE1E:  VLDR            S4, [R3,#8]
5DFE22:  LDR             R1, [R0,#0x14]
5DFE24:  VSUB.F32        S2, S8, S2
5DFE28:  VLDR            S10, [R5,#8]
5DFE2C:  ADD.W           R2, R1, #0x30 ; '0'
5DFE30:  CMP             R1, #0
5DFE32:  IT EQ
5DFE34:  ADDEQ           R2, R0, #4
5DFE36:  VSUB.F32        S4, S10, S4
5DFE3A:  VLDR            S12, [R2]
5DFE3E:  VMUL.F32        S0, S0, S0
5DFE42:  VLDR            S14, [R2,#4]
5DFE46:  VSUB.F32        S5, S6, S12
5DFE4A:  VLDR            S1, [R2,#8]
5DFE4E:  VSUB.F32        S3, S8, S14
5DFE52:  VMUL.F32        S2, S2, S2
5DFE56:  VSUB.F32        S7, S10, S1
5DFE5A:  VMUL.F32        S4, S4, S4
5DFE5E:  VMUL.F32        S5, S5, S5
5DFE62:  VMUL.F32        S3, S3, S3
5DFE66:  VADD.F32        S0, S0, S2
5DFE6A:  VMUL.F32        S2, S7, S7
5DFE6E:  VADD.F32        S3, S5, S3
5DFE72:  VADD.F32        S0, S0, S4
5DFE76:  VSUB.F32        S4, S14, S8
5DFE7A:  VADD.F32        S2, S3, S2
5DFE7E:  VSQRT.F32       S0, S0
5DFE82:  VSQRT.F32       S2, S2
5DFE86:  VDIV.F32        S0, S0, S2
5DFE8A:  VSUB.F32        S2, S12, S6
5DFE8E:  VSUB.F32        S12, S1, S10
5DFE92:  VMUL.F32        S4, S4, S0
5DFE96:  VMUL.F32        S2, S2, S0
5DFE9A:  VMUL.F32        S0, S12, S0
5DFE9E:  VADD.F32        S4, S8, S4
5DFEA2:  VADD.F32        S2, S6, S2
5DFEA6:  VADD.F32        S0, S10, S0
5DFEAA:  VSTR            S2, [R3]
5DFEAE:  VSTR            S4, [R3,#4]
5DFEB2:  VSTR            S0, [R3,#8]
5DFEB6:  ADD             SP, SP, #0xB0
5DFEB8:  VPOP            {D8-D10}
5DFEBC:  ADD             SP, SP, #4
5DFEBE:  POP.W           {R8-R11}
5DFEC2:  POP             {R4-R7,PC}
