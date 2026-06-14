; =========================================================
; Game Engine Function: sub_1638C8
; Address            : 0x1638C8 - 0x163902
; =========================================================

1638C8:  B.W             loc_1638CC
1638CC:  PUSH            {R7,LR}
1638CE:  MOV             R7, SP
1638D0:  MOV             R12, R0
1638D2:  LDR             R0, =(off_23494C - 0x1638D8)
1638D4:  ADD             R0, PC; off_23494C
1638D6:  LDR             R0, [R0]; dword_23DF24
1638D8:  LDR.W           LR, [R0]
1638DC:  MOVS            R0, #0
1638DE:  CMP.W           LR, #0
1638E2:  ITTT NE
1638E4:  MOVWNE          R3, #0x4C90
1638E8:  MOVTNE          R3, #0x67 ; 'g'
1638EC:  ADDSNE.W        R3, R3, LR
1638F0:  BNE             loc_1638F4
1638F2:  POP             {R7,PC}
1638F4:  LDR             R3, [R3]
1638F6:  CBZ             R3, loc_1638FE
1638F8:  MOV             R0, R12
1638FA:  BLX             R3
1638FC:  B               locret_1638F2
1638FE:  MOVS            R0, #0
163900:  POP             {R7,PC}
