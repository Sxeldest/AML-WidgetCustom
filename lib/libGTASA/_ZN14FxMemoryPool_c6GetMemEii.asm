; =========================================================
; Game Engine Function: _ZN14FxMemoryPool_c6GetMemEii
; Address            : 0x36DAE4 - 0x36DB16
; =========================================================

36DAE4:  PUSH            {R4-R7,LR}
36DAE6:  ADD             R7, SP, #0xC
36DAE8:  PUSH.W          {R8}
36DAEC:  MOV             R4, R0
36DAEE:  MOV             R5, R2
36DAF0:  LDR             R6, [R4,#8]
36DAF2:  MOV             R8, R1
36DAF4:  MOV             R1, R5
36DAF6:  MOV             R0, R6
36DAF8:  BLX             __aeabi_uidivmod
36DAFC:  CMP             R1, #1
36DAFE:  ITTT GE
36DB00:  ADDGE           R0, R6, R5
36DB02:  SUBGE           R6, R0, R1
36DB04:  STRGE           R6, [R4,#8]
36DB06:  LDR             R0, [R4]
36DB08:  ADD.W           R1, R6, R8
36DB0C:  STR             R1, [R4,#8]
36DB0E:  ADD             R0, R6
36DB10:  POP.W           {R8}
36DB14:  POP             {R4-R7,PC}
