; =========================================================
; Game Engine Function: _ZN12CDummyObject16UpdateFromObjectEP7CObject
; Address            : 0x452868 - 0x452914
; =========================================================

452868:  PUSH            {R4-R7,LR}
45286A:  ADD             R7, SP, #0xC
45286C:  PUSH.W          {R8}
452870:  MOV             R5, R0
452872:  MOV             R8, R1
452874:  MOV             R6, R5
452876:  MOV             R4, R8
452878:  LDR.W           R0, [R6,#0x1C]!
45287C:  MOVS            R2, #0
45287E:  ORR.W           R0, R0, #0x81
452882:  STR             R0, [R6]
452884:  LDR.W           R0, [R4,#0x1C]!
452888:  LDR.W           R1, [R4,#-4]
45288C:  ORR.W           R0, R0, #0x2000
452890:  STR             R0, [R4]
452892:  MOV             R0, R5
452894:  BLX             j__ZN7CEntity16AttachToRwObjectEP8RwObjectb; CEntity::AttachToRwObject(RwObject *,bool)
452898:  LDR             R0, [R4]
45289A:  BIC.W           R0, R0, #0x2000
45289E:  STR             R0, [R4]
4528A0:  LDR             R0, [R5,#0x18]
4528A2:  CBZ             R0, loc_4528B8
4528A4:  LDR             R1, [R0,#4]
4528A6:  LDR             R0, [R5,#0x14]
4528A8:  ADDS            R1, #0x10
4528AA:  CBZ             R0, loc_4528B2
4528AC:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
4528B0:  B               loc_4528B8
4528B2:  ADDS            R0, R5, #4
4528B4:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
4528B8:  MOV             R0, R8; this
4528BA:  BLX             j__ZN7CEntity18DetachFromRwObjectEv; CEntity::DetachFromRwObject(void)
4528BE:  LDRH.W          R0, [R8,#0x38]
4528C2:  CBZ             R0, loc_452902
4528C4:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x4528CC)
4528C6:  MOVS            R2, #0x34 ; '4'
4528C8:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
4528CA:  LDR             R1, [R1]; CIplStore::ms_pPool ...
4528CC:  LDR             R1, [R1]; CIplStore::ms_pPool
4528CE:  LDR             R1, [R1]
4528D0:  SMLABB.W        R0, R0, R2, R1
4528D4:  LDRB.W          R0, [R0,#0x2F]
4528D8:  CMP             R0, #0
4528DA:  BEQ             loc_452902
4528DC:  LDR             R0, [R4]
4528DE:  LDRD.W          R1, R2, [R6]
4528E2:  LSRS            R0, R0, #9
4528E4:  BFI.W           R1, R0, #9, #1
4528E8:  STRD.W          R1, R2, [R6]
4528EC:  LDR             R0, [R4]
4528EE:  LSRS            R0, R0, #7
4528F0:  BFI.W           R1, R0, #7, #1
4528F4:  STRD.W          R1, R2, [R6]
4528F8:  LDR             R0, [R4]
4528FA:  BFI.W           R1, R0, #0, #1
4528FE:  STRD.W          R1, R2, [R6]
452902:  LDR.W           R0, [R8,#0x34]
452906:  STR             R0, [R5,#0x34]
452908:  MOVS            R0, #0
45290A:  STR.W           R0, [R8,#0x34]
45290E:  POP.W           {R8}
452912:  POP             {R4-R7,PC}
