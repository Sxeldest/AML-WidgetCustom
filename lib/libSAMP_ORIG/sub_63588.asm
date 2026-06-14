; =========================================================
; Game Engine Function: sub_63588
; Address            : 0x63588 - 0x635CC
; =========================================================

63588:  PUSH            {R4,R6,R7,LR}
6358A:  ADD             R7, SP, #8
6358C:  MOV             R4, R0
6358E:  LDR             R0, =(off_114B10 - 0x63594)
63590:  ADD             R0, PC; off_114B10
63592:  LDR             R0, [R0]; dword_1A442C
63594:  LDR             R0, [R0]
63596:  CMP             R0, #0
63598:  ITTT NE
6359A:  LDRNE.W         R0, [R0,#0x8C]
6359E:  MOVNE           R1, #0
635A0:  STRBNE          R1, [R0,#8]
635A2:  LDR             R0, =(off_114B50 - 0x635A8)
635A4:  ADD             R0, PC; off_114B50
635A6:  LDR             R0, [R0]; byte_1A49B0
635A8:  LDRB            R0, [R0]
635AA:  CBZ             R0, loc_635BE
635AC:  LDR             R0, =(off_114B54 - 0x635B4)
635AE:  MOVS            R1, #1
635B0:  ADD             R0, PC; off_114B54
635B2:  LDR             R0, [R0]; byte_1A448C
635B4:  STRB            R1, [R0]
635B6:  BL              sub_7E3C0
635BA:  BL              sub_83B10
635BE:  LDR             R0, =(off_1A3A5C - 0x635C4)
635C0:  ADD             R0, PC; off_1A3A5C
635C2:  LDR             R1, [R0]
635C4:  MOV             R0, R4
635C6:  POP.W           {R4,R6,R7,LR}
635CA:  BX              R1
