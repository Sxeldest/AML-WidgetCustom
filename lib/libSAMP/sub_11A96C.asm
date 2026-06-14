; =========================================================
; Game Engine Function: sub_11A96C
; Address            : 0x11A96C - 0x11A9B4
; =========================================================

11A96C:  PUSH            {R4,R5,R7,LR}
11A96E:  ADD             R7, SP, #8
11A970:  MOV             R4, R0
11A972:  LDR             R0, [R0,#0x10]
11A974:  MOV             R5, R1
11A976:  MOVS            R1, #0
11A978:  CMP             R4, R0
11A97A:  STR             R1, [R4,#0x10]
11A97C:  BEQ             loc_11A984
11A97E:  CBZ             R0, loc_11A98E
11A980:  MOVS            R1, #5
11A982:  B               loc_11A986
11A984:  MOVS            R1, #4
11A986:  LDR             R2, [R0]
11A988:  LDR.W           R1, [R2,R1,LSL#2]
11A98C:  BLX             R1
11A98E:  LDR             R0, [R5,#0x10]
11A990:  CBZ             R0, loc_11A99E
11A992:  CMP             R5, R0
11A994:  BEQ             loc_11A9A4
11A996:  STR             R0, [R4,#0x10]
11A998:  MOVS            R0, #0
11A99A:  STR             R0, [R5,#0x10]
11A99C:  B               loc_11A9B0
11A99E:  MOVS            R0, #0
11A9A0:  STR             R0, [R4,#0x10]
11A9A2:  B               loc_11A9B0
11A9A4:  STR             R4, [R4,#0x10]
11A9A6:  LDR             R0, [R5,#0x10]
11A9A8:  LDR             R1, [R0]
11A9AA:  LDR             R2, [R1,#0xC]
11A9AC:  MOV             R1, R4
11A9AE:  BLX             R2
11A9B0:  MOV             R0, R4
11A9B2:  POP             {R4,R5,R7,PC}
