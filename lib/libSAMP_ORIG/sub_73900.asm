; =========================================================
; Game Engine Function: sub_73900
; Address            : 0x73900 - 0x7392E
; =========================================================

73900:  PUSH            {R4,R5,R7,LR}
73902:  ADD             R7, SP, #8
73904:  LDR             R1, =(byte_1A44C8 - 0x7390A)
73906:  ADD             R1, PC; byte_1A44C8
73908:  LDRB            R1, [R1]
7390A:  CMP             R1, #0
7390C:  ITTT NE
7390E:  LDRNE           R0, [R0,#4]
73910:  LDRBNE          R0, [R0,#8]
73912:  CMPNE           R0, #0
73914:  BNE             loc_73918
73916:  POP             {R4,R5,R7,PC}
73918:  LDR             R4, =(dword_1A44CC - 0x7391E)
7391A:  ADD             R4, PC; dword_1A44CC
7391C:  LDR             R0, [R4]
7391E:  CMP             R0, #0
73920:  BNE             locret_73916
73922:  MOVS            R0, #1
73924:  MOVS            R5, #1
73926:  BL              sub_74070
7392A:  STR             R5, [R4]
7392C:  POP             {R4,R5,R7,PC}
