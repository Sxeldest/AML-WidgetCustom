; =========================================================
; Game Engine Function: sub_698B0
; Address            : 0x698B0 - 0x69962
; =========================================================

698B0:  PUSH            {R4,R6,R7,LR}
698B2:  ADD             R7, SP, #8
698B4:  MOV             R4, R0
698B6:  BL              sub_68E3C
698BA:  CBZ             R0, loc_698C8
698BC:  LDR             R1, [R4,#4]
698BE:  LDR             R2, [R4,#0x38]
698C0:  POP.W           {R4,R6,R7,LR}
698C4:  B.W             sub_69070
698C8:  LDR             R0, =(byte_1A42A0 - 0x698CE)
698CA:  ADD             R0, PC; byte_1A42A0
698CC:  LDRB            R0, [R0]
698CE:  DMB.W           ISH
698D2:  LDR             R4, =(dword_1A4298 - 0x698D8)
698D4:  ADD             R4, PC; dword_1A4298
698D6:  LSLS            R0, R0, #0x1F
698D8:  BEQ             loc_6992A
698DA:  LDRB            R0, [R4,#(byte_1A429E - 0x1A4298)]
698DC:  CBZ             R0, loc_69918
698DE:  LDRB            R1, [R4]
698E0:  EOR.W           R0, R0, #0x5A ; 'Z'
698E4:  LDRB            R2, [R4,#(dword_1A4298+1 - 0x1A4298)]
698E6:  STRB            R0, [R4,#(byte_1A429E - 0x1A4298)]
698E8:  EOR.W           R1, R1, #0x5A ; 'Z'
698EC:  LDRB            R0, [R4,#(word_1A429C - 0x1A4298)]
698EE:  LDRB            R3, [R4,#(dword_1A4298+2 - 0x1A4298)]
698F0:  STRB            R1, [R4]
698F2:  EOR.W           R1, R2, #0x5A ; 'Z'
698F6:  LDRB.W          R12, [R4,#(dword_1A4298+3 - 0x1A4298)]
698FA:  EOR.W           R0, R0, #0x5A ; 'Z'
698FE:  LDRB.W          LR, [R4,#(word_1A429C+1 - 0x1A4298)]
69902:  STRB            R1, [R4,#(dword_1A4298+1 - 0x1A4298)]
69904:  EOR.W           R1, R3, #0x5A ; 'Z'
69908:  STRB            R1, [R4,#(dword_1A4298+2 - 0x1A4298)]
6990A:  EOR.W           R1, R12, #0x5A ; 'Z'
6990E:  STRB            R0, [R4,#(word_1A429C - 0x1A4298)]
69910:  EOR.W           R0, LR, #0x5A ; 'Z'
69914:  STRB            R1, [R4,#(dword_1A4298+3 - 0x1A4298)]
69916:  STRB            R0, [R4,#(word_1A429C+1 - 0x1A4298)]
69918:  LDR             R1, =(aSampOrig - 0x69922); "SAMP_ORIG" ...
6991A:  MOVS            R0, #4
6991C:  LDR             R2, =(dword_1A4298 - 0x69924)
6991E:  ADD             R1, PC; "SAMP_ORIG"
69920:  ADD             R2, PC; dword_1A4298
69922:  POP.W           {R4,R6,R7,LR}
69926:  B.W             sub_10C158
6992A:  LDR             R0, =(byte_1A42A0 - 0x69930)
6992C:  ADD             R0, PC; byte_1A42A0 ; __guard *
6992E:  BLX             j___cxa_guard_acquire
69932:  CMP             R0, #0
69934:  BEQ             loc_698DA
69936:  MOVS            R1, #0x5A ; 'Z'
69938:  LDR             R0, =(sub_66E8E+1 - 0x69950)
6993A:  LDR             R2, =(off_110560 - 0x69952)
6993C:  STRB            R1, [R4,#(byte_1A429E - 0x1A4298)]
6993E:  MOVW            R1, #0x2C34
69942:  STRH            R1, [R4,#(word_1A429C - 0x1A4298)]
69944:  MOV             R1, #0x3F7A3514
6994C:  ADD             R0, PC; sub_66E8E ; lpfunc
6994E:  ADD             R2, PC; off_110560 ; lpdso_handle
69950:  STR             R1, [R4]
69952:  MOV             R1, R4; obj
69954:  BLX             __cxa_atexit
69958:  LDR             R0, =(byte_1A42A0 - 0x6995E)
6995A:  ADD             R0, PC; byte_1A42A0 ; __guard *
6995C:  BLX             j___cxa_guard_release
69960:  B               loc_698DA
