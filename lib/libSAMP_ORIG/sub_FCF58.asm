; =========================================================
; Game Engine Function: sub_FCF58
; Address            : 0xFCF58 - 0xFCF76
; =========================================================

FCF58:  PUSH            {R4,R5,R7,LR}
FCF5A:  ADD             R7, SP, #8
FCF5C:  LDRB            R4, [R1]
FCF5E:  LDRD.W          R2, R3, [R1,#4]
FCF62:  ANDS.W          R5, R4, #1
FCF66:  ITT EQ
FCF68:  ADDEQ           R3, R1, #1
FCF6A:  LSREQ           R2, R4, #1
FCF6C:  MOV             R1, R3
FCF6E:  POP.W           {R4,R5,R7,LR}
FCF72:  B.W             sub_10C560
