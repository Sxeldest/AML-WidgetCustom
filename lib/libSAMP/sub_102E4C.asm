; =========================================================
; Game Engine Function: sub_102E4C
; Address            : 0x102E4C - 0x102E7C
; =========================================================

102E4C:  PUSH            {R7,LR}
102E4E:  MOV             R7, SP
102E50:  LDR             R1, =(off_234A74 - 0x102E56)
102E52:  ADD             R1, PC; off_234A74
102E54:  LDR             R1, [R1]; dword_2402E4
102E56:  LDR             R1, [R1]
102E58:  LDR             R1, [R1]
102E5A:  CBZ             R1, loc_102E6A
102E5C:  LDR             R0, =(unk_25B22C - 0x102E66)
102E5E:  RSB.W           R1, R1, R1,LSL#3
102E62:  ADD             R0, PC; unk_25B22C
102E64:  LDRH.W          R0, [R0,R1,LSL#2]
102E68:  B               loc_102E78
102E6A:  LDR             R1, =(off_25C968 - 0x102E70)
102E6C:  ADD             R1, PC; off_25C968
102E6E:  LDR             R1, [R1]
102E70:  BLX             R1
102E72:  LDR             R1, =(word_25B210 - 0x102E78)
102E74:  ADD             R1, PC; word_25B210
102E76:  STRH            R0, [R1]
102E78:  SXTH            R0, R0
102E7A:  POP             {R7,PC}
