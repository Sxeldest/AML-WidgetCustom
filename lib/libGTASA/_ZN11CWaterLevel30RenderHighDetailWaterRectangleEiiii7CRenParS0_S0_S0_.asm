; =========================================================
; Game Engine Function: _ZN11CWaterLevel30RenderHighDetailWaterRectangleEiiii7CRenParS0_S0_S0_
; Address            : 0x599AD8 - 0x599CC4
; =========================================================

599AD8:  PUSH            {R4-R7,LR}
599ADA:  ADD             R7, SP, #0xC
599ADC:  PUSH.W          {R8-R11}
599AE0:  SUB             SP, SP, #0x64; int
599AE2:  MOV             R6, R1
599AE4:  MOV             R8, R0
599AE6:  SUB.W           R10, R6, R8
599AEA:  MOV             R5, R3
599AEC:  MOV             R4, R2
599AEE:  SUBS            R0, R4, R5
599AF0:  VMOV            S4, R10
599AF4:  LDR             R1, [R7,#arg_0]
599AF6:  VMOV            S2, R0
599AFA:  ADDS            R0, R5, R4
599AFC:  VMOV.F32        S0, #0.5
599B00:  VCVT.F32.S32    S2, S2
599B04:  VCVT.F32.S32    S4, S4
599B08:  VMUL.F32        S2, S2, S0
599B0C:  VMUL.F32        S4, S4, S0
599B10:  VMUL.F32        S2, S2, S2
599B14:  VMUL.F32        S4, S4, S4
599B18:  VADD.F32        S2, S4, S2
599B1C:  VMOV            S4, R0
599B20:  ADD.W           R0, R6, R8
599B24:  VCVT.F32.S32    S4, S4
599B28:  VSQRT.F32       S2, S2
599B2C:  VMOV            R2, S2; float
599B30:  VMOV            S2, R0
599B34:  LDR             R0, =(TheCamera_ptr - 0x599B42)
599B36:  VMUL.F32        S4, S4, S0
599B3A:  VCVT.F32.S32    S2, S2
599B3E:  ADD             R0, PC; TheCamera_ptr
599B40:  STR             R1, [SP,#0x80+var_20]
599B42:  ADD             R1, SP, #0x80+var_28; CVector *
599B44:  LDR             R0, [R0]; TheCamera ; this
599B46:  VSTR            S4, [SP,#0x80+var_24]
599B4A:  VMUL.F32        S0, S2, S0
599B4E:  VSTR            S0, [SP,#0x80+var_28]
599B52:  BLX.W           j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
599B56:  CMP             R0, #0
599B58:  BEQ.W           loc_599CBC
599B5C:  CMP             R4, R5
599B5E:  MOV             R1, R5
599B60:  MOV             R3, R4
599B62:  ADD.W           R0, R10, R10,LSR#31
599B66:  ITT LT
599B68:  MOVLT           R1, R4; int
599B6A:  MOVLT           R3, R5; int
599B6C:  MOV             LR, R6
599B6E:  MOV.W           R9, R0,ASR#1
599B72:  SUB.W           R12, R3, R1
599B76:  ADD.W           R2, R12, R12,LSR#31
599B7A:  MOV.W           R11, R2,ASR#1
599B7E:  MUL.W           R6, R9, R11
599B82:  ADD.W           R6, R6, R6,LSL#1
599B86:  LSLS            R6, R6, #1
599B88:  CMP.W           R6, #0x1000
599B8C:  BGE             loc_599C00
599B8E:  MOVS            R6, #1
599B90:  ADD.W           R2, R6, R2,ASR#1
599B94:  ADD.W           R0, R6, R0,ASR#1
599B98:  MULS            R0, R2
599B9A:  CMP.W           R0, #0x800
599B9E:  BGE             loc_599C00
599BA0:  MOV             R6, LR
599BA2:  MOV             R0, R8; this
599BA4:  MOV             R2, R6; int
599BA6:  BLX.W           j__ZN11CWaterLevel13SetUpWaterFogEiiii; CWaterLevel::SetUpWaterFog(int,int,int,int)
599BAA:  MOVS            R0, #0
599BAC:  STRD.W          R9, R11, [SP,#0x80+var_34]
599BB0:  STR             R0, [SP,#0x80+var_40]
599BB2:  MOV             R1, R6
599BB4:  LDR             R0, [R7,#arg_20]
599BB6:  MOV             R2, R4
599BB8:  STR             R0, [SP,#0x80+var_60]
599BBA:  MOV             R3, R5
599BBC:  LDR             R0, [R7,#arg_24]
599BBE:  STR             R0, [SP,#0x80+var_5C]
599BC0:  LDR             R0, [R7,#arg_28]
599BC2:  STR             R0, [SP,#0x80+var_58]
599BC4:  LDR             R0, [R7,#arg_2C]
599BC6:  STR             R0, [SP,#0x80+var_54]
599BC8:  LDR             R0, [R7,#arg_30]
599BCA:  STR             R0, [SP,#0x80+var_50]
599BCC:  LDR             R0, [R7,#arg_34]
599BCE:  STR             R0, [SP,#0x80+var_4C]
599BD0:  LDR             R0, [R7,#arg_38]
599BD2:  STR             R0, [SP,#0x80+var_48]
599BD4:  LDR             R0, [R7,#arg_3C]
599BD6:  STR             R0, [SP,#0x80+var_44]
599BD8:  LDR             R0, [R7,#arg_0]
599BDA:  STR             R0, [SP,#0x80+var_80]
599BDC:  LDR             R0, [R7,#arg_4]
599BDE:  STR             R0, [SP,#0x80+var_7C]
599BE0:  LDR             R0, [R7,#arg_8]
599BE2:  STR             R0, [SP,#0x80+var_78]
599BE4:  LDR             R0, [R7,#arg_C]
599BE6:  STR             R0, [SP,#0x80+var_74]
599BE8:  LDR             R0, [R7,#arg_10]
599BEA:  STR             R0, [SP,#0x80+var_70]
599BEC:  LDR             R0, [R7,#arg_14]
599BEE:  STR             R0, [SP,#0x80+var_6C]
599BF0:  LDR             R0, [R7,#arg_18]
599BF2:  STR             R0, [SP,#0x80+var_68]
599BF4:  LDR             R0, [R7,#arg_1C]
599BF6:  STR             R0, [SP,#0x80+var_64]
599BF8:  MOV             R0, R8
599BFA:  BLX.W           j__ZN11CWaterLevel39RenderHighDetailWaterRectangle_OneLayerEiiii7CRenParS0_S0_S0_iiiii; CWaterLevel::RenderHighDetailWaterRectangle_OneLayer(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar,int,int,int,int,int)
599BFE:  B               loc_599CBC
599C00:  LDR             R6, [R7,#arg_3C]
599C02:  CMP             R9, R11
599C04:  MOV             R2, LR
599C06:  LDR             R0, [R7,#arg_0]
599C08:  LDR.W           LR, [R7,#arg_2C]
599C0C:  MOV             R11, R6
599C0E:  LDRD.W          R6, R9, [R7,#arg_14]
599C12:  LDR             R3, [R7,#arg_34]
599C14:  BLE             loc_599C6A
599C16:  LDR             R1, [R7,#arg_30]
599C18:  STR             R3, [SP,#0x80+var_48]
599C1A:  MOV             R3, R4
599C1C:  STR             R1, [SP,#0x80+var_4C]
599C1E:  LDR             R1, [R7,#arg_24]
599C20:  STR             R1, [SP,#0x80+var_58]
599C22:  LDR             R1, [R7,#arg_20]
599C24:  STR             R1, [SP,#0x80+var_5C]
599C26:  LDR             R1, [R7,#arg_10]
599C28:  STR             R6, [SP,#0x80+var_68]
599C2A:  STR             R1, [SP,#0x80+var_6C]
599C2C:  LDR             R1, [R7,#arg_4]
599C2E:  STR             R1, [SP,#0x80+var_78]
599C30:  MOV             R1, R8
599C32:  STRD.W          R5, R0, [SP,#0x80+var_80]
599C36:  LDR             R0, [R7,#arg_38]
599C38:  STR             R0, [SP,#0x80+var_44]
599C3A:  LDR             R0, [R7,#arg_28]
599C3C:  STR             R0, [SP,#0x80+var_54]
599C3E:  LDR             R0, [R7,#arg_8]
599C40:  STR.W           R9, [SP,#0x80+var_64]
599C44:  STR             R0, [SP,#0x80+var_74]
599C46:  LDR             R0, [R7,#arg_1C]
599C48:  STR.W           R11, [SP,#0x80+var_40]
599C4C:  STR.W           LR, [SP,#0x80+var_50]
599C50:  STR             R0, [SP,#0x80+var_60]
599C52:  LDR             R0, [R7,#arg_C]
599C54:  STR             R0, [SP,#0x80+var_70]
599C56:  MOV.W           R0, R10,ASR#31
599C5A:  ADD.W           R0, R10, R0,LSR#30
599C5E:  ASRS            R0, R0, #2
599C60:  ADD.W           R0, R8, R0,LSL#1
599C64:  BLX.W           j__ZN11CWaterLevel29SplitWaterRectangleAlongXLineEiiiii7CRenParS0_S0_S0_; CWaterLevel::SplitWaterRectangleAlongXLine(int,int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
599C68:  B               loc_599CBC
599C6A:  STR             R3, [SP,#0x80+var_48]
599C6C:  LDR             R3, [R7,#arg_30]
599C6E:  STR             R3, [SP,#0x80+var_4C]
599C70:  LDR             R3, [R7,#arg_24]
599C72:  STR             R3, [SP,#0x80+var_58]
599C74:  LDR             R3, [R7,#arg_20]
599C76:  STR             R3, [SP,#0x80+var_5C]
599C78:  MOV             R3, R4
599C7A:  STR             R6, [SP,#0x80+var_68]
599C7C:  LDR             R6, [R7,#arg_10]
599C7E:  STR             R6, [SP,#0x80+var_6C]
599C80:  LDR             R6, [R7,#arg_4]
599C82:  STR             R6, [SP,#0x80+var_78]
599C84:  STRD.W          R5, R0, [SP,#0x80+var_80]
599C88:  LDR             R0, [R7,#arg_38]
599C8A:  STR             R0, [SP,#0x80+var_44]
599C8C:  LDR             R0, [R7,#arg_28]
599C8E:  STR             R0, [SP,#0x80+var_54]
599C90:  LDR             R0, [R7,#arg_8]
599C92:  STR.W           R9, [SP,#0x80+var_64]
599C96:  STR             R0, [SP,#0x80+var_74]
599C98:  LDR             R0, [R7,#arg_1C]
599C9A:  STR.W           R11, [SP,#0x80+var_40]
599C9E:  STR.W           LR, [SP,#0x80+var_50]
599CA2:  STR             R0, [SP,#0x80+var_60]
599CA4:  LDR             R0, [R7,#arg_C]
599CA6:  STR             R0, [SP,#0x80+var_70]
599CA8:  MOV.W           R0, R12,ASR#31
599CAC:  ADD.W           R0, R12, R0,LSR#30
599CB0:  ASRS            R0, R0, #2
599CB2:  ADD.W           R0, R1, R0,LSL#1
599CB6:  MOV             R1, R8
599CB8:  BLX.W           j__ZN11CWaterLevel29SplitWaterRectangleAlongYLineEiiiii7CRenParS0_S0_S0_; CWaterLevel::SplitWaterRectangleAlongYLine(int,int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
599CBC:  ADD             SP, SP, #0x64 ; 'd'
599CBE:  POP.W           {R8-R11}
599CC2:  POP             {R4-R7,PC}
