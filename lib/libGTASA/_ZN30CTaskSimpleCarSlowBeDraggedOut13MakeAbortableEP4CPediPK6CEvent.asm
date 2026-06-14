; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSlowBeDraggedOut13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5046F8 - 0x50476C
; =========================================================

5046F8:  PUSH            {R4-R7,LR}
5046FA:  ADD             R7, SP, #0xC
5046FC:  PUSH.W          {R11}
504700:  SUB             SP, SP, #8
504702:  MOV             R4, R1
504704:  MOV             R5, R0
504706:  CMP             R2, #2
504708:  BNE             loc_504762
50470A:  LDR             R0, [R5,#0xC]
50470C:  CMP             R0, #0
50470E:  ITTT NE
504710:  MOVNE           R1, #0
504712:  MOVTNE          R1, #0xC47A
504716:  STRNE           R1, [R0,#0x1C]
504718:  LDR             R0, [R5,#0x10]
50471A:  CBZ             R0, loc_50475E
50471C:  LDR.W           R0, [R0,#0x388]
504720:  MOVS            R3, #0x94
504722:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x50472E)
504724:  MOVW            R6, #0x17B
504728:  LDR             R2, [R5,#0x14]
50472A:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
50472C:  LDRB.W          R0, [R0,#0xDE]
504730:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
504732:  SMLABB.W        R0, R0, R3, R1; this
504736:  BIC.W           R1, R2, #1
50473A:  CMP             R1, #0xA
50473C:  IT EQ
50473E:  MOVEQ.W         R6, #0x17A
504742:  MOV             R1, R6; int
504744:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
504748:  MOV             R3, R0
50474A:  LDRD.W          R0, R2, [R5,#0x10]
50474E:  LDR             R1, [R0]
504750:  LDR             R5, [R1,#0x74]
504752:  MOV.W           R1, #0x3F800000
504756:  STRD.W          R6, R1, [SP,#0x18+var_18]
50475A:  MOV             R1, R4
50475C:  BLX             R5
50475E:  MOVS            R0, #1
504760:  B               loc_504764
504762:  MOVS            R0, #0
504764:  ADD             SP, SP, #8
504766:  POP.W           {R11}
50476A:  POP             {R4-R7,PC}
