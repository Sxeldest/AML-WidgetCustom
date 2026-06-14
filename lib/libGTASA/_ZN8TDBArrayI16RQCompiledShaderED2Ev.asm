; =========================================================
; Game Engine Function: _ZN8TDBArrayI16RQCompiledShaderED2Ev
; Address            : 0x1CDD02 - 0x1CDD1C
; =========================================================

1CDD02:  PUSH            {R4,R5,R7,LR}
1CDD04:  ADD             R7, SP, #8
1CDD06:  MOV             R4, R0
1CDD08:  MOVS            R5, #0
1CDD0A:  LDR             R0, [R4,#8]; p
1CDD0C:  STR             R5, [R4,#4]
1CDD0E:  CBZ             R0, loc_1CDD16
1CDD10:  BLX             free
1CDD14:  STR             R5, [R4,#8]
1CDD16:  MOV             R0, R4
1CDD18:  STR             R5, [R4]
1CDD1A:  POP             {R4,R5,R7,PC}
