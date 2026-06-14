; =========================================================
; Game Engine Function: _ZN11CWidgetList16GetSelectedEntryEPc
; Address            : 0x2BA864 - 0x2BA894
; =========================================================

2BA864:  PUSH            {R4,R6,R7,LR}
2BA866:  ADD             R7, SP, #8
2BA868:  ADD.W           R2, R0, #0x10000
2BA86C:  CMP             R1, #0
2BA86E:  ADD.W           R4, R2, #0x1CC0
2BA872:  ITT NE
2BA874:  LDRNE           R2, [R4]
2BA876:  ADDSNE.W        R3, R2, #1
2BA87A:  BEQ             loc_2BA890
2BA87C:  MOV.W           R3, #0x11C
2BA880:  MLA.W           R0, R2, R3, R0
2BA884:  ADD.W           R2, R0, #0x90
2BA888:  MOV             R0, R1; char *
2BA88A:  MOV             R1, R2; char *
2BA88C:  BLX             strcpy
2BA890:  LDR             R0, [R4]
2BA892:  POP             {R4,R6,R7,PC}
