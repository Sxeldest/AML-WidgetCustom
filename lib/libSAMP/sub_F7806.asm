; =========================================================
; Game Engine Function: sub_F7806
; Address            : 0xF7806 - 0xF7876
; =========================================================

F7806:  PUSH            {R4-R7,LR}
F7808:  ADD             R7, SP, #0xC
F780A:  PUSH.W          {R8-R10}
F780E:  MOV             R8, R1
F7810:  MOV             R1, R0
F7812:  LDR.W           R4, [R1,#4]!
F7816:  CBZ             R4, loc_F7854
F7818:  ADD.W           R5, R0, #8
F781C:  ADD.W           R10, R0, #4
F7820:  MOV             R9, R2
F7822:  ADD.W           R6, R4, #0x10
F7826:  MOV             R0, R5
F7828:  MOV             R1, R9
F782A:  MOV             R2, R6
F782C:  BL              sub_F78EE
F7830:  CBZ             R0, loc_F7838
F7832:  LDR             R0, [R4]
F7834:  CBNZ            R0, loc_F784E
F7836:  B               loc_F785A
F7838:  MOV             R0, R5
F783A:  MOV             R1, R6
F783C:  MOV             R2, R9
F783E:  BL              sub_F78EE
F7842:  CBZ             R0, loc_F7860
F7844:  MOV             R1, R4
F7846:  LDR.W           R0, [R1,#4]!
F784A:  CBZ             R0, loc_F7868
F784C:  MOV             R4, R1
F784E:  MOV             R10, R4
F7850:  MOV             R4, R0
F7852:  B               loc_F7822
F7854:  STR.W           R1, [R8]
F7858:  B               loc_F786C
F785A:  STR.W           R4, [R8]
F785E:  B               loc_F786E
F7860:  STR.W           R4, [R8]
F7864:  MOV             R4, R10
F7866:  B               loc_F786E
F7868:  STR.W           R4, [R8]
F786C:  MOV             R4, R1
F786E:  MOV             R0, R4
F7870:  POP.W           {R8-R10}
F7874:  POP             {R4-R7,PC}
