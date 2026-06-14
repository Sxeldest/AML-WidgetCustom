; =========================================================
; Game Engine Function: sub_10650C
; Address            : 0x10650C - 0x10653E
; =========================================================

10650C:  PUSH            {R4,R6,R7,LR}
10650E:  ADD             R7, SP, #8
106510:  MOV             R4, R0
106512:  LDR             R0, [R0,#0x5C]
106514:  CBZ             R0, locret_10653C
106516:  LDRB.W          R0, [R0,#0x485]
10651A:  LSLS            R0, R0, #0x1B
10651C:  BMI             locret_10653C
10651E:  MOV             R0, R4
106520:  BL              sub_F8C70
106524:  CBZ             R0, locret_10653C
106526:  LDR             R0, [R4,#8]
106528:  BL              sub_1082F4
10652C:  CBZ             R0, locret_10653C
10652E:  LDR             R0, =(unk_B38A2 - 0x10653A)
106530:  MOV             R2, #0xFFFFFFFE
106534:  LDR             R1, [R4,#8]
106536:  ADD             R0, PC; unk_B38A2
106538:  BL              sub_107188
10653C:  POP             {R4,R6,R7,PC}
