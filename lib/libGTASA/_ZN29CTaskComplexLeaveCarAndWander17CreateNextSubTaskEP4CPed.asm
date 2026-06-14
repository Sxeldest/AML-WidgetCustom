; =========================================================
; Game Engine Function: _ZN29CTaskComplexLeaveCarAndWander17CreateNextSubTaskEP4CPed
; Address            : 0x4F974C - 0x4F9792
; =========================================================

4F974C:  PUSH            {R4,R5,R7,LR}
4F974E:  ADD             R7, SP, #8
4F9750:  LDR             R0, [R0,#8]
4F9752:  MOV             R4, R1
4F9754:  LDR             R1, [R0]
4F9756:  LDR             R1, [R1,#0x14]
4F9758:  BLX             R1
4F975A:  CMP.W           R0, #0x2C0
4F975E:  IT NE
4F9760:  CMPNE           R0, #0xC8
4F9762:  BNE             loc_4F978E
4F9764:  LDR.W           R5, [R4,#0x440]
4F9768:  LDR             R0, [R5,#0x14]
4F976A:  CBZ             R0, loc_4F977C
4F976C:  LDR             R1, [R0]
4F976E:  LDR             R1, [R1,#0x14]
4F9770:  BLX             R1
4F9772:  CMP.W           R0, #0x390
4F9776:  BEQ             loc_4F978E
4F9778:  LDR.W           R5, [R4,#0x440]
4F977C:  MOV             R0, R4; this
4F977E:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
4F9782:  MOV             R1, R0; CTask *
4F9784:  ADDS            R0, R5, #4; this
4F9786:  MOVS            R2, #4; int
4F9788:  MOVS            R3, #0; bool
4F978A:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4F978E:  MOVS            R0, #0
4F9790:  POP             {R4,R5,R7,PC}
