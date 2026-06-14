; =========================================================
; Game Engine Function: sub_EF646
; Address            : 0xEF646 - 0xEF67E
; =========================================================

EF646:  PUSH            {R4,R6,R7,LR}
EF648:  ADD             R7, SP, #8
EF64A:  SUB             SP, SP, #8
EF64C:  MOV             R4, R0
EF64E:  CBZ             R1, loc_EF66A
EF650:  LDRB            R0, [R4,#4]
EF652:  CBNZ            R0, loc_EF66A
EF654:  LDR             R2, [R4]
EF656:  MOVS            R3, #0x4F ; 'O'
EF658:  LDRD.W          R0, R1, [R4,#8]
EF65C:  STR             R3, [SP,#0x10+var_10]
EF65E:  MOVS            R3, #0x56 ; 'V'
EF660:  BL              sub_EFCE0
EF664:  STR             R0, [R4,#8]
EF666:  ADD             SP, SP, #8
EF668:  POP             {R4,R6,R7,PC}
EF66A:  MOV             R0, R4
EF66C:  BL              sub_F0418
EF670:  MOV             R1, R0
EF672:  MOV             R0, R4
EF674:  ADD             SP, SP, #8
EF676:  POP.W           {R4,R6,R7,LR}
EF67A:  B.W             sub_EFC70
