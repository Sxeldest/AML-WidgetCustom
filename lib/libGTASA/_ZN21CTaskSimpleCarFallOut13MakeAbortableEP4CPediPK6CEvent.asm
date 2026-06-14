; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarFallOut13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5059C4 - 0x505A48
; =========================================================

5059C4:  PUSH            {R4-R7,LR}
5059C6:  ADD             R7, SP, #0xC
5059C8:  PUSH.W          {R11}
5059CC:  SUB             SP, SP, #8
5059CE:  MOV             R4, R1
5059D0:  MOV             R5, R0
5059D2:  CMP             R2, #2
5059D4:  BNE             loc_505A3E
5059D6:  LDR             R0, [R5,#0xC]
5059D8:  CBZ             R0, loc_5059F4
5059DA:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5059E8)
5059DC:  MOVS            R2, #0xC47A0000
5059E2:  MOVS            R6, #0
5059E4:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5059E6:  STR             R2, [R0,#0x1C]
5059E8:  LDR             R0, [R5,#0xC]; this
5059EA:  MOVS            R2, #0; void *
5059EC:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5059EE:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5059F2:  STR             R6, [R5,#0xC]
5059F4:  LDR             R0, [R5,#0x10]
5059F6:  CBZ             R0, loc_505A3A
5059F8:  LDR.W           R0, [R0,#0x388]
5059FC:  MOVS            R3, #0x94
5059FE:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x505A0A)
505A00:  MOV.W           R6, #0x184
505A04:  LDR             R2, [R5,#0x14]
505A06:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
505A08:  LDRB.W          R0, [R0,#0xDE]
505A0C:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
505A0E:  SMLABB.W        R0, R0, R3, R1; this
505A12:  BIC.W           R1, R2, #1
505A16:  CMP             R1, #0xA
505A18:  IT EQ
505A1A:  MOVWEQ          R6, #0x183
505A1E:  MOV             R1, R6; int
505A20:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
505A24:  MOV             R3, R0
505A26:  LDRD.W          R0, R2, [R5,#0x10]
505A2A:  LDR             R1, [R0]
505A2C:  LDR             R5, [R1,#0x74]
505A2E:  MOV.W           R1, #0x3F800000
505A32:  STRD.W          R6, R1, [SP,#0x18+var_18]
505A36:  MOV             R1, R4
505A38:  BLX             R5
505A3A:  MOVS            R0, #1
505A3C:  B               loc_505A40
505A3E:  MOVS            R0, #0
505A40:  ADD             SP, SP, #8
505A42:  POP.W           {R11}
505A46:  POP             {R4-R7,PC}
