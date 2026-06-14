; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarOpenDoorFromOutside13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x500BD4 - 0x500C68
; =========================================================

500BD4:  PUSH            {R4-R7,LR}
500BD6:  ADD             R7, SP, #0xC
500BD8:  PUSH.W          {R8}
500BDC:  SUB             SP, SP, #8
500BDE:  MOV             R8, R1
500BE0:  MOV             R4, R0
500BE2:  CMP             R2, #2
500BE4:  BNE             loc_500C0A
500BE6:  LDR             R0, [R4,#0xC]
500BE8:  CMP             R0, #0
500BEA:  ITTT NE
500BEC:  MOVNE           R1, #0
500BEE:  MOVTNE          R1, #0xC47A
500BF2:  STRNE           R1, [R0,#0x1C]
500BF4:  LDR             R0, [R4,#0x10]
500BF6:  CBZ             R0, loc_500C42
500BF8:  LDR             R1, [R4,#0x14]
500BFA:  SUBS            R1, #8
500BFC:  CMP             R1, #2
500BFE:  BHI             loc_500C0E
500C00:  LDR             R2, =(unk_61E6A8 - 0x500C06)
500C02:  ADD             R2, PC; unk_61E6A8
500C04:  LDR.W           R6, [R2,R1,LSL#2]
500C08:  B               loc_500C12
500C0A:  MOVS            R0, #0
500C0C:  B               loc_500C60
500C0E:  MOVW            R6, #0x165
500C12:  LDR.W           R0, [R0,#0x388]
500C16:  MOVS            R2, #0x94
500C18:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x500C1E)
500C1A:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
500C1C:  LDRB.W          R0, [R0,#0xDE]
500C20:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
500C22:  SMLABB.W        R0, R0, R2, R1; this
500C26:  MOV             R1, R6; int
500C28:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
500C2C:  MOV             R3, R0
500C2E:  LDRD.W          R0, R2, [R4,#0x10]
500C32:  LDR             R1, [R0]
500C34:  LDR             R5, [R1,#0x74]
500C36:  MOV.W           R1, #0x3F800000
500C3A:  STRD.W          R6, R1, [SP,#0x18+var_18]
500C3E:  MOV             R1, R8
500C40:  BLX             R5
500C42:  LDRB            R0, [R4,#0x19]
500C44:  CBZ             R0, loc_500C5E
500C46:  MOVS            R0, #0
500C48:  STRB            R0, [R4,#0x19]
500C4A:  MOV.W           R0, #0xFFFFFFFF; int
500C4E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
500C52:  LDR.W           R1, [R0,#0x48C]
500C56:  ORR.W           R1, R1, #0x4000000
500C5A:  STR.W           R1, [R0,#0x48C]
500C5E:  MOVS            R0, #1
500C60:  ADD             SP, SP, #8
500C62:  POP.W           {R8}
500C66:  POP             {R4-R7,PC}
