; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive14GetPedsBopInfoEP4CPedPiS2_
; Address            : 0x4FAEA4 - 0x4FAEC8
; =========================================================

4FAEA4:  PUSH            {R4,R5,R7,LR}
4FAEA6:  ADD             R7, SP, #8
4FAEA8:  LDR.W           R0, [R1,#0x440]
4FAEAC:  MOVW            R1, #0x2C5; int
4FAEB0:  MOV             R5, R3
4FAEB2:  MOV             R4, R2
4FAEB4:  ADDS            R0, #4; this
4FAEB6:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4FAEBA:  CMP             R0, #0
4FAEBC:  ITTTT NE
4FAEBE:  LDRNE           R1, [R0,#0x28]
4FAEC0:  STRNE           R1, [R5]
4FAEC2:  LDRNE           R0, [R0,#0x20]
4FAEC4:  STRNE           R0, [R4]
4FAEC6:  POP             {R4,R5,R7,PC}
