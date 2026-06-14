; =========================================================
; Game Engine Function: _ZN11CHandObject9PreRenderEv
; Address            : 0x452A9C - 0x452BD4
; =========================================================

452A9C:  PUSH            {R4-R7,LR}
452A9E:  ADD             R7, SP, #0xC
452AA0:  PUSH.W          {R8-R11}
452AA4:  SUB             SP, SP, #0x4C
452AA6:  MOV             R9, R0
452AA8:  LDR.W           R0, [R9,#0x184]
452AAC:  LDR             R0, [R0,#0x18]
452AAE:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
452AB2:  MOV             R11, R0
452AB4:  LDR.W           R0, [R9,#0x184]; this
452AB8:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
452ABC:  LDR.W           R0, [R9,#0x184]
452AC0:  LDRD.W          R1, R2, [R0,#0x1C]
452AC4:  ORR.W           R1, R1, #0x800000
452AC8:  STRD.W          R1, R2, [R0,#0x1C]
452ACC:  MOV             R0, R11
452ACE:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
452AD2:  LDR.W           R1, [R9,#0x188]
452AD6:  ADD.W           R8, SP, #0x68+var_64
452ADA:  MOVS            R2, #0
452ADC:  MOVS            R4, #0
452ADE:  ADD.W           R10, R0, R1,LSL#6
452AE2:  MOV             R0, R8
452AE4:  MOV             R1, R10
452AE6:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
452AEA:  LDR.W           R0, [R9,#0x14]
452AEE:  MOV             R1, R8
452AF0:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
452AF4:  MOV             R0, R8; this
452AF6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
452AFA:  LDRB.W          R0, [R9,#0x190]
452AFE:  CBZ             R0, loc_452B06
452B00:  STRB.W          R4, [R9,#0x190]
452B04:  B               loc_452B94
452B06:  LDR.W           LR, [R9,#0x188]
452B0A:  MOV.W           R12, #0x28 ; '('
452B0E:  MOVS            R1, #0
452B10:  MOV             R3, R10
452B12:  ADD.W           R2, LR, #1
452B16:  STR.W           R4, [R3,#0x40]!
452B1A:  STRD.W          R4, R4, [R3,#0x20]
452B1E:  STR             R4, [R3,#0x28]
452B20:  STRD.W          R4, R4, [R3,#0x10]
452B24:  STR             R4, [R3,#0x18]
452B26:  STRD.W          R4, R4, [R3,#4]
452B2A:  LDR.W           R0, [R11,#0x10]
452B2E:  ADD.W           R0, R0, R2,LSL#4
452B32:  LDR             R6, [R0,#8]
452B34:  TST.W           R6, #2
452B38:  BNE             loc_452B7A
452B3A:  ADD.W           R0, R12, LR,LSL#4
452B3E:  ADD.W           R3, R10, #0xA0
452B42:  LSLS            R6, R6, #0x1F
452B44:  BNE             loc_452B82
452B46:  STRD.W          R4, R4, [R3]
452B4A:  ADD.W           R5, R0, #0x10
452B4E:  STR             R4, [R3,#8]
452B50:  ADDS            R2, #1
452B52:  STRD.W          R4, R4, [R3,#-0x20]
452B56:  STR.W           R4, [R3,#-0x18]
452B5A:  STRD.W          R4, R4, [R3,#-0x10]
452B5E:  STR.W           R4, [R3,#-8]
452B62:  ADDS            R3, #0x40 ; '@'
452B64:  LDR.W           R6, [R11,#0x10]
452B68:  LDR             R6, [R6,R0]
452B6A:  MOV             R0, R5
452B6C:  TST.W           R6, #2
452B70:  BEQ             loc_452B42
452B72:  SUB.W           R10, R3, #0x60 ; '`'
452B76:  MOVS            R0, #1
452B78:  B               loc_452B8A
452B7A:  MOVS            R0, #1
452B7C:  MOV             LR, R2
452B7E:  MOV             R10, R3
452B80:  B               loc_452B8C
452B82:  SUB.W           R10, R3, #0x60 ; '`'
452B86:  MOV.W           R0, #0xFFFFFFFF
452B8A:  MOV             LR, R2
452B8C:  ADD             R1, R0
452B8E:  CMP.W           R1, #0xFFFFFFFF
452B92:  BGT             loc_452B10
452B94:  LDR.W           R1, [R9,#0x184]
452B98:  LDR.W           R0, [R9,#0x18]
452B9C:  LDR.W           R1, [R1,#0x130]
452BA0:  CMP             R0, #0
452BA2:  STR.W           R1, [R9,#0x130]
452BA6:  BEQ             loc_452BC0
452BA8:  LDR             R1, [R0,#4]
452BAA:  LDR.W           R0, [R9,#0x14]
452BAE:  ADDS            R1, #0x10
452BB0:  CBZ             R0, loc_452BB8
452BB2:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
452BB6:  B               loc_452BC0
452BB8:  ADD.W           R0, R9, #4
452BBC:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
452BC0:  MOV             R0, R9; this
452BC2:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
452BC6:  MOV             R0, R9; this
452BC8:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
452BCC:  ADD             SP, SP, #0x4C ; 'L'
452BCE:  POP.W           {R8-R11}
452BD2:  POP             {R4-R7,PC}
