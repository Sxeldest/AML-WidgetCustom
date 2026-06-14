; =========================================================
; Game Engine Function: _ZN26CTaskComplexUseWaterCannon17CreateNextSubTaskEP4CPed
; Address            : 0x511FA8 - 0x511FB8
; =========================================================

511FA8:  PUSH            {R7,LR}
511FAA:  MOV             R7, SP
511FAC:  LDR             R0, [R0,#8]
511FAE:  LDR             R1, [R0]
511FB0:  LDR             R1, [R1,#0x14]
511FB2:  BLX             R1
511FB4:  MOVS            R0, #0
511FB6:  POP             {R7,PC}
