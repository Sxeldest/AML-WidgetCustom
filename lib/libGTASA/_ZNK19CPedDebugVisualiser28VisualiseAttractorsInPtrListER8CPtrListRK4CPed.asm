; =========================================================
; Game Engine Function: _ZNK19CPedDebugVisualiser28VisualiseAttractorsInPtrListER8CPtrListRK4CPed
; Address            : 0x4ACB58 - 0x4ACC7C
; =========================================================

4ACB58:  PUSH            {R4-R7,LR}
4ACB5A:  ADD             R7, SP, #0xC
4ACB5C:  PUSH.W          {R8-R11}
4ACB60:  SUB             SP, SP, #0x4C
4ACB62:  LDR             R1, [R1]
4ACB64:  CMP             R1, #0
4ACB66:  BEQ.W           loc_4ACC74
4ACB6A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4ACB76)
4ACB6C:  ADD.W           R11, SP, #0x68+var_40
4ACB70:  ADD             R4, SP, #0x68+var_50
4ACB72:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4ACB74:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4ACB76:  STR             R0, [SP,#0x68+var_68]
4ACB78:  LDRD.W          R5, R1, [R1]
4ACB7C:  STR             R1, [SP,#0x68+var_64]
4ACB7E:  LDRB.W          R0, [R5,#0x3A]
4ACB82:  AND.W           R0, R0, #7
4ACB86:  CMP             R0, #4
4ACB88:  BNE             loc_4ACB9A
4ACB8A:  LDR             R0, [R5,#0x1C]
4ACB8C:  TST.W           R0, #0x40004
4ACB90:  BEQ             loc_4ACC6C
4ACB92:  LDRB.W          R0, [R5,#0x144]
4ACB96:  LSLS            R0, R0, #0x19
4ACB98:  BMI             loc_4ACC6C
4ACB9A:  LDRSH.W         R0, [R5,#0x26]
4ACB9E:  LDR             R1, [SP,#0x68+var_68]
4ACBA0:  LDR.W           R6, [R1,R0,LSL#2]
4ACBA4:  LDRB.W          R0, [R6,#0x23]
4ACBA8:  CMP             R0, #0
4ACBAA:  BEQ             loc_4ACC6C
4ACBAC:  ADD.W           R8, R5, #4
4ACBB0:  MOV.W           R9, #0
4ACBB4:  MOV             R0, R6; this
4ACBB6:  MOV             R1, R9; int
4ACBB8:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
4ACBBC:  MOV             R10, R0
4ACBBE:  LDRB.W          R0, [R10,#0xC]
4ACBC2:  CMP             R0, #3
4ACBC4:  BNE             loc_4ACC60
4ACBC6:  LDR             R1, [R5,#0x14]
4ACBC8:  CBNZ            R1, loc_4ACBDA
4ACBCA:  MOV             R0, R5; this
4ACBCC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4ACBD0:  LDR             R1, [R5,#0x14]; CMatrix *
4ACBD2:  MOV             R0, R8; this
4ACBD4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4ACBD8:  LDR             R1, [R5,#0x14]; CMatrix *
4ACBDA:  ADD             R0, SP, #0x68+var_28; this
4ACBDC:  MOV             R2, R10; CVector *
4ACBDE:  BLX             j__ZN7CVector12FromMultiplyERK7CMatrixRKS_; CVector::FromMultiply(CMatrix const&,CVector const&)
4ACBE2:  LDR             R1, [R5,#0x14]
4ACBE4:  CBNZ            R1, loc_4ACBF6
4ACBE6:  MOV             R0, R5; this
4ACBE8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4ACBEC:  LDR             R1, [R5,#0x14]; CMatrix *
4ACBEE:  MOV             R0, R8; this
4ACBF0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4ACBF4:  LDR             R1, [R5,#0x14]; CMatrix *
4ACBF6:  LDR.W           R0, [R10,#0x18]
4ACBFA:  MOV             R2, R11; CVector *
4ACBFC:  VLDR            D16, [R10,#0x10]
4ACC00:  STR             R0, [SP,#0x68+var_38]
4ACC02:  ADD             R0, SP, #0x68+var_34; this
4ACC04:  VSTR            D16, [SP,#0x68+var_40]
4ACC08:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
4ACC0C:  LDR             R1, [R5,#0x14]
4ACC0E:  CBNZ            R1, loc_4ACC20
4ACC10:  MOV             R0, R5; this
4ACC12:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4ACC16:  LDR             R1, [R5,#0x14]; CMatrix *
4ACC18:  MOV             R0, R8; this
4ACC1A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4ACC1E:  LDR             R1, [R5,#0x14]; CMatrix *
4ACC20:  VLDR            D16, [R10,#0x1C]
4ACC24:  MOV             R2, R4; CVector *
4ACC26:  LDR.W           R0, [R10,#0x24]
4ACC2A:  STR             R0, [SP,#0x68+var_48]
4ACC2C:  MOV             R0, R11; this
4ACC2E:  VSTR            D16, [SP,#0x68+var_50]
4ACC32:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
4ACC36:  LDR             R1, [R5,#0x14]
4ACC38:  CBNZ            R1, loc_4ACC4A
4ACC3A:  MOV             R0, R5; this
4ACC3C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
4ACC40:  LDR             R1, [R5,#0x14]; CMatrix *
4ACC42:  MOV             R0, R8; this
4ACC44:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
4ACC48:  LDR             R1, [R5,#0x14]; CMatrix *
4ACC4A:  VLDR            D16, [R10,#0x28]
4ACC4E:  ADD             R2, SP, #0x68+var_60; CVector *
4ACC50:  LDR.W           R0, [R10,#0x30]
4ACC54:  STR             R0, [SP,#0x68+var_58]
4ACC56:  MOV             R0, R4; this
4ACC58:  VSTR            D16, [SP,#0x68+var_60]
4ACC5C:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
4ACC60:  LDRB.W          R0, [R6,#0x23]
4ACC64:  ADD.W           R9, R9, #1
4ACC68:  CMP             R9, R0
4ACC6A:  BLT             loc_4ACBB4
4ACC6C:  LDR             R1, [SP,#0x68+var_64]
4ACC6E:  CMP             R1, #0
4ACC70:  BNE.W           loc_4ACB78
4ACC74:  ADD             SP, SP, #0x4C ; 'L'
4ACC76:  POP.W           {R8-R11}
4ACC7A:  POP             {R4-R7,PC}
