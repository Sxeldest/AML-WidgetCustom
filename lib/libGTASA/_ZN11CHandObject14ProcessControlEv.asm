; =========================================================
; Game Engine Function: _ZN11CHandObject14ProcessControlEv
; Address            : 0x452A54 - 0x452A9C
; =========================================================

452A54:  PUSH            {R4,R5,R7,LR}
452A56:  ADD             R7, SP, #8
452A58:  SUB             SP, SP, #0x48
452A5A:  MOV             R4, R0
452A5C:  LDR.W           R0, [R4,#0x184]
452A60:  LDR             R0, [R0,#0x18]
452A62:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
452A66:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
452A6A:  LDR.W           R1, [R4,#0x188]
452A6E:  MOV             R5, SP
452A70:  MOVS            R2, #0
452A72:  ADD.W           R1, R0, R1,LSL#6
452A76:  MOV             R0, R5
452A78:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
452A7C:  LDR             R0, [R4,#0x14]
452A7E:  MOV             R1, R5
452A80:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
452A84:  MOV             R0, R5; this
452A86:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
452A8A:  LDR             R0, [R4,#0x1C]
452A8C:  ORR.W           R0, R0, #0x20 ; ' '
452A90:  STR             R0, [R4,#0x1C]
452A92:  MOV             R0, R4; this
452A94:  BLX             j__ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
452A98:  ADD             SP, SP, #0x48 ; 'H'
452A9A:  POP             {R4,R5,R7,PC}
