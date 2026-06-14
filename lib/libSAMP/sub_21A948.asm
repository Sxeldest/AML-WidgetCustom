; =========================================================
; Game Engine Function: sub_21A948
; Address            : 0x21A948 - 0x21A980
; =========================================================

21A948:  PUSH            {R4-R7,LR}
21A94A:  ADD             R7, SP, #0xC
21A94C:  PUSH.W          {R11}
21A950:  MOV             R4, R1
21A952:  LDR             R1, =(aUnnamed - 0x21A95C); "'unnamed" ...
21A954:  LDR             R6, =(sub_216F98+1 - 0x21A964)
21A956:  MOV             R5, R0
21A958:  ADD             R1, PC; "'unnamed"
21A95A:  MOV             R0, R4
21A95C:  ADD.W           R2, R1, #8
21A960:  ADD             R6, PC; sub_216F98
21A962:  BLX             R6; sub_216F98
21A964:  LDRD.W          R1, R2, [R5,#8]
21A968:  MOV             R0, R4
21A96A:  BLX             R6; sub_216F98
21A96C:  LDR             R1, =(asc_88EDF - 0x21A976); "'" ...
21A96E:  MOV             R0, R4
21A970:  MOV             R3, R6
21A972:  ADD             R1, PC; "'"
21A974:  ADDS            R2, R1, #1
21A976:  POP.W           {R11}
21A97A:  POP.W           {R4-R7,LR}
21A97E:  BX              R3; sub_216F98
