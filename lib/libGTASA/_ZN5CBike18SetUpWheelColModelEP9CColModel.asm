; =========================================================
; Game Engine Function: _ZN5CBike18SetUpWheelColModelEP9CColModel
; Address            : 0x566BD0 - 0x566D5C
; =========================================================

566BD0:  PUSH            {R4-R7,LR}
566BD2:  ADD             R7, SP, #0xC
566BD4:  PUSH.W          {R8-R11}
566BD8:  SUB             SP, SP, #4
566BDA:  VPUSH           {D8}
566BDE:  SUB             SP, SP, #0x60
566BE0:  MOV             R11, R0
566BE2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x566BEE)
566BE4:  MOV             R5, R1
566BE6:  LDRSH.W         R1, [R11,#0x26]
566BEA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
566BEC:  LDR.W           R6, [R11,#0x5B8]
566BF0:  LDR             R2, [R5,#0x2C]
566BF2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
566BF4:  STR             R2, [SP,#0x88+var_80]
566BF6:  LDR.W           R0, [R0,R1,LSL#2]
566BFA:  STR             R0, [SP,#0x88+var_7C]
566BFC:  MOV             R0, R11; this
566BFE:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
566C02:  ADD.W           R1, R0, #0x18
566C06:  ADD             R4, SP, #0x88+var_68
566C08:  VLD1.32         {D16-D17}, [R1]
566C0C:  ADD.W           R1, R5, #0x18
566C10:  ADD.W           R10, R4, #0x30 ; '0'
566C14:  ADD.W           R9, R4, #0x20 ; ' '
566C18:  VST1.32         {D16-D17}, [R1]
566C1C:  VLD1.32         {D16-D17}, [R0]!
566C20:  VLDR            D18, [R0]
566C24:  VST1.32         {D16-D17}, [R5]!
566C28:  VSTR            D18, [R5]
566C2C:  LDR.W           R0, [R11,#0x5C4]
566C30:  ADD.W           R1, R0, #0x10
566C34:  VLD1.32         {D16-D17}, [R1]
566C38:  ADD.W           R1, R0, #0x20 ; ' '
566C3C:  VLD1.32         {D18-D19}, [R1]
566C40:  ADD.W           R1, R0, #0x30 ; '0'
566C44:  VLD1.32         {D20-D21}, [R1]
566C48:  ADD.W           R1, R0, #0x40 ; '@'
566C4C:  VLD1.32         {D22-D23}, [R1]
566C50:  MOV             R1, R4
566C52:  VST1.64         {D22-D23}, [R10]
566C56:  VST1.64         {D20-D21}, [R9]
566C5A:  VST1.64         {D16-D17}, [R1]!
566C5E:  VST1.64         {D18-D19}, [R1]
566C62:  LDR.W           R8, [R0,#4]
566C66:  CMP.W           R8, #0
566C6A:  BEQ             loc_566C8C
566C6C:  ADD             R5, SP, #0x88+var_68
566C6E:  ADD.W           R1, R8, #0x10
566C72:  MOV             R0, R5
566C74:  MOVS            R2, #2
566C76:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
566C7A:  LDR.W           R8, [R8,#4]
566C7E:  CMP             R8, R6
566C80:  IT EQ
566C82:  MOVEQ.W         R8, #0
566C86:  CMP.W           R8, #0
566C8A:  BNE             loc_566C6E
566C8C:  VMOV.F32        S16, #0.5
566C90:  LDR             R0, [SP,#0x88+var_7C]
566C92:  LDR.W           R8, [SP,#0x88+var_80]
566C96:  MOVS            R3, #0xFF
566C98:  VLDR            D16, [SP,#0x88+var_38]
566C9C:  VLDR            S0, [R0,#0x58]
566CA0:  LDR             R2, [SP,#0x88+var_30]
566CA2:  LDR.W           R0, [R8,#8]; this
566CA6:  STR             R2, [SP,#0x88+var_70]
566CA8:  MOVS            R2, #0xD
566CAA:  VMUL.F32        S0, S0, S16
566CAE:  VSTR            D16, [SP,#0x88+var_78]
566CB2:  STRD.W          R2, R3, [SP,#0x88+var_88]; unsigned __int8
566CB6:  ADD             R2, SP, #0x88+var_78; CVector *
566CB8:  MOVS            R3, #0x43 ; 'C'; unsigned __int8
566CBA:  VMOV            R1, S0; float
566CBE:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
566CC2:  LDR.W           R0, [R11,#0x5C8]
566CC6:  ADD.W           R1, R0, #0x10
566CCA:  VLD1.32         {D16-D17}, [R1]
566CCE:  ADD.W           R1, R0, #0x20 ; ' '
566CD2:  VLD1.32         {D18-D19}, [R1]
566CD6:  ADD.W           R1, R0, #0x30 ; '0'
566CDA:  VLD1.32         {D20-D21}, [R1]
566CDE:  ADD.W           R1, R0, #0x40 ; '@'
566CE2:  VLD1.32         {D22-D23}, [R1]
566CE6:  VST1.64         {D22-D23}, [R10]
566CEA:  VST1.64         {D20-D21}, [R9]
566CEE:  VST1.64         {D16-D17}, [R4]!
566CF2:  VST1.64         {D18-D19}, [R4]
566CF6:  LDR             R5, [R0,#4]
566CF8:  CBZ             R5, loc_566D14
566CFA:  ADD             R4, SP, #0x88+var_68
566CFC:  ADD.W           R1, R5, #0x10
566D00:  MOV             R0, R4
566D02:  MOVS            R2, #2
566D04:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
566D08:  LDR             R5, [R5,#4]
566D0A:  CMP             R5, R6
566D0C:  IT EQ
566D0E:  MOVEQ           R5, #0
566D10:  CMP             R5, #0
566D12:  BNE             loc_566CFC
566D14:  LDR             R0, [SP,#0x88+var_7C]
566D16:  MOVS            R3, #0x43 ; 'C'; unsigned __int8
566D18:  LDR.W           R2, [R10,#8]
566D1C:  VLDR            D16, [R10]
566D20:  VLDR            S0, [R0,#0x5C]
566D24:  LDR.W           R0, [R8,#8]
566D28:  VMUL.F32        S0, S0, S16
566D2C:  STR             R2, [SP,#0x88+var_70]
566D2E:  MOVS            R2, #0xF
566D30:  ADDS            R0, #0x14; this
566D32:  STR             R2, [SP,#0x88+var_88]; unsigned __int8
566D34:  MOVS            R2, #0xFF
566D36:  STR             R2, [SP,#0x88+var_84]; unsigned __int8
566D38:  ADD             R2, SP, #0x88+var_78; CVector *
566D3A:  VSTR            D16, [SP,#0x88+var_78]
566D3E:  VMOV            R1, S0; float
566D42:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
566D46:  MOVS            R0, #2
566D48:  STRH.W          R0, [R8]
566D4C:  MOVS            R0, #1
566D4E:  ADD             SP, SP, #0x60 ; '`'
566D50:  VPOP            {D8}
566D54:  ADD             SP, SP, #4
566D56:  POP.W           {R8-R11}
566D5A:  POP             {R4-R7,PC}
