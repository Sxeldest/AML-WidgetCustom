; =========================================================
; Game Engine Function: sub_13484C
; Address            : 0x13484C - 0x134880
; =========================================================

13484C:  PUSH            {R4,R6,R7,LR}
13484E:  ADD             R7, SP, #8
134850:  LDR             R4, [R0,#4]
134852:  LDRB.W          R0, [R4,#0x50]
134856:  CBZ             R0, loc_134862
134858:  LDR             R0, [R4]
13485A:  MOVS            R1, #0
13485C:  LDR             R2, [R0,#0x24]
13485E:  MOV             R0, R4
134860:  BLX             R2
134862:  LDR             R0, =(off_23496C - 0x13486E)
134864:  MOVS            R1, #0
134866:  STRB.W          R1, [R4,#0x50]
13486A:  ADD             R0, PC; off_23496C
13486C:  LDR             R0, [R0]; dword_23DEF4
13486E:  LDR             R0, [R0]
134870:  CBZ             R0, locret_13487E
134872:  LDR             R1, =(aInvent - 0x134878); "/invent" ...
134874:  ADD             R1, PC; "/invent"
134876:  POP.W           {R4,R6,R7,LR}
13487A:  B.W             sub_144460
13487E:  POP             {R4,R6,R7,PC}
