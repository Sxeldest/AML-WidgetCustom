; =========================================================
; Game Engine Function: _ZN7CObjectC2EP12CDummyObject
; Address            : 0x452FF4 - 0x453092
; =========================================================

452FF4:  PUSH            {R4-R7,LR}; Alternative name is 'CObject::CObject(CDummyObject *)'
452FF6:  ADD             R7, SP, #0xC
452FF8:  PUSH.W          {R11}
452FFC:  MOV             R5, R1
452FFE:  MOV             R4, R0
453000:  BLX             j__ZN9CPhysicalC2Ev_0; CPhysical::CPhysical(void)
453004:  LDR             R0, =(_ZTV7CObject_ptr - 0x45300A)
453006:  ADD             R0, PC; _ZTV7CObject_ptr
453008:  LDR             R0, [R0]; `vtable for'CObject ...
45300A:  ADDS            R0, #8
45300C:  STR             R0, [R4]
45300E:  LDRSH.W         R1, [R5,#0x26]; unsigned int
453012:  MOV             R0, R4; this
453014:  BLX             j__ZN7CEntity21SetModelIndexNoCreateEj; CEntity::SetModelIndexNoCreate(uint)
453018:  LDR             R1, [R5,#0x18]
45301A:  CBZ             R1, loc_453026
45301C:  MOV             R0, R4
45301E:  MOVS            R2, #1
453020:  BLX             j__ZN7CEntity16AttachToRwObjectEP8RwObjectb; CEntity::AttachToRwObject(RwObject *,bool)
453024:  B               loc_453040
453026:  LDR             R1, [R5,#0x14]
453028:  CBNZ            R1, loc_45303A
45302A:  MOV             R0, R5; this
45302C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
453030:  LDR             R1, [R5,#0x14]; CMatrix *
453032:  ADDS            R0, R5, #4; this
453034:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
453038:  LDR             R1, [R5,#0x14]; CMatrix *
45303A:  MOV             R0, R4; this
45303C:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
453040:  MOV             R0, R5; this
453042:  BLX             j__ZN7CEntity18DetachFromRwObjectEv; CEntity::DetachFromRwObject(void)
453046:  MOV             R0, R4; this
453048:  BLX             j__ZN7CObject4InitEv; CObject::Init(void)
45304C:  MOV             R6, R4
45304E:  LDRH.W          R0, [R5,#0x38]
453052:  LDR.W           R1, [R6,#0x1C]!
453056:  STRH            R0, [R6,#0x1C]
453058:  LDRB.W          R0, [R5,#0x33]
45305C:  STRB            R0, [R6,#0x17]
45305E:  LDR             R2, [R5,#0x1C]
453060:  LDR.W           R0, [R6,#-4]
453064:  LSRS            R2, R2, #9
453066:  CMP             R0, #0
453068:  BFI.W           R1, R2, #9, #1
45306C:  STR             R1, [R6]
45306E:  BEQ             loc_45308A
453070:  LDRB            R1, [R0]
453072:  CMP             R1, #1
453074:  IT NE
453076:  BLXNE           j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
45307A:  BLX             j__ZN23CCustomBuildingRenderer22IsCBPCPipelineAttachedEP8RpAtomic; CCustomBuildingRenderer::IsCBPCPipelineAttached(RpAtomic *)
45307E:  CMP             R0, #0
453080:  ITTT EQ
453082:  LDREQ           R0, [R6]
453084:  ORREQ.W         R0, R0, #0x10000000
453088:  STREQ           R0, [R6]
45308A:  MOV             R0, R4
45308C:  POP.W           {R11}
453090:  POP             {R4-R7,PC}
