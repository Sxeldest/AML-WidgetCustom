; =========================================================
; Game Engine Function: sub_126994
; Address            : 0x126994 - 0x1269A6
; =========================================================

126994:  PUSH            {R4,R6,R7,LR}
126996:  ADD             R7, SP, #8
126998:  MOV             R4, R0
12699A:  LDR             R0, [R0,#4]; void *
12699C:  CBZ             R0, loc_1269A2
12699E:  BLX             j__ZdlPv; operator delete(void *)
1269A2:  MOV             R0, R4
1269A4:  POP             {R4,R6,R7,PC}
