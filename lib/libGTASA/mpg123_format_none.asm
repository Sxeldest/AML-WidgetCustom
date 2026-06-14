; =========================================================
; Game Engine Function: mpg123_format_none
; Address            : 0x224924 - 0x22496C
; =========================================================

224924:  PUSH            {R4,R6,R7,LR}
224926:  ADD             R7, SP, #8
224928:  MOV             R4, R0
22492A:  CBZ             R4, loc_224950
22492C:  MOVW            R0, #0xB33C
224930:  LDRB            R0, [R4,R0]
224932:  LSLS            R0, R0, #0x1A
224934:  BMI             loc_224940
224936:  MOVW            R0, #0xB338
22493A:  LDR             R0, [R4,R0]
22493C:  CMP             R0, #3
22493E:  BGE             loc_224956
224940:  MOVW            R0, #0xB358
224944:  MOVS            R1, #0xF0
224946:  ADD             R0, R4
224948:  BLX             j___aeabi_memclr8
22494C:  MOVS            R0, #0
22494E:  POP             {R4,R6,R7,PC}
224950:  MOV.W           R0, #0xFFFFFFFF
224954:  POP             {R4,R6,R7,PC}
224956:  LDR             R0, =(off_677664 - 0x224960)
224958:  MOVS            R1, #0x1D; size
22495A:  MOVS            R2, #1; n
22495C:  ADD             R0, PC; off_677664
22495E:  LDR             R0, [R0]
224960:  LDR             R3, [R0]; s
224962:  LDR             R0, =(aNoteDisablingA - 0x224968); "Note: Disabling all formats.\n"
224964:  ADD             R0, PC; "Note: Disabling all formats.\n"
224966:  BLX             fwrite
22496A:  B               loc_224940
