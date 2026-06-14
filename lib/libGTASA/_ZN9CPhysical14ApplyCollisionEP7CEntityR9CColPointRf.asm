; =========================================================
; Game Engine Function: _ZN9CPhysical14ApplyCollisionEP7CEntityR9CColPointRf
; Address            : 0x401B24 - 0x401E12
; =========================================================

401B24:  PUSH            {R4-R7,LR}
401B26:  ADD             R7, SP, #0xC
401B28:  PUSH.W          {R8-R11}
401B2C:  SUB             SP, SP, #4
401B2E:  VPUSH           {D8-D12}
401B32:  SUB             SP, SP, #0x60
401B34:  MOV             R5, R0
401B36:  MOV             R11, R3
401B38:  LDRB.W          R0, [R5,#0x44]
401B3C:  MOV             R6, R2
401B3E:  MOV             R8, R1
401B40:  LSLS            R0, R0, #0x1B
401B42:  BMI.W           loc_401D16
401B46:  LDR             R0, [R5,#0x14]
401B48:  MOV             R1, R5
401B4A:  VLDR            S0, [R6]
401B4E:  VLDR            S2, [R6,#4]
401B52:  VLDR            S6, [R0,#0x30]
401B56:  VLDR            S8, [R0,#0x34]
401B5A:  VSUB.F32        S18, S0, S6
401B5E:  VLDR            S10, [R0,#0x38]
401B62:  VSUB.F32        S22, S2, S8
401B66:  VLDR            S4, [R6,#8]
401B6A:  ADD             R0, SP, #0xA8+var_54
401B6C:  VSUB.F32        S16, S4, S10
401B70:  VMOV            R9, S18
401B74:  VMOV            R10, S22
401B78:  VSTR            S16, [SP,#0xA8+var_A8]
401B7C:  MOV             R2, R9
401B7E:  MOV             R3, R10
401B80:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
401B84:  VLDR            D16, [R6,#0x10]
401B88:  VLDR            S4, [SP,#0xA8+var_54]
401B8C:  VSTR            D16, [SP,#0xA8+var_60]
401B90:  VLDR            S0, [SP,#0xA8+var_60]
401B94:  VLDR            S2, [SP,#0xA8+var_60+4]
401B98:  VLDR            S6, [SP,#0xA8+var_50]
401B9C:  VMUL.F32        S0, S4, S0
401BA0:  LDR             R0, [R6,#0x18]
401BA2:  VMUL.F32        S2, S6, S2
401BA6:  STR             R0, [SP,#0xA8+var_58]
401BA8:  VLDR            S4, [SP,#0xA8+var_58]
401BAC:  VLDR            S6, [SP,#0xA8+var_4C]
401BB0:  VMUL.F32        S4, S6, S4
401BB4:  VADD.F32        S0, S0, S2
401BB8:  VADD.F32        S20, S0, S4
401BBC:  VCMPE.F32       S20, #0.0
401BC0:  VMRS            APSR_nzcv, FPSCR
401BC4:  BGE.W           loc_401D6A
401BC8:  ADD.W           R0, R6, #0x10
401BCC:  STR             R0, [SP,#0xA8+var_88]
401BCE:  LDR             R1, [R5,#0x14]; CVector *
401BD0:  ADD.W           R2, R5, #0xA8
401BD4:  ADD             R0, SP, #0xA8+var_6C; CMatrix *
401BD6:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
401BDA:  VLDR            S0, [SP,#0xA8+var_6C]
401BDE:  ADD             R0, SP, #0xA8+var_78; CVector *
401BE0:  VLDR            S2, [SP,#0xA8+var_68]
401BE4:  ADD             R1, SP, #0xA8+var_84; CVector *
401BE6:  VLDR            S4, [SP,#0xA8+var_64]
401BEA:  VSUB.F32        S0, S18, S0
401BEE:  VSUB.F32        S2, S22, S2
401BF2:  ADD             R2, SP, #0xA8+var_60
401BF4:  VSUB.F32        S4, S16, S4
401BF8:  VLDR            S24, [R5,#0x90]
401BFC:  VSTR            S0, [SP,#0xA8+var_84]
401C00:  VSTR            S2, [SP,#0xA8+var_80]
401C04:  VSTR            S4, [SP,#0xA8+var_7C]
401C08:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
401C0C:  VLDR            S0, [SP,#0xA8+var_78]
401C10:  VLDR            S2, [SP,#0xA8+var_74]
401C14:  VMUL.F32        S0, S0, S0
401C18:  VLDR            S4, [SP,#0xA8+var_70]
401C1C:  VMUL.F32        S2, S2, S2
401C20:  VMUL.F32        S4, S4, S4
401C24:  VADD.F32        S0, S0, S2
401C28:  VMOV.F32        S2, #1.0
401C2C:  VADD.F32        S0, S0, S4
401C30:  VLDR            S4, [R5,#0x94]
401C34:  VDIV.F32        S6, S2, S24
401C38:  VDIV.F32        S0, S0, S4
401C3C:  VADD.F32        S0, S6, S0
401C40:  VDIV.F32        S18, S2, S0
401C44:  VLDR            S0, [R5,#0xA0]
401C48:  VADD.F32        S0, S0, S2
401C4C:  VMUL.F32        S2, S20, S0
401C50:  VNMUL.F32       S0, S18, S2
401C54:  VSTR            S0, [R11]
401C58:  LDRB.W          R0, [R5,#0x44]
401C5C:  LSLS            R0, R0, #0x1D
401C5E:  BMI             loc_401CF0
401C60:  VMUL.F32        S2, S18, S2
401C64:  VLDR            S4, [SP,#0xA8+var_58]
401C68:  VLDR            S10, =0.3
401C6C:  VMOV            R12, S16
401C70:  LDRB.W          R1, [R5,#0x3A]
401C74:  VLDR            S12, =0.7
401C78:  AND.W           R0, R1, #7
401C7C:  VLDR            S6, [SP,#0xA8+var_60]
401C80:  CMP             R0, #2
401C82:  VCMPE.F32       S4, S12
401C86:  VLDR            S8, [SP,#0xA8+var_60+4]
401C8A:  VMUL.F32        S6, S6, S0
401C8E:  VNMUL.F32       S2, S2, S4
401C92:  LDR.W           LR, =(_ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x401C9E)
401C96:  VMUL.F32        S0, S8, S0
401C9A:  ADD             LR, PC; _ZN6CWorld22bNoMoreCollisionTorqueE_ptr
401C9C:  LDR.W           R4, [LR]; CWorld::bNoMoreCollisionTorque ...
401CA0:  VMOV            R1, S6
401CA4:  VMUL.F32        S10, S2, S10
401CA8:  VMOV.F32        S14, S2
401CAC:  VMOV            R2, S0
401CB0:  IT EQ
401CB2:  VMOVEQ.F32      S14, S10
401CB6:  VMRS            APSR_nzcv, FPSCR
401CBA:  IT LT
401CBC:  VMOVLT.F32      S2, S14
401CC0:  LDRB.W          LR, [R4]; CWorld::bNoMoreCollisionTorque
401CC4:  VMOV            R3, S2
401CC8:  CMP             R0, #2
401CCA:  MOV.W           R0, #0
401CCE:  MOV.W           R4, #0
401CD2:  IT NE
401CD4:  MOVNE           R0, #1
401CD6:  CMP.W           LR, #0
401CDA:  IT EQ
401CDC:  MOVEQ           R4, #1
401CDE:  STMEA.W         SP, {R9,R10,R12}
401CE2:  ORRS            R0, R4
401CE4:  STR             R0, [SP,#0xA8+var_9C]
401CE6:  MOV             R0, R5
401CE8:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
401CEC:  VLDR            S0, [R11]
401CF0:  VDIV.F32        S0, S0, S18
401CF4:  LDR             R0, =(AudioEngine_ptr - 0x401D00)
401CF6:  LDR.W           R12, [SP,#0xA8+var_88]
401CFA:  MOVS            R2, #0
401CFC:  ADD             R0, PC; AudioEngine_ptr
401CFE:  LDRB.W          R3, [R6,#0x20]
401D02:  LDRB.W          R1, [R6,#0x23]
401D06:  MOV.W           R4, #0x3F800000
401D0A:  LDR             R0, [R0]; AudioEngine
401D0C:  STRD.W          R4, R2, [SP,#0xA8+var_98]
401D10:  STR             R2, [SP,#0xA8+var_90]
401D12:  STR             R1, [SP,#0xA8+var_A8]
401D14:  B               loc_401DF2
401D16:  VLDR            S0, [R6,#0x10]
401D1A:  VLDR            S6, [R5,#0x48]
401D1E:  VLDR            S2, [R6,#0x14]
401D22:  VLDR            S8, [R5,#0x4C]
401D26:  VMUL.F32        S0, S6, S0
401D2A:  VLDR            S4, [R6,#0x18]
401D2E:  VMUL.F32        S2, S8, S2
401D32:  VLDR            S10, [R5,#0x50]
401D36:  VMUL.F32        S4, S10, S4
401D3A:  VADD.F32        S0, S0, S2
401D3E:  VADD.F32        S0, S0, S4
401D42:  VCMPE.F32       S0, #0.0
401D46:  VMRS            APSR_nzcv, FPSCR
401D4A:  BGE             loc_401D6A
401D4C:  VLDR            S2, [R5,#0x90]
401D50:  ADD.W           R12, R6, #0x10
401D54:  VNMUL.F32       S2, S0, S2
401D58:  VSTR            S2, [R11]
401D5C:  LDR             R0, [R5,#0x44]
401D5E:  TST.W           R0, #0x60
401D62:  BEQ             loc_401D6E
401D64:  VLDR            S0, [R5,#0x90]
401D68:  B               loc_401DD2
401D6A:  MOVS            R0, #0
401D6C:  B               loc_401E04
401D6E:  VMOV.F32        S4, #1.0
401D72:  VLDR            S0, [R5,#0x90]
401D76:  VLDR            S12, [R6,#0x10]
401D7A:  LSLS            R0, R0, #0x18
401D7C:  VLDR            S14, [R6,#0x14]
401D80:  VLDR            S1, [R6,#0x18]
401D84:  VMUL.F32        S12, S12, S2
401D88:  VMUL.F32        S14, S14, S2
401D8C:  VLDR            S3, =0.0
401D90:  VMUL.F32        S2, S1, S2
401D94:  VLDR            S6, [R5,#0x48]
401D98:  VLDR            S8, [R5,#0x4C]
401D9C:  VDIV.F32        S4, S4, S0
401DA0:  VLDR            S10, [R5,#0x50]
401DA4:  IT PL
401DA6:  VMOVPL.F32      S3, S2
401DAA:  VMUL.F32        S2, S12, S4
401DAE:  VMUL.F32        S12, S14, S4
401DB2:  VMUL.F32        S4, S3, S4
401DB6:  VADD.F32        S2, S6, S2
401DBA:  VADD.F32        S6, S12, S8
401DBE:  VADD.F32        S4, S4, S10
401DC2:  VSTR            S2, [R5,#0x48]
401DC6:  VSTR            S6, [R5,#0x4C]
401DCA:  VSTR            S4, [R5,#0x50]
401DCE:  VLDR            S2, [R11]
401DD2:  LDR             R0, =(AudioEngine_ptr - 0x401DE2)
401DD4:  MOVS            R4, #0
401DD6:  LDRB.W          R2, [R6,#0x23]
401DDA:  MOV.W           R1, #0x3F800000
401DDE:  ADD             R0, PC; AudioEngine_ptr
401DE0:  LDRB.W          R3, [R6,#0x20]; unsigned __int8
401DE4:  STRD.W          R1, R4, [SP,#0xA8+var_98]; float
401DE8:  VDIV.F32        S0, S2, S0
401DEC:  STR             R4, [SP,#0xA8+var_90]; unsigned __int8
401DEE:  LDR             R0, [R0]; AudioEngine ; this
401DF0:  STR             R2, [SP,#0xA8+var_A8]; unsigned __int8
401DF2:  MOV             R1, R5; CEntity *
401DF4:  MOV             R2, R8; CEntity *
401DF6:  STRD.W          R6, R12, [SP,#0xA8+var_A4]; CVector *
401DFA:  VSTR            S0, [SP,#0xA8+var_9C]
401DFE:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
401E02:  MOVS            R0, #1
401E04:  ADD             SP, SP, #0x60 ; '`'
401E06:  VPOP            {D8-D12}
401E0A:  ADD             SP, SP, #4
401E0C:  POP.W           {R8-R11}
401E10:  POP             {R4-R7,PC}
