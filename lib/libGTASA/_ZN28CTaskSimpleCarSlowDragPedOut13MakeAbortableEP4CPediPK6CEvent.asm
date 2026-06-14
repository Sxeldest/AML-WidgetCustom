; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarSlowDragPedOut13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x504134 - 0x5041B2
; =========================================================

504134:  PUSH            {R4-R7,LR}
504136:  ADD             R7, SP, #0xC
504138:  PUSH.W          {R11}
50413C:  SUB             SP, SP, #8
50413E:  MOV             R4, R1
504140:  MOV             R5, R0
504142:  CMP             R2, #2
504144:  BNE             loc_504168
504146:  LDR             R0, [R5,#0xC]
504148:  CMP             R0, #0
50414A:  ITTT NE
50414C:  MOVNE           R1, #0
50414E:  MOVTNE          R1, #0xC47A
504152:  STRNE           R1, [R0,#0x1C]
504154:  LDR             R0, [R5,#0x10]
504156:  CBZ             R0, loc_5041A8
504158:  LDR             R1, [R5,#0x14]
50415A:  SUB.W           R2, R1, #0xA
50415E:  CMP             R2, #2
504160:  BCS             loc_50416C
504162:  MOV.W           R6, #0x16C
504166:  B               loc_504178
504168:  MOVS            R0, #0
50416A:  B               loc_5041AA
50416C:  CMP             R1, #0x12
50416E:  ITE EQ
504170:  MOVEQ.W         R6, #0x16E
504174:  MOVWNE          R6, #0x16D
504178:  LDR.W           R0, [R0,#0x388]
50417C:  MOVS            R2, #0x94
50417E:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x504184)
504180:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
504182:  LDRB.W          R0, [R0,#0xDE]
504186:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
504188:  SMLABB.W        R0, R0, R2, R1; this
50418C:  MOV             R1, R6; int
50418E:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
504192:  MOV             R3, R0
504194:  LDRD.W          R0, R2, [R5,#0x10]
504198:  LDR             R1, [R0]
50419A:  LDR             R5, [R1,#0x74]
50419C:  MOV.W           R1, #0x3F800000
5041A0:  STRD.W          R6, R1, [SP,#0x18+var_18]
5041A4:  MOV             R1, R4
5041A6:  BLX             R5
5041A8:  MOVS            R0, #1
5041AA:  ADD             SP, SP, #8
5041AC:  POP.W           {R11}
5041B0:  POP             {R4-R7,PC}
