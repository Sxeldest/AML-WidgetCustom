; =========================================================
; Game Engine Function: _ZN11CWaterLevel29RenderHighDetailWaterTriangleEii7CRenPariiS0_iiS0_
; Address            : 0x598A9C - 0x598BF4
; =========================================================

598A9C:  PUSH            {R4-R7,LR}
598A9E:  ADD             R7, SP, #0xC
598AA0:  PUSH.W          {R8-R11}
598AA4:  SUB             SP, SP, #0x5C
598AA6:  LDR.W           R9, [R7,#arg_8]
598AAA:  MOV             R6, R0
598AAC:  STR             R3, [SP,#0x78+var_2C]
598AAE:  MOV             R5, R1
598AB0:  SUB.W           R4, R9, R6
598AB4:  VLDR            S2, =0.71
598AB8:  LDR             R1, [R7,#arg_C]
598ABA:  MOV             R10, R2
598ABC:  VMOV            S0, R4
598AC0:  ADD.W           R0, R9, R6
598AC4:  ADD             R1, R5
598AC6:  VLDR            S4, =0.33333
598ACA:  VCVT.F32.S32    S0, S0
598ACE:  LDRD.W          R11, R8, [R7,#arg_20]
598AD2:  ADD             R1, R8
598AD4:  ADD             R0, R11
598AD6:  VMUL.F32        S0, S0, S2
598ADA:  VMOV            S2, R1
598ADE:  ADD             R1, SP, #0x78+var_28; CVector *
598AE0:  VCVT.F32.S32    S2, S2
598AE4:  VMOV            R2, S0; float
598AE8:  VMOV            S0, R0
598AEC:  LDR             R0, =(TheCamera_ptr - 0x598AF6)
598AEE:  VCVT.F32.S32    S0, S0
598AF2:  ADD             R0, PC; TheCamera_ptr
598AF4:  VMUL.F32        S2, S2, S4
598AF8:  STR.W           R10, [SP,#0x78+var_20]
598AFC:  LDR             R0, [R0]; TheCamera ; this
598AFE:  VMUL.F32        S0, S0, S4
598B02:  VSTR            S2, [SP,#0x78+var_24]
598B06:  VSTR            S0, [SP,#0x78+var_28]
598B0A:  BLX.W           j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
598B0E:  CMP             R0, #0
598B10:  BEQ             loc_598BEC
598B12:  ADD.W           R0, R4, R4,LSR#31
598B16:  CMP.W           R4, #0xFFFFFFFF
598B1A:  MOV.W           LR, #0
598B1E:  MOV.W           R3, R0,ASR#1
598B22:  BLT             loc_598B4A
598B24:  SUBS            R0, R3, #1
598B26:  MOV.W           LR, #0
598B2A:  UMULL.W         R0, R1, R3, R0
598B2E:  AND.W           R1, R1, #1
598B32:  MOVS.W          R1, R1,LSR#1
598B36:  MOV.W           R0, R0,RRX
598B3A:  ADD.W           R0, R0, R3,LSL#1
598B3E:  ADDS            R0, #1
598B40:  CMP.W           R0, #0x800
598B44:  IT GE
598B46:  MOVGE.W         LR, #1
598B4A:  MUL.W           R2, R3, R3
598B4E:  LDRD.W          R1, R12, [R7,#arg_28]
598B52:  MOVS            R0, #0
598B54:  ADD.W           R2, R2, R2,LSL#1
598B58:  CMP.W           R0, R2,LSR#12
598B5C:  BNE             loc_598BA6
598B5E:  CMP.W           LR, #1
598B62:  BEQ             loc_598BA6
598B64:  MOVS            R2, #0
598B66:  LDR             R0, [R7,#arg_14]
598B68:  STR             R3, [SP,#0x78+var_34]
598B6A:  STR             R2, [SP,#0x78+var_40]
598B6C:  MOV             R2, R10
598B6E:  STRD.W          R1, R12, [SP,#0x78+var_50]
598B72:  MOV             R1, R5
598B74:  STRD.W          R11, R8, [SP,#0x78+var_58]
598B78:  STR             R0, [SP,#0x78+var_64]
598B7A:  LDR             R0, [R7,#arg_10]
598B7C:  STR             R0, [SP,#0x78+var_68]
598B7E:  LDR             R0, [R7,#arg_C]
598B80:  STRD.W          R9, R0, [SP,#0x78+var_70]
598B84:  LDR             R0, [R7,#arg_30]
598B86:  STR             R0, [SP,#0x78+var_48]
598B88:  LDR             R0, [R7,#arg_18]
598B8A:  STR             R0, [SP,#0x78+var_60]
598B8C:  LDR             R0, [R7,#arg_0]
598B8E:  STR             R0, [SP,#0x78+var_78]
598B90:  LDR             R0, [R7,#arg_34]
598B92:  STR             R0, [SP,#0x78+var_44]
598B94:  LDR             R0, [R7,#arg_1C]
598B96:  LDR             R3, [SP,#0x78+var_2C]
598B98:  STR             R0, [SP,#0x78+var_5C]
598B9A:  LDR             R0, [R7,#arg_4]
598B9C:  STR             R0, [SP,#0x78+var_74]
598B9E:  MOV             R0, R6
598BA0:  BLX             j__ZN11CWaterLevel38RenderHighDetailWaterTriangle_OneLayerEii7CRenPariiS0_iiS0_iiii; CWaterLevel::RenderHighDetailWaterTriangle_OneLayer(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar,int,int,int,int)
598BA4:  B               loc_598BEC
598BA6:  LDR             R0, [R7,#arg_14]
598BA8:  MOV             R2, R5
598BAA:  STRD.W          R1, R12, [SP,#0x78+var_4C]
598BAE:  MOV             R1, R6
598BB0:  STRD.W          R11, R8, [SP,#0x78+var_54]
598BB4:  MOV             R3, R10
598BB6:  STR             R0, [SP,#0x78+var_60]
598BB8:  LDR             R0, [R7,#arg_10]
598BBA:  STR             R0, [SP,#0x78+var_64]
598BBC:  LDR             R0, [SP,#0x78+var_2C]
598BBE:  STR.W           R9, [SP,#0x78+var_6C]
598BC2:  STR             R0, [SP,#0x78+var_78]
598BC4:  LDR             R0, [R7,#arg_30]
598BC6:  STR             R0, [SP,#0x78+var_44]
598BC8:  LDR             R0, [R7,#arg_18]
598BCA:  STR             R0, [SP,#0x78+var_5C]
598BCC:  LDR             R0, [R7,#arg_0]
598BCE:  STR             R0, [SP,#0x78+var_74]
598BD0:  LDR             R0, [R7,#arg_34]
598BD2:  STR             R0, [SP,#0x78+var_40]
598BD4:  LDR             R0, [R7,#arg_1C]
598BD6:  STR             R0, [SP,#0x78+var_58]
598BD8:  LDR             R0, [R7,#arg_4]
598BDA:  STR             R0, [SP,#0x78+var_70]
598BDC:  ASRS            R0, R4, #0x1F
598BDE:  ADD.W           R0, R4, R0,LSR#30
598BE2:  ASRS            R0, R0, #2
598BE4:  ADD.W           R0, R6, R0,LSL#1
598BE8:  BLX             j__ZN11CWaterLevel28SplitWaterTriangleAlongXLineEiii7CRenPariiS0_iiS0_; CWaterLevel::SplitWaterTriangleAlongXLine(int,int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
598BEC:  ADD             SP, SP, #0x5C ; '\'
598BEE:  POP.W           {R8-R11}
598BF2:  POP             {R4-R7,PC}
