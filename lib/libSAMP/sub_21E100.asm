; =========================================================
; Game Engine Function: sub_21E100
; Address            : 0x21E100 - 0x21E11A
; =========================================================

21E100:  PUSH            {R4,R6,R7,LR}
21E102:  ADD             R7, SP, #8
21E104:  MOV             R4, R0
21E106:  LDRB            R0, [R0,#4]
21E108:  CBNZ            R0, loc_21E116
21E10A:  MOVS            R0, #0xE0; sysno
21E10C:  BLX             syscall
21E110:  MOVS            R1, #1
21E112:  STR             R0, [R4]
21E114:  STRB            R1, [R4,#4]
21E116:  MOV             R0, R4
21E118:  POP             {R4,R6,R7,PC}
