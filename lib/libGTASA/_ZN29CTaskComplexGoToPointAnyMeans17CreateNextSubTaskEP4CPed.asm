; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointAnyMeans17CreateNextSubTaskEP4CPed
; Address            : 0x52487C - 0x524906
; =========================================================

52487C:  PUSH            {R4,R5,R7,LR}
52487E:  ADD             R7, SP, #8
524880:  MOV             R5, R0
524882:  MOV             R4, R1
524884:  LDR             R0, [R5,#8]
524886:  LDR             R1, [R0]
524888:  LDR             R1, [R1,#0x14]
52488A:  BLX             R1
52488C:  CMP.W           R0, #0x340
524890:  BGE             loc_5248AE
524892:  MOVW            R1, #0x2BD
524896:  CMP             R0, R1
524898:  BEQ             loc_5248C6
52489A:  CMP.W           R0, #0x2C0
52489E:  BEQ             loc_5248DC
5248A0:  MOVW            R1, #0x2C6
5248A4:  CMP             R0, R1
5248A6:  BNE             loc_5248F4
5248A8:  MOV.W           R1, #0x2C0
5248AC:  B               loc_5248FC
5248AE:  BEQ             loc_5248E2
5248B0:  MOVW            R1, #0x387
5248B4:  CMP             R0, R1
5248B6:  BEQ             loc_5248C0
5248B8:  MOVW            R1, #0x38A
5248BC:  CMP             R0, R1
5248BE:  BNE             loc_5248F4
5248C0:  MOVW            R1, #0x516
5248C4:  B               loc_5248FC
5248C6:  LDRB.W          R0, [R4,#0x485]
5248CA:  LSLS            R0, R0, #0x1F
5248CC:  ITT NE
5248CE:  LDRNE.W         R0, [R4,#0x590]
5248D2:  CMPNE           R0, #0
5248D4:  BNE             loc_5248F8
5248D6:  MOVW            R1, #0x38A
5248DA:  B               loc_5248FC
5248DC:  MOVW            R1, #0x387
5248E0:  B               loc_5248FC
5248E2:  LDRB.W          R0, [R4,#0x485]
5248E6:  MOVW            R1, #0x2C6
5248EA:  LSLS            R0, R0, #0x1F
5248EC:  IT EQ
5248EE:  MOVWEQ          R1, #0x38A
5248F2:  B               loc_5248FC
5248F4:  MOVS            R0, #0
5248F6:  POP             {R4,R5,R7,PC}
5248F8:  MOVW            R1, #0x2C6; int
5248FC:  MOV             R0, R5; this
5248FE:  MOV             R2, R4; CPed *
524900:  POP.W           {R4,R5,R7,LR}
524904:  B               _ZNK29CTaskComplexGoToPointAnyMeans13CreateSubTaskEiP4CPed; CTaskComplexGoToPointAnyMeans::CreateSubTask(int,CPed *)
