; =========================================================
; Game Engine Function: sub_13470C
; Address            : 0x13470C - 0x134740
; =========================================================

13470C:  PUSH            {R4,R6,R7,LR}
13470E:  ADD             R7, SP, #8
134710:  LDR             R4, [R0,#4]
134712:  LDRB.W          R0, [R4,#0x50]
134716:  CBZ             R0, loc_134722
134718:  LDR             R0, [R4]
13471A:  MOVS            R1, #0
13471C:  LDR             R2, [R0,#0x24]
13471E:  MOV             R0, R4
134720:  BLX             R2
134722:  LDR             R0, =(off_23496C - 0x13472E)
134724:  MOVS            R1, #0
134726:  STRB.W          R1, [R4,#0x50]
13472A:  ADD             R0, PC; off_23496C
13472C:  LDR             R0, [R0]; dword_23DEF4
13472E:  LDR             R0, [R0]
134730:  CBZ             R0, locret_13473E
134732:  LDR             R1, =(aBattlepass - 0x134738); "/battlepass" ...
134734:  ADD             R1, PC; "/battlepass"
134736:  POP.W           {R4,R6,R7,LR}
13473A:  B.W             sub_144460
13473E:  POP             {R4,R6,R7,PC}
