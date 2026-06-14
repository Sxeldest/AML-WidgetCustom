; =========================================================
; Game Engine Function: _ZN25CTaskComplexReactToAttack17CreateNextSubTaskEP4CPed
; Address            : 0x4DFEDE - 0x4DFEFA
; =========================================================

4DFEDE:  LDRB            R1, [R0,#0xD]
4DFEE0:  CBZ             R1, loc_4DFEE6
4DFEE2:  MOVS            R0, #0
4DFEE4:  BX              LR
4DFEE6:  PUSH            {R7,LR}
4DFEE8:  MOV             R7, SP
4DFEEA:  LDR             R0, [R0,#8]
4DFEEC:  LDR             R1, [R0]
4DFEEE:  LDR             R1, [R1,#0x14]
4DFEF0:  BLX             R1
4DFEF2:  POP.W           {R7,LR}
4DFEF6:  MOVS            R0, #0
4DFEF8:  BX              LR
