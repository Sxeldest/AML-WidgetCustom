; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive14SetPedPositionEP4CPed
; Address            : 0x4FACA4 - 0x4FAE08
; =========================================================

4FACA4:  PUSH            {R4,R5,R7,LR}
4FACA6:  ADD             R7, SP, #8
4FACA8:  MOV             R4, R0
4FACAA:  MOV             R5, R1
4FACAC:  LDRB.W          R0, [R4,#0x5C]
4FACB0:  LSLS            R0, R0, #0x1C
4FACB2:  BPL             loc_4FACE4
4FACB4:  LDR.W           R0, [R5,#0x440]
4FACB8:  MOVS            R1, #4; int
4FACBA:  MOVW            R2, #0x2C5; int
4FACBE:  ADDS            R0, #4; this
4FACC0:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
4FACC4:  CMP             R0, #0
4FACC6:  IT NE
4FACC8:  CMPNE           R0, R4
4FACCA:  BEQ             loc_4FACD8
4FACCC:  LDR             R1, [R0,#0x10]
4FACCE:  CMP             R1, #0
4FACD0:  ITTT NE
4FACD2:  STRNE           R1, [R4,#0x10]
4FACD4:  MOVNE           R1, #0
4FACD6:  STRNE           R1, [R0,#0x10]
4FACD8:  LDRB.W          R0, [R4,#0x5C]
4FACDC:  AND.W           R0, R0, #0xF7
4FACE0:  STRB.W          R0, [R4,#0x5C]
4FACE4:  LDR             R0, [R4,#0x10]
4FACE6:  CMP             R0, #0
4FACE8:  BEQ             loc_4FADE6
4FACEA:  LDR             R0, =(aTestAnimList_ptr - 0x4FACF0)
4FACEC:  ADD             R0, PC; aTestAnimList_ptr
4FACEE:  LDR             R1, [R0]; aTestAnimList
4FACF0:  LDR             R0, [R5,#0x18]
4FACF2:  LDR             R1, [R1]
4FACF4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FACF8:  MOV             R3, R0
4FACFA:  CMP             R3, #0
4FACFC:  BNE             loc_4FADC8
4FACFE:  LDR             R0, =(aTestAnimList_ptr - 0x4FAD04)
4FAD00:  ADD             R0, PC; aTestAnimList_ptr
4FAD02:  LDR             R1, [R0]; aTestAnimList
4FAD04:  LDR             R0, [R5,#0x18]
4FAD06:  LDR             R1, [R1,#(dword_6B03C4 - 0x6B03C0)]
4FAD08:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FAD0C:  MOV             R3, R0
4FAD0E:  CMP             R3, #0
4FAD10:  BNE             loc_4FADC8
4FAD12:  LDR             R0, =(aTestAnimList_ptr - 0x4FAD18)
4FAD14:  ADD             R0, PC; aTestAnimList_ptr
4FAD16:  LDR             R1, [R0]; aTestAnimList
4FAD18:  LDR             R0, [R5,#0x18]
4FAD1A:  LDR             R1, [R1,#(dword_6B03C8 - 0x6B03C0)]
4FAD1C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FAD20:  MOV             R3, R0
4FAD22:  CMP             R3, #0
4FAD24:  BNE             loc_4FADC8
4FAD26:  LDR             R0, =(aTestAnimList_ptr - 0x4FAD2C)
4FAD28:  ADD             R0, PC; aTestAnimList_ptr
4FAD2A:  LDR             R1, [R0]; aTestAnimList
4FAD2C:  LDR             R0, [R5,#0x18]
4FAD2E:  LDR             R1, [R1,#(dword_6B03CC - 0x6B03C0)]
4FAD30:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FAD34:  MOV             R3, R0
4FAD36:  CMP             R3, #0
4FAD38:  BNE             loc_4FADC8
4FAD3A:  LDR             R0, =(aTestAnimList_ptr - 0x4FAD40)
4FAD3C:  ADD             R0, PC; aTestAnimList_ptr
4FAD3E:  LDR             R1, [R0]; aTestAnimList
4FAD40:  LDR             R0, [R5,#0x18]
4FAD42:  LDR             R1, [R1,#(dword_6B03D0 - 0x6B03C0)]
4FAD44:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FAD48:  MOV             R3, R0
4FAD4A:  CBNZ            R3, loc_4FADC8
4FAD4C:  LDR             R0, =(aTestAnimList_ptr - 0x4FAD52)
4FAD4E:  ADD             R0, PC; aTestAnimList_ptr
4FAD50:  LDR             R1, [R0]; aTestAnimList
4FAD52:  LDR             R0, [R5,#0x18]
4FAD54:  LDR             R1, [R1,#(dword_6B03D4 - 0x6B03C0)]
4FAD56:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FAD5A:  MOV             R3, R0
4FAD5C:  CBNZ            R3, loc_4FADC8
4FAD5E:  LDR             R0, =(aTestAnimList_ptr - 0x4FAD64)
4FAD60:  ADD             R0, PC; aTestAnimList_ptr
4FAD62:  LDR             R1, [R0]; aTestAnimList
4FAD64:  LDR             R0, [R5,#0x18]
4FAD66:  LDR             R1, [R1,#(dword_6B03D8 - 0x6B03C0)]
4FAD68:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FAD6C:  MOV             R3, R0
4FAD6E:  CBNZ            R3, loc_4FADC8
4FAD70:  LDR             R0, =(aTestAnimList_ptr - 0x4FAD76)
4FAD72:  ADD             R0, PC; aTestAnimList_ptr
4FAD74:  LDR             R1, [R0]; aTestAnimList
4FAD76:  LDR             R0, [R5,#0x18]
4FAD78:  LDR             R1, [R1,#(dword_6B03DC - 0x6B03C0)]
4FAD7A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FAD7E:  MOV             R3, R0
4FAD80:  CBNZ            R3, loc_4FADC8
4FAD82:  LDR             R0, =(aTestAnimList_ptr - 0x4FAD88)
4FAD84:  ADD             R0, PC; aTestAnimList_ptr
4FAD86:  LDR             R1, [R0]; aTestAnimList
4FAD88:  LDR             R0, [R5,#0x18]
4FAD8A:  LDR             R1, [R1,#(dword_6B03E0 - 0x6B03C0)]
4FAD8C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FAD90:  MOV             R3, R0
4FAD92:  CBNZ            R3, loc_4FADC8
4FAD94:  LDR             R0, =(aTestAnimList_ptr - 0x4FAD9A)
4FAD96:  ADD             R0, PC; aTestAnimList_ptr
4FAD98:  LDR             R1, [R0]; aTestAnimList
4FAD9A:  LDR             R0, [R5,#0x18]
4FAD9C:  LDR             R1, [R1,#(dword_6B03E4 - 0x6B03C0)]
4FAD9E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FADA2:  MOV             R3, R0
4FADA4:  CBNZ            R3, loc_4FADC8
4FADA6:  LDR             R0, =(aTestAnimList_ptr - 0x4FADAC)
4FADA8:  ADD             R0, PC; aTestAnimList_ptr
4FADAA:  LDR             R1, [R0]; aTestAnimList
4FADAC:  LDR             R0, [R5,#0x18]
4FADAE:  LDR             R1, [R1,#(dword_6B03E8 - 0x6B03C0)]
4FADB0:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FADB4:  MOV             R3, R0
4FADB6:  CBNZ            R3, loc_4FADC8
4FADB8:  LDR             R0, =(aTestAnimList_ptr - 0x4FADBE)
4FADBA:  ADD             R0, PC; aTestAnimList_ptr
4FADBC:  LDR             R1, [R0]; aTestAnimList
4FADBE:  LDR             R0, [R5,#0x18]
4FADC0:  LDR             R1, [R1,#(dword_6B03EC - 0x6B03C0)]
4FADC2:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4FADC6:  MOV             R3, R0; CAnimBlendAssociation *
4FADC8:  LDR             R2, [R4,#8]; CVehicle *
4FADCA:  MOV             R1, R5; CPed *
4FADCC:  LDR             R0, [R4,#0x10]; this
4FADCE:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
4FADD2:  LDR             R0, [R4,#0x10]; this
4FADD4:  CBZ             R0, loc_4FADDE
4FADD6:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarD2Ev; CTaskUtilityLineUpPedWithCar::~CTaskUtilityLineUpPedWithCar()
4FADDA:  BLX             _ZdlPv; operator delete(void *)
4FADDE:  MOVS            R0, #0
4FADE0:  STR             R0, [R4,#0x10]
4FADE2:  MOVS            R0, #1
4FADE4:  POP             {R4,R5,R7,PC}
4FADE6:  LDR             R0, [R4,#8]
4FADE8:  CBZ             R0, loc_4FADF2
4FADEA:  LDR.W           R1, [R5,#0x590]
4FADEE:  CMP             R1, R0
4FADF0:  BEQ             loc_4FADF6
4FADF2:  MOVS            R0, #1
4FADF4:  POP             {R4,R5,R7,PC}
4FADF6:  LDRB.W          R0, [R5,#0x485]
4FADFA:  LSLS            R0, R0, #0x1F
4FADFC:  ITT NE
4FADFE:  MOVNE           R0, R5; this
4FAE00:  BLXNE           j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
4FAE04:  MOVS            R0, #1
4FAE06:  POP             {R4,R5,R7,PC}
