; =========================================================
; Game Engine Function: sub_1421D4
; Address            : 0x1421D4 - 0x142206
; =========================================================

1421D4:  PUSH            {R4,R5,R7,LR}
1421D6:  ADD             R7, SP, #8
1421D8:  SUB             SP, SP, #8
1421DA:  MOV             R4, R0
1421DC:  LDR             R0, =(off_234A24 - 0x1421E2)
1421DE:  ADD             R0, PC; off_234A24
1421E0:  LDR             R0, [R0]; dword_23DEEC
1421E2:  LDR             R0, [R0]
1421E4:  CBZ             R0, loc_1421FC
1421E6:  LDR             R5, [R0,#0x60]
1421E8:  MOV             R0, SP; int
1421EA:  LDR             R1, =(unk_87BBC - 0x1421F2)
1421EC:  MOVS            R2, #0x43 ; 'C'
1421EE:  ADD             R1, PC; unk_87BBC ; s
1421F0:  BL              sub_F1E90
1421F4:  LDR             R1, [SP,#0x10+var_10]
1421F6:  MOV             R0, R5
1421F8:  BL              sub_12D5E8
1421FC:  MOVS            R0, #1
1421FE:  STR.W           R0, [R4,#0x218]
142202:  ADD             SP, SP, #8
142204:  POP             {R4,R5,R7,PC}
