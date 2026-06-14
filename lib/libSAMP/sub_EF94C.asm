; =========================================================
; Game Engine Function: sub_EF94C
; Address            : 0xEF94C - 0xEF980
; =========================================================

EF94C:  PUSH            {R4,R6,R7,LR}
EF94E:  ADD             R7, SP, #8
EF950:  SUB             SP, SP, #8
EF952:  MOV             R4, R0
EF954:  LDRB            R0, [R0,#4]
EF956:  CBZ             R0, loc_EF964
EF958:  MOV             R0, R4
EF95A:  ADD             SP, SP, #8
EF95C:  POP.W           {R4,R6,R7,LR}
EF960:  B.W             sub_EEBD8
EF964:  LDR             R2, [R4]
EF966:  CMP             R1, #0
EF968:  LDRD.W          R0, R3, [R4,#8]
EF96C:  IT NE
EF96E:  MOVNE           R1, #0x45 ; 'E'
EF970:  STR             R1, [SP,#0x10+var_10]
EF972:  MOV             R1, R3
EF974:  MOVS            R3, #0x58 ; 'X'
EF976:  BL              sub_EFCE0
EF97A:  STR             R0, [R4,#8]
EF97C:  ADD             SP, SP, #8
EF97E:  POP             {R4,R6,R7,PC}
