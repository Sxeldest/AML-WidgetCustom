; =========================================================
; Game Engine Function: sub_1131CE
; Address            : 0x1131CE - 0x1131EC
; =========================================================

1131CE:  PUSH            {R4,R5,R7,LR}
1131D0:  ADD             R7, SP, #8
1131D2:  MOV             R4, R0
1131D4:  LDR             R0, [R0,#4]
1131D6:  CBZ             R0, loc_1131DA
1131D8:  POP             {R4,R5,R7,PC}
1131DA:  MOV.W           R0, #0x860; unsigned int
1131DE:  BLX             j__Znwj; operator new(uint)
1131E2:  MOV             R5, R0
1131E4:  BL              sub_11245C
1131E8:  STR             R5, [R4,#4]
1131EA:  POP             {R4,R5,R7,PC}
