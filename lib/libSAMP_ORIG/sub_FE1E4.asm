; =========================================================
; Game Engine Function: sub_FE1E4
; Address            : 0xFE1E4 - 0xFE1FC
; =========================================================

FE1E4:  PUSH            {R4,R5,R7,LR}
FE1E6:  ADD             R7, SP, #8
FE1E8:  MOV             R5, R0
FE1EA:  STR             R1, [R0]
FE1EC:  MOV             R0, R1; s
FE1EE:  MOV             R4, R1
FE1F0:  BLX             strlen
FE1F4:  ADD             R0, R4
FE1F6:  STR             R0, [R5,#4]
FE1F8:  MOV             R0, R5
FE1FA:  POP             {R4,R5,R7,PC}
