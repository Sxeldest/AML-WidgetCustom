; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeShooting17CreateNextSubTaskEP4CPed
; Address            : 0x51428E - 0x5142CA
; =========================================================

51428E:  PUSH            {R4,R5,R7,LR}
514290:  ADD             R7, SP, #8
514292:  MOV             R4, R0
514294:  LDRD.W          R0, R5, [R4,#8]
514298:  LDR             R1, [R0]
51429A:  LDR             R1, [R1,#0x14]
51429C:  BLX             R1
51429E:  LDR             R0, [R4,#8]
5142A0:  LDR             R1, [R0]
5142A2:  LDR             R1, [R1,#0x14]
5142A4:  BLX             R1
5142A6:  CBZ             R5, loc_5142BA
5142A8:  MOVW            R1, #0x38E
5142AC:  CMP             R0, R1
5142AE:  BEQ             loc_5142BE
5142B0:  CMP             R0, #0xCB
5142B2:  BNE             loc_5142BA
5142B4:  MOVW            R1, #0x38E
5142B8:  B               loc_5142C2
5142BA:  MOVS            R0, #0
5142BC:  POP             {R4,R5,R7,PC}
5142BE:  MOVW            R1, #0x516; int
5142C2:  MOV             R0, R4; this
5142C4:  POP.W           {R4,R5,R7,LR}
5142C8:  B               _ZN27CTaskComplexSmartFleeEntity13CreateSubTaskEi; CTaskComplexSmartFleeEntity::CreateSubTask(int)
