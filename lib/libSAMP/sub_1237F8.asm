; =========================================================
; Game Engine Function: sub_1237F8
; Address            : 0x1237F8 - 0x123872
; =========================================================

1237F8:  PUSH            {R4-R7,LR}
1237FA:  ADD             R7, SP, #0xC
1237FC:  PUSH.W          {R11}
123800:  MOV             R4, R0
123802:  LDR             R0, =(off_23494C - 0x12380C)
123804:  MOVW            R2, #0xD77C
123808:  ADD             R0, PC; off_23494C
12380A:  MOVT            R2, #0x66 ; 'f'
12380E:  LDR             R5, [R0]; dword_23DF24
123810:  LDR             R0, [R5]
123812:  LDR             R1, =(off_263BD4 - 0x12381A)
123814:  ADD             R0, R2
123816:  ADD             R1, PC; off_263BD4
123818:  MOVS            R2, #0
12381A:  BL              sub_164222
12381E:  LDR             R0, [R5]
123820:  MOVW            R6, #0xDC38
123824:  LDR             R1, =(off_263BD4 - 0x123830)
123826:  MOVT            R6, #0x66 ; 'f'
12382A:  ADD             R0, R6
12382C:  ADD             R1, PC; off_263BD4
12382E:  MOVS            R2, #0
123830:  BL              sub_164222
123834:  LDR             R0, [R5]
123836:  LDR             R1, =(off_263BD4 - 0x12383E)
123838:  ADD             R0, R6
12383A:  ADD             R1, PC; off_263BD4
12383C:  ADD.W           R0, R0, #0x128
123840:  MOVS            R2, #0
123842:  BL              sub_164222
123846:  LDR             R0, [R5]
123848:  LDR             R1, =(off_263BD4 - 0x123850)
12384A:  ADD             R0, R6
12384C:  ADD             R1, PC; off_263BD4
12384E:  ADD.W           R0, R0, #0x250
123852:  MOVS            R2, #0
123854:  BL              sub_164222
123858:  LDR             R0, [R5]
12385A:  LDR             R1, =(off_263BD4 - 0x123862)
12385C:  ADD             R0, R6
12385E:  ADD             R1, PC; off_263BD4
123860:  ADD.W           R0, R0, #0x378
123864:  MOVS            R2, #0
123866:  BL              sub_164222
12386A:  MOV             R0, R4
12386C:  POP.W           {R11}
123870:  POP             {R4-R7,PC}
