; =========================================================
; Game Engine Function: sub_FE844
; Address            : 0xFE844 - 0xFE89E
; =========================================================

FE844:  PUSH            {R4-R7,LR}
FE846:  ADD             R7, SP, #0xC
FE848:  PUSH.W          {R11}
FE84C:  CBZ             R0, loc_FE88C
FE84E:  LDR             R1, =(word_247566 - 0xFE856)
FE850:  LDR             R2, =(byte_247564 - 0xFE85A)
FE852:  ADD             R1, PC; word_247566
FE854:  LDRB            R3, [R0,#0x1F]
FE856:  ADD             R2, PC; byte_247564
FE858:  MOV             R12, R1
FE85A:  LDRB.W          R1, [R0,#0x3A]
FE85E:  LDR             R5, =(off_25AE7C - 0xFE876)
FE860:  AND.W           R3, R3, #1
FE864:  AND.W           R1, R1, #7
FE868:  LDRH            R4, [R0,#0x26]
FE86A:  LDR             R6, =(byte_247565 - 0xFE878)
FE86C:  SUBS            R1, #3
FE86E:  CLZ.W           R1, R1
FE872:  ADD             R5, PC; off_25AE7C
FE874:  ADD             R6, PC; byte_247565
FE876:  STRB            R3, [R2]
FE878:  LSRS            R1, R1, #5
FE87A:  STRH.W          R4, [R12]
FE87E:  LDR             R2, [R5]
FE880:  STRB            R1, [R6]
FE882:  POP.W           {R11}
FE886:  POP.W           {R4-R7,LR}
FE88A:  BX              R2
FE88C:  LDR             R0, =(off_25AE7C - 0xFE892)
FE88E:  ADD             R0, PC; off_25AE7C
FE890:  LDR             R1, [R0]
FE892:  MOVS            R0, #0
FE894:  POP.W           {R11}
FE898:  POP.W           {R4-R7,LR}
FE89C:  BX              R1
