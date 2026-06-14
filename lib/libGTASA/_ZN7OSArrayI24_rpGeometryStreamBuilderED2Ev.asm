; =========================================================
; Game Engine Function: _ZN7OSArrayI24_rpGeometryStreamBuilderED2Ev
; Address            : 0x220E90 - 0x220EAA
; =========================================================

220E90:  PUSH            {R4,R5,R7,LR}
220E92:  ADD             R7, SP, #8
220E94:  MOV             R4, R0
220E96:  MOVS            R5, #0
220E98:  LDR             R0, [R4,#8]; p
220E9A:  STR             R5, [R4,#4]
220E9C:  CBZ             R0, loc_220EA4
220E9E:  BLX             free
220EA2:  STR             R5, [R4,#8]
220EA4:  MOV             R0, R4
220EA6:  STR             R5, [R4]
220EA8:  POP             {R4,R5,R7,PC}
