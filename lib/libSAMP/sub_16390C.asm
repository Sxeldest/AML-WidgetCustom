; =========================================================
; Game Engine Function: sub_16390C
; Address            : 0x16390C - 0x163946
; =========================================================

16390C:  B.W             loc_163910
163910:  PUSH            {R7,LR}
163912:  MOV             R7, SP
163914:  MOV             R12, R0
163916:  LDR             R0, =(off_23494C - 0x16391C)
163918:  ADD             R0, PC; off_23494C
16391A:  LDR             R0, [R0]; dword_23DF24
16391C:  LDR.W           LR, [R0]
163920:  MOVS            R0, #0
163922:  CMP.W           LR, #0
163926:  ITTT NE
163928:  MOVWNE          R3, #0x2D14
16392C:  MOVTNE          R3, #0x67 ; 'g'
163930:  ADDSNE.W        R3, R3, LR
163934:  BNE             loc_163938
163936:  POP             {R7,PC}
163938:  LDR             R3, [R3]
16393A:  CBZ             R3, loc_163942
16393C:  MOV             R0, R12
16393E:  BLX             R3
163940:  B               locret_163936
163942:  MOVS            R0, #0
163944:  POP             {R7,PC}
