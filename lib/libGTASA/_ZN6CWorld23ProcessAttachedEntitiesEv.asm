; =========================================================
; Game Engine Function: _ZN6CWorld23ProcessAttachedEntitiesEv
; Address            : 0x427EB0 - 0x42800E
; =========================================================

427EB0:  PUSH            {R4-R7,LR}
427EB2:  ADD             R7, SP, #0xC
427EB4:  PUSH.W          {R8-R11}
427EB8:  SUB             SP, SP, #4
427EBA:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x427EC0)
427EBC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
427EBE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
427EC0:  LDR.W           R8, [R0]; CPools::ms_pVehiclePool
427EC4:  LDR.W           R0, [R8,#8]
427EC8:  CBZ             R0, loc_427F22
427ECA:  MOVW            R1, #0xA2C
427ECE:  SUBS            R5, R0, #1
427ED0:  MULS            R1, R0
427ED2:  SUBW            R6, R1, #0xA2C
427ED6:  LDR.W           R0, [R8,#4]
427EDA:  LDRSB           R0, [R0,R5]
427EDC:  CMP             R0, #0
427EDE:  BLT             loc_427F18
427EE0:  LDR.W           R0, [R8]
427EE4:  ADDS            R4, R0, R6
427EE6:  ITT NE
427EE8:  LDRNE.W         R0, [R4,#0x100]
427EEC:  CMPNE           R0, #0
427EEE:  BEQ             loc_427F18
427EF0:  STR.W           R0, [R4,#0x12C]
427EF4:  MOV             R0, R4; this
427EF6:  BLX             j__ZN9CPhysical22PositionAttachedEntityEv; CPhysical::PositionAttachedEntity(void)
427EFA:  LDR             R0, [R4,#0x18]
427EFC:  CBZ             R0, loc_427F12
427EFE:  LDR             R1, [R0,#4]
427F00:  LDR             R0, [R4,#0x14]
427F02:  ADDS            R1, #0x10
427F04:  CBZ             R0, loc_427F0C
427F06:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
427F0A:  B               loc_427F12
427F0C:  ADDS            R0, R4, #4
427F0E:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
427F12:  MOV             R0, R4; this
427F14:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
427F18:  SUBS            R5, #1
427F1A:  SUBW            R6, R6, #0xA2C
427F1E:  ADDS            R0, R5, #1
427F20:  BNE             loc_427ED6
427F22:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x427F28)
427F24:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
427F26:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
427F28:  LDR.W           R8, [R0]; CPools::ms_pObjectPool
427F2C:  LDR.W           R0, [R8,#8]
427F30:  CMP             R0, #0
427F32:  BEQ             loc_428006
427F34:  MOV.W           R1, #0x1A4
427F38:  SUBS            R5, R0, #1
427F3A:  MULS            R1, R0
427F3C:  MOV             R9, #0xFFFFFF00
427F40:  MOV.W           R10, #1
427F44:  SUB.W           R6, R1, #0xA4
427F48:  LDR.W           R0, [R8,#4]
427F4C:  LDRSB           R0, [R0,R5]
427F4E:  CMP             R0, #0
427F50:  BLT             loc_427FFC
427F52:  LDR.W           R0, [R8]
427F56:  ADDS            R4, R0, R6
427F58:  CMP.W           R4, #0x100
427F5C:  ITT NE
427F5E:  LDRNE           R0, [R0,R6]
427F60:  CMPNE           R0, #0
427F62:  BEQ             loc_427FFC
427F64:  LDR.W           R0, [R4,R9]
427F68:  SUB.W           R11, R4, #0x100
427F6C:  LDR             R1, [R0,#0x10]
427F6E:  MOV             R0, R11
427F70:  BLX             R1
427F72:  LDRB.W          R0, [R4,#-0xC6]
427F76:  AND.W           R0, R0, #7
427F7A:  SUBS            R0, #2
427F7C:  UXTB            R0, R0
427F7E:  CMP             R0, #2
427F80:  ITT LS
427F82:  MOVLS           R0, R11; this
427F84:  BLXLS           j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
427F88:  MOV             R0, R11; this
427F8A:  BLX             j__ZN9CPhysical22PositionAttachedEntityEv; CPhysical::PositionAttachedEntity(void)
427F8E:  LDR.W           R0, [R4,#-0xE8]
427F92:  CBZ             R0, loc_427FAC
427F94:  LDR             R1, [R0,#4]
427F96:  LDR.W           R0, [R4,#-0xEC]
427F9A:  ADDS            R1, #0x10
427F9C:  CBZ             R0, loc_427FA4
427F9E:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
427FA2:  B               loc_427FAC
427FA4:  SUB.W           R0, R4, #0xFC
427FA8:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
427FAC:  MOV             R0, R11; this
427FAE:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
427FB2:  LDR.W           R0, [R4,#-0xE8]
427FB6:  CBZ             R0, loc_427FD0
427FB8:  LDR             R1, [R0,#4]
427FBA:  LDR.W           R0, [R4,#-0xEC]
427FBE:  ADDS            R1, #0x10
427FC0:  CBZ             R0, loc_427FC8
427FC2:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
427FC6:  B               loc_427FD0
427FC8:  SUB.W           R0, R4, #0xFC
427FCC:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
427FD0:  MOV             R0, R11; this
427FD2:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
427FD6:  LDR.W           R0, [R11]
427FDA:  LDR             R1, [R0,#8]
427FDC:  MOV             R0, R11
427FDE:  BLX             R1
427FE0:  LDRB.W          R0, [R4,#-0xC6]
427FE4:  BFI.W           R0, R10, #2, #0x1E
427FE8:  CMP             R0, #5
427FEA:  BEQ             loc_427FFC
427FEC:  LDR.W           R0, [R4,#-0xE4]
427FF0:  TST.W           R0, #0x40004
427FF4:  BNE             loc_427FFC
427FF6:  MOV             R0, R11; this
427FF8:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
427FFC:  SUBS            R5, #1
427FFE:  SUB.W           R6, R6, #0x1A4
428002:  ADDS            R0, R5, #1
428004:  BNE             loc_427F48
428006:  ADD             SP, SP, #4
428008:  POP.W           {R8-R11}
42800C:  POP             {R4-R7,PC}
