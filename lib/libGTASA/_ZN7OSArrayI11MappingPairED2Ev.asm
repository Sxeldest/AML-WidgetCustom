; =========================================================
; Game Engine Function: _ZN7OSArrayI11MappingPairED2Ev
; Address            : 0x28CC2C - 0x28CC46
; =========================================================

28CC2C:  PUSH            {R4,R5,R7,LR}
28CC2E:  ADD             R7, SP, #8
28CC30:  MOV             R4, R0
28CC32:  MOVS            R5, #0
28CC34:  LDR             R0, [R4,#8]; p
28CC36:  STR             R5, [R4,#4]
28CC38:  CBZ             R0, loc_28CC40
28CC3A:  BLX             free
28CC3E:  STR             R5, [R4,#8]
28CC40:  MOV             R0, R4
28CC42:  STR             R5, [R4]
28CC44:  POP             {R4,R5,R7,PC}
