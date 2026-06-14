; =========================================================
; Game Engine Function: _ZN7CEntity3AddEv
; Address            : 0x3ED888 - 0x3ED8AA
; =========================================================

3ED888:  PUSH            {R4,R5,R7,LR}
3ED88A:  ADD             R7, SP, #8
3ED88C:  SUB             SP, SP, #0x10
3ED88E:  MOV             R4, R0
3ED890:  MOV             R5, SP
3ED892:  LDR             R0, [R4]
3ED894:  MOV             R1, R4
3ED896:  LDR             R2, [R0,#0x28]
3ED898:  MOV             R0, R5
3ED89A:  BLX             R2
3ED89C:  LDR             R0, [R4]
3ED89E:  MOV             R1, R5
3ED8A0:  LDR             R2, [R0,#0xC]
3ED8A2:  MOV             R0, R4
3ED8A4:  BLX             R2
3ED8A6:  ADD             SP, SP, #0x10
3ED8A8:  POP             {R4,R5,R7,PC}
