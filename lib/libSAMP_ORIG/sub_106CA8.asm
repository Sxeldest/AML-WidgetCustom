; =========================================================
; Game Engine Function: sub_106CA8
; Address            : 0x106CA8 - 0x106CC2
; =========================================================

106CA8:  PUSH            {R4,R6,R7,LR}
106CAA:  ADD             R7, SP, #8
106CAC:  MOV             R4, R0
106CAE:  LDRB            R0, [R0,#4]
106CB0:  CBNZ            R0, loc_106CBE
106CB2:  MOVS            R0, #0xE0; sysno
106CB4:  BLX             syscall
106CB8:  MOVS            R1, #1
106CBA:  STR             R0, [R4]
106CBC:  STRB            R1, [R4,#4]
106CBE:  MOV             R0, R4
106CC0:  POP             {R4,R6,R7,PC}
