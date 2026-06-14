; =========================================================
; Game Engine Function: sub_12A904
; Address            : 0x12A904 - 0x12A9A2
; =========================================================

12A904:  PUSH            {R4,R6,R7,LR}
12A906:  ADD             R7, SP, #8
12A908:  MOV             R4, R0
12A90A:  LDRB.W          R0, [R0,#0x50]
12A90E:  CMP             R0, #0
12A910:  BEQ             locret_12A9A0
12A912:  LDR             R1, [R4,#0x54]
12A914:  LDR.W           R0, [R4,#0x84]
12A918:  LDR             R1, [R1,#0x18]
12A91A:  BL              sub_1382D8
12A91E:  LDR             R0, =(off_234A38 - 0x12A924)
12A920:  ADD             R0, PC; off_234A38
12A922:  LDR             R0, [R0]; dword_23DEF8
12A924:  LDR             R0, [R0]
12A926:  CBZ             R0, loc_12A930
12A928:  LDR             R1, [R4,#0x54]
12A92A:  LDR             R1, [R1,#0x18]
12A92C:  BL              sub_F16BC
12A930:  LDR             R0, =(off_234A3C - 0x12A936)
12A932:  ADD             R0, PC; off_234A3C
12A934:  LDR             R0, [R0]; dword_23DF10
12A936:  LDR             R0, [R0]
12A938:  CBZ             R0, loc_12A942
12A93A:  LDR             R1, [R4,#0x54]
12A93C:  LDR             R1, [R1,#0x18]
12A93E:  BL              sub_F1F4C
12A942:  LDR             R0, =(off_234A28 - 0x12A948)
12A944:  ADD             R0, PC; off_234A28
12A946:  LDR             R0, [R0]; dword_23DF08
12A948:  LDR             R0, [R0]
12A94A:  CBZ             R0, loc_12A954
12A94C:  LDR             R1, [R4,#0x54]
12A94E:  LDR             R1, [R1,#0x18]
12A950:  BL              sub_E3464
12A954:  LDR             R0, =(off_234A20 - 0x12A95A)
12A956:  ADD             R0, PC; off_234A20
12A958:  LDR             R0, [R0]; dword_23DF0C
12A95A:  LDR             R0, [R0]
12A95C:  CBZ             R0, loc_12A966
12A95E:  LDR             R1, [R4,#0x54]
12A960:  LDR             R1, [R1,#0x18]
12A962:  BL              sub_14826C
12A966:  LDR             R0, =(off_234A40 - 0x12A96C)
12A968:  ADD             R0, PC; off_234A40
12A96A:  LDR             R0, [R0]; dword_23DF14
12A96C:  LDR             R0, [R0]; int
12A96E:  CBZ             R0, loc_12A978
12A970:  LDR             R1, [R4,#0x54]
12A972:  LDR             R1, [R1,#0x18]; int
12A974:  BL              sub_10ED30
12A978:  LDR             R0, =(off_234A54 - 0x12A97E)
12A97A:  ADD             R0, PC; off_234A54
12A97C:  LDR             R0, [R0]; dword_381A0C
12A97E:  LDR             R0, [R0]
12A980:  BL              sub_154D88
12A984:  LDR             R0, =(off_234A58 - 0x12A98A)
12A986:  ADD             R0, PC; off_234A58
12A988:  LDR             R0, [R0]; dword_2631B0
12A98A:  LDR             R0, [R0]
12A98C:  BL              sub_10BBAC
12A990:  LDR             R1, [R4,#0x54]
12A992:  LDR             R0, [R4]
12A994:  LDR             R1, [R1,#0x18]
12A996:  LDR             R2, [R0,#4]
12A998:  MOV             R0, R4
12A99A:  POP.W           {R4,R6,R7,LR}
12A99E:  BX              R2
12A9A0:  POP             {R4,R6,R7,PC}
