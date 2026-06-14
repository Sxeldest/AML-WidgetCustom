; =========================================================
; Game Engine Function: sub_142780
; Address            : 0x142780 - 0x1427AA
; =========================================================

142780:  PUSH            {R4,R6,R7,LR}
142782:  ADD             R7, SP, #8
142784:  SUB             SP, SP, #8
142786:  LDR             R0, =(off_234A24 - 0x14278C)
142788:  ADD             R0, PC; off_234A24
14278A:  LDR             R0, [R0]; dword_23DEEC
14278C:  LDR             R0, [R0]
14278E:  CBZ             R0, loc_1427A6
142790:  LDR             R4, [R0,#0x60]
142792:  MOV             R0, SP; int
142794:  LDR             R1, =(unk_874FA - 0x14279C)
142796:  MOVS            R2, #0x4A ; 'J'
142798:  ADD             R1, PC; unk_874FA ; s
14279A:  BL              sub_F1E90
14279E:  LDR             R1, [SP,#0x10+var_10]
1427A0:  MOV             R0, R4
1427A2:  BL              sub_12D5E8
1427A6:  ADD             SP, SP, #8
1427A8:  POP             {R4,R6,R7,PC}
