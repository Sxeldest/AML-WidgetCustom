; =========================================================
; Game Engine Function: sub_104700
; Address            : 0x104700 - 0x104796
; =========================================================

104700:  PUSH            {R4-R7,LR}
104702:  ADD             R7, SP, #0xC
104704:  PUSH.W          {R11}
104708:  SUB             SP, SP, #0x30
10470A:  MOV             R5, R0
10470C:  LDR             R0, [R0,#0x5C]
10470E:  CBZ             R0, loc_104728
104710:  LDR             R0, [R5,#8]
104712:  BL              sub_1082F4
104716:  CBZ             R0, loc_104728
104718:  LDR             R0, [R5,#0x5C]
10471A:  LDR.W           R1, [R0,#0x590]
10471E:  CBZ             R1, loc_104728
104720:  LDRB.W          R0, [R0,#0x485]
104724:  LSLS            R0, R0, #0x1F
104726:  BNE             loc_104732
104728:  MOVS            R0, #0
10472A:  ADD             SP, SP, #0x30 ; '0'
10472C:  POP.W           {R11}
104730:  POP             {R4-R7,PC}
104732:  MOV             R0, R5
104734:  BL              sub_104648
104738:  MOV             R4, R0
10473A:  CMP             R0, #0x2E ; '.'
10473C:  BNE             loc_10474A
10473E:  MOV             R0, R5
104740:  MOVS            R1, #0
104742:  MOVS            R2, #0
104744:  BL              sub_10479C
104748:  B               loc_10478C
10474A:  MOV             R0, R5
10474C:  MOV             R1, R4
10474E:  MOVS            R2, #0
104750:  MOVS            R6, #0
104752:  BL              sub_10479C
104756:  MOVW            R2, #0xC000
10475A:  LDR             R1, [R5,#8]
10475C:  LDR             R0, =(unk_B3726 - 0x10476C)
10475E:  MOVT            R2, #0x4072
104762:  STRD.W          R6, R2, [SP,#0x40+var_28]
104766:  MOVS            R2, #0x14
104768:  ADD             R0, PC; unk_B3726
10476A:  STRD.W          R6, R6, [SP,#0x40+var_40]
10476E:  STRD.W          R6, R6, [SP,#0x40+var_38]
104772:  MOVS            R3, #1
104774:  STRD.W          R6, R6, [SP,#0x40+var_30]
104778:  MOVS            R6, #8
10477A:  STRD.W          R6, R3, [SP,#0x40+var_20]
10477E:  MOV.W           R3, #0xFFFFFFFF
104782:  STR             R2, [SP,#0x40+var_18]
104784:  MOV.W           R2, #0xFFFFFFFF
104788:  BL              sub_107188
10478C:  SUBS.W          R0, R4, #0x2E ; '.'
104790:  IT NE
104792:  MOVNE           R0, #1
104794:  B               loc_10472A
