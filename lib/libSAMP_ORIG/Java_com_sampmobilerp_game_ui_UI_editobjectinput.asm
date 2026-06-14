; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_UI_editobjectinput
; Address            : 0x7A930 - 0x7A988
; =========================================================

7A930:  PUSH            {R4,R6,R7,LR}
7A932:  ADD             R7, SP, #8
7A934:  CMP             R2, #0
7A936:  MOV             R0, R2
7A938:  SUB.W           R1, R3, #6
7A93C:  IT NE
7A93E:  MOVNE           R0, #1
7A940:  CMP             R1, #2
7A942:  BHI             loc_7A94C
7A944:  LDR             R4, =(dword_1A4544 - 0x7A94C)
7A946:  SUBS            R1, R3, #5
7A948:  ADD             R4, PC; dword_1A4544
7A94A:  STR             R1, [R4]
7A94C:  LDR             R1, =(byte_116D34 - 0x7A952)
7A94E:  ADD             R1, PC; byte_116D34
7A950:  LDRB            R4, [R1]
7A952:  CMP             R4, R0
7A954:  IT NE
7A956:  STRBNE          R0, [R1]
7A958:  CMP             R3, #2
7A95A:  BEQ             loc_7A968
7A95C:  CMP             R3, #1
7A95E:  BNE             loc_7A970
7A960:  POP.W           {R4,R6,R7,LR}
7A964:  B.W             sub_794B8
7A968:  POP.W           {R4,R6,R7,LR}
7A96C:  B.W             sub_79948
7A970:  LDR             R0, =(dword_1A4544 - 0x7A97C)
7A972:  CMP             R2, #0
7A974:  IT NE
7A976:  MOVNE           R2, #1
7A978:  ADD             R0, PC; dword_1A4544
7A97A:  LDR             R1, [R0]
7A97C:  MOV             R0, R2
7A97E:  MOV             R2, R3
7A980:  POP.W           {R4,R6,R7,LR}
7A984:  B.W             sub_79CE0
