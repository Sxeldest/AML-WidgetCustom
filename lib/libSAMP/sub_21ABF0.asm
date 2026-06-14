; =========================================================
; Game Engine Function: sub_21ABF0
; Address            : 0x21ABF0 - 0x21AC22
; =========================================================

21ABF0:  PUSH            {R4,R5,R7,LR}
21ABF2:  ADD             R7, SP, #8
21ABF4:  MOV             R4, R1
21ABF6:  LDR             R1, =(aTemplate - 0x21AC00); "template<" ...
21ABF8:  MOV             R5, R0
21ABFA:  MOV             R0, R4
21ABFC:  ADD             R1, PC; "template<"
21ABFE:  ADD.W           R2, R1, #9
21AC02:  BL              sub_216F98
21AC06:  ADD.W           R0, R5, #0xC
21AC0A:  MOV             R1, R4
21AC0C:  BL              sub_21AC38
21AC10:  LDR             R1, =(aTypename_0 - 0x21AC18); "> typename " ...
21AC12:  MOV             R0, R4
21AC14:  ADD             R1, PC; "> typename "
21AC16:  ADD.W           R2, R1, #0xB
21AC1A:  POP.W           {R4,R5,R7,LR}
21AC1E:  B.W             sub_216F98
