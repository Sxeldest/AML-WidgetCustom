; =========================================================
; Game Engine Function: sub_EF918
; Address            : 0xEF918 - 0xEF94C
; =========================================================

EF918:  PUSH            {R4,R6,R7,LR}
EF91A:  ADD             R7, SP, #8
EF91C:  SUB             SP, SP, #8
EF91E:  MOV             R4, R0
EF920:  LDRB            R0, [R0,#4]
EF922:  CBZ             R0, loc_EF930
EF924:  MOV             R0, R4
EF926:  ADD             SP, SP, #8
EF928:  POP.W           {R4,R6,R7,LR}
EF92C:  B.W             sub_EF980
EF930:  LDR             R2, [R4]
EF932:  CMP             R1, #0
EF934:  LDRD.W          R0, R3, [R4,#8]
EF938:  IT NE
EF93A:  MOVNE           R1, #0x45 ; 'E'
EF93C:  STR             R1, [SP,#0x10+var_10]
EF93E:  MOV             R1, R3
EF940:  MOVS            R3, #0x78 ; 'x'
EF942:  BL              sub_EFCE0
EF946:  STR             R0, [R4,#8]
EF948:  ADD             SP, SP, #8
EF94A:  POP             {R4,R6,R7,PC}
