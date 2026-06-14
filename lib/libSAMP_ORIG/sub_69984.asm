; =========================================================
; Game Engine Function: sub_69984
; Address            : 0x69984 - 0x69A38
; =========================================================

69984:  PUSH            {R4,R5,R7,LR}
69986:  ADD             R7, SP, #8
69988:  MOV             R4, R1
6998A:  MOV             R5, R0
6998C:  BL              sub_68E3C
69990:  CBZ             R0, loc_699A0
69992:  LDR             R1, [R5,#4]
69994:  MOV             R3, R4
69996:  LDR             R2, [R5,#0x3C]
69998:  POP.W           {R4,R5,R7,LR}
6999C:  B.W             sub_69070
699A0:  LDR             R0, =(byte_1A42AC - 0x699A6)
699A2:  ADD             R0, PC; byte_1A42AC
699A4:  LDRB            R0, [R0]
699A6:  DMB.W           ISH
699AA:  LDR             R4, =(dword_1A42A4 - 0x699B0)
699AC:  ADD             R4, PC; dword_1A42A4
699AE:  LSLS            R0, R0, #0x1F
699B0:  BEQ             loc_69A00
699B2:  LDRB            R0, [R4,#(byte_1A42AA - 0x1A42A4)]
699B4:  CBZ             R0, loc_699EE
699B6:  LDRB            R1, [R4]
699B8:  EOR.W           R0, R0, #0x5A ; 'Z'
699BC:  LDRB            R2, [R4,#(dword_1A42A4+1 - 0x1A42A4)]
699BE:  STRB            R0, [R4,#(byte_1A42AA - 0x1A42A4)]
699C0:  EOR.W           R1, R1, #0x5A ; 'Z'
699C4:  LDRB            R0, [R4,#(word_1A42A8 - 0x1A42A4)]
699C6:  LDRB            R3, [R4,#(dword_1A42A4+2 - 0x1A42A4)]
699C8:  STRB            R1, [R4]
699CA:  EOR.W           R1, R2, #0x5A ; 'Z'
699CE:  LDRB            R5, [R4,#(dword_1A42A4+3 - 0x1A42A4)]
699D0:  EOR.W           R0, R0, #0x5A ; 'Z'
699D4:  LDRB.W          R12, [R4,#(word_1A42A8+1 - 0x1A42A4)]
699D8:  STRB            R1, [R4,#(dword_1A42A4+1 - 0x1A42A4)]
699DA:  EOR.W           R1, R3, #0x5A ; 'Z'
699DE:  STRB            R1, [R4,#(dword_1A42A4+2 - 0x1A42A4)]
699E0:  EOR.W           R1, R5, #0x5A ; 'Z'
699E4:  STRB            R0, [R4,#(word_1A42A8 - 0x1A42A4)]
699E6:  EOR.W           R0, R12, #0x5A ; 'Z'
699EA:  STRB            R1, [R4,#(dword_1A42A4+3 - 0x1A42A4)]
699EC:  STRB            R0, [R4,#(word_1A42A8+1 - 0x1A42A4)]
699EE:  LDR             R1, =(aSampOrig - 0x699F8); "SAMP_ORIG" ...
699F0:  MOVS            R0, #4
699F2:  LDR             R2, =(dword_1A42A4 - 0x699FA)
699F4:  ADD             R1, PC; "SAMP_ORIG"
699F6:  ADD             R2, PC; dword_1A42A4
699F8:  POP.W           {R4,R5,R7,LR}
699FC:  B.W             sub_10C158
69A00:  LDR             R0, =(byte_1A42AC - 0x69A06)
69A02:  ADD             R0, PC; byte_1A42AC ; __guard *
69A04:  BLX             j___cxa_guard_acquire
69A08:  CMP             R0, #0
69A0A:  BEQ             loc_699B2
69A0C:  MOVS            R1, #0x5A ; 'Z'
69A0E:  LDR             R0, =(sub_66E8E+1 - 0x69A26)
69A10:  LDR             R2, =(off_110560 - 0x69A28)
69A12:  STRB            R1, [R4,#(byte_1A42AA - 0x1A42A4)]
69A14:  MOVW            R1, #0x2C34
69A18:  STRH            R1, [R4,#(word_1A42A8 - 0x1A42A4)]
69A1A:  MOV             R1, #0x3F7A3514
69A22:  ADD             R0, PC; sub_66E8E ; lpfunc
69A24:  ADD             R2, PC; off_110560 ; lpdso_handle
69A26:  STR             R1, [R4]
69A28:  MOV             R1, R4; obj
69A2A:  BLX             __cxa_atexit
69A2E:  LDR             R0, =(byte_1A42AC - 0x69A34)
69A30:  ADD             R0, PC; byte_1A42AC ; __guard *
69A32:  BLX             j___cxa_guard_release
69A36:  B               loc_699B2
