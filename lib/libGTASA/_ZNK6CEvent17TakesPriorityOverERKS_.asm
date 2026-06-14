; =========================================================
; Game Engine Function: _ZNK6CEvent17TakesPriorityOverERKS_
; Address            : 0x3780CA - 0x3780EC
; =========================================================

3780CA:  PUSH            {R4,R5,R7,LR}
3780CC:  ADD             R7, SP, #8
3780CE:  MOV             R4, R1
3780D0:  LDR             R1, [R0]
3780D2:  LDR             R1, [R1,#0xC]
3780D4:  BLX             R1
3780D6:  MOV             R5, R0
3780D8:  LDR             R0, [R4]
3780DA:  LDR             R1, [R0,#0xC]
3780DC:  MOV             R0, R4
3780DE:  BLX             R1
3780E0:  MOVS            R1, #0
3780E2:  CMP             R5, R0
3780E4:  IT GE
3780E6:  MOVGE           R1, #1
3780E8:  MOV             R0, R1
3780EA:  POP             {R4,R5,R7,PC}
