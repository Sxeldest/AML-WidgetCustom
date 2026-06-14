; =========================================================
; Game Engine Function: mpg123_fmt_none
; Address            : 0x224974 - 0x2249B0
; =========================================================

224974:  PUSH            {R4,R6,R7,LR}
224976:  ADD             R7, SP, #8
224978:  MOV             R4, R0
22497A:  CBZ             R4, loc_224996
22497C:  LDRB            R0, [R4,#4]
22497E:  LSLS            R0, R0, #0x1A
224980:  BMI             loc_224988
224982:  LDR             R0, [R4]
224984:  CMP             R0, #3
224986:  BGE             loc_22499A
224988:  ADD.W           R0, R4, #0x20 ; ' '
22498C:  MOVS            R1, #0xF0
22498E:  BLX             j___aeabi_memclr8
224992:  MOVS            R0, #0
224994:  POP             {R4,R6,R7,PC}
224996:  MOVS            R0, #0x19
224998:  POP             {R4,R6,R7,PC}
22499A:  LDR             R0, =(off_677664 - 0x2249A4)
22499C:  MOVS            R1, #0x1D; size
22499E:  MOVS            R2, #1; n
2249A0:  ADD             R0, PC; off_677664
2249A2:  LDR             R0, [R0]
2249A4:  LDR             R3, [R0]; s
2249A6:  LDR             R0, =(aNoteDisablingA - 0x2249AC); "Note: Disabling all formats.\n"
2249A8:  ADD             R0, PC; "Note: Disabling all formats.\n"
2249AA:  BLX             fwrite
2249AE:  B               loc_224988
