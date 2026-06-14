; =========================================================
; Game Engine Function: compress
; Address            : 0x20A92C - 0x20A98C
; =========================================================

20A92C:  PUSH            {R4,R5,R7,LR}
20A92E:  ADD             R7, SP, #8
20A930:  SUB             SP, SP, #0x38
20A932:  LDR             R5, =(a113_3 - 0x20A942); "1.1.3"
20A934:  MOV             R4, R1
20A936:  STRD.W          R2, R3, [SP,#0x40+var_40]
20A93A:  MOVS            R1, #0
20A93C:  STR             R0, [SP,#0x40+var_34]
20A93E:  ADD             R5, PC; "1.1.3"
20A940:  LDR             R0, [R4]
20A942:  MOVS            R3, #0x38 ; '8'
20A944:  STR             R0, [SP,#0x40+var_30]
20A946:  MOV             R0, SP
20A948:  STRD.W          R1, R1, [SP,#0x40+var_20]
20A94C:  MOV             R2, R5
20A94E:  STR             R1, [SP,#0x40+var_18]
20A950:  MOV.W           R1, #0xFFFFFFFF
20A954:  BLX             j_deflateInit_
20A958:  MOV             R5, R0
20A95A:  CBNZ            R5, loc_20A986
20A95C:  MOV             R0, SP
20A95E:  MOVS            R1, #4
20A960:  BLX             j_deflate
20A964:  MOV             R5, R0
20A966:  CMP             R5, #1
20A968:  BNE             loc_20A978
20A96A:  LDR             R0, [SP,#0x40+var_2C]
20A96C:  STR             R0, [R4]
20A96E:  MOV             R0, SP
20A970:  BLX             j_deflateEnd
20A974:  MOV             R5, R0
20A976:  B               loc_20A986
20A978:  MOV             R0, SP
20A97A:  BLX             j_deflateEnd
20A97E:  CMP             R5, #0
20A980:  IT EQ
20A982:  MOVEQ           R5, #0xFFFFFFFB
20A986:  MOV             R0, R5
20A988:  ADD             SP, SP, #0x38 ; '8'
20A98A:  POP             {R4,R5,R7,PC}
