; =========================================================
; Game Engine Function: sub_10A914
; Address            : 0x10A914 - 0x10AA08
; =========================================================

10A914:  PUSH            {R4-R8,R10,R11,LR}
10A918:  ADD             R11, SP, #0x18
10A91C:  SUB             SP, SP, #0x30
10A920:  MOV             R6, R1
10A924:  MOV             R1, R0
10A928:  MOV             R0, R6
10A92C:  MOV             R4, R3
10A930:  MOV             R5, R2
10A934:  BL              sub_10AAA0
10A938:  ADD             R1, SP, #0x48+var_40
10A93C:  MOV             R0, R6
10A940:  BL              sub_10AD8C
10A944:  CMP             R0, #0
10A948:  BEQ             loc_10A954
10A94C:  SUB             SP, R11, #0x18
10A950:  POP             {R4-R8,R10,R11,PC}
10A954:  LDR             R8, [R11,#arg_0]
10A958:  ADD             R7, SP, #0x48+var_40
10A95C:  B               loc_10A97C
10A960:  MOV             R0, R6
10A964:  BL              sub_10ADC0
10A968:  MOV             R0, R6
10A96C:  MOV             R1, R7
10A970:  BL              sub_10AD8C
10A974:  CMP             R0, #0
10A978:  BNE             loc_10A94C
10A97C:  MOV             R0, #1
10A980:  MOV             R1, #0xA
10A984:  MOV             R2, R5
10A988:  MOV             R3, R5
10A98C:  STMEA           SP, {R6,R8}
10A990:  BLX             R4
10A994:  CMP             R0, #0
10A998:  BNE             loc_10A94C
10A99C:  LDR             R3, [SP,#0x48+var_34]
10A9A0:  CMP             R3, #0
10A9A4:  BEQ             loc_10A968
10A9A8:  LDR             R0, [SP,#0x48+var_40]
10A9AC:  LDR             R1, [SP,#0x48+var_2C]
10A9B0:  LDR             R2, [SP,#0x48+var_20]
10A9B4:  STR             R0, [R5,#0x48]
10A9B8:  MOV             R0, #9
10A9BC:  STR             R2, [R5,#0x4C]
10A9C0:  MOV             R2, R6
10A9C4:  STR             R1, [R5,#0x50]
10A9C8:  MOV             R1, R5
10A9CC:  BLX             R3
10A9D0:  CMP             R0, #7
10A9D4:  BEQ             loc_10A960
10A9D8:  CMP             R0, #8
10A9DC:  BEQ             loc_10A968
10A9E0:  CMP             R0, #5
10A9E4:  BNE             loc_10A94C
10A9E8:  MOV             R0, #1
10A9EC:  MOV             R1, #0x1A
10A9F0:  MOV             R2, R5
10A9F4:  MOV             R3, R5
10A9F8:  STMEA           SP, {R6,R8}
10A9FC:  BLX             R4
10AA00:  SUB             SP, R11, #0x18
10AA04:  POP             {R4-R8,R10,R11,PC}
