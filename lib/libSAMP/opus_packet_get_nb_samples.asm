; =========================================================
; Game Engine Function: opus_packet_get_nb_samples
; Address            : 0x1900E2 - 0x190130
; =========================================================

1900E2:  PUSH            {R4,R5,R7,LR}
1900E4:  ADD             R7, SP, #8
1900E6:  MOV             R4, R2
1900E8:  CMP             R1, #1
1900EA:  BLT             loc_19010A
1900EC:  LDRB            R2, [R0]
1900EE:  ANDS.W          R2, R2, #3
1900F2:  BEQ             loc_190110
1900F4:  CMP             R2, #3
1900F6:  BNE             loc_190114
1900F8:  CMP             R1, #2
1900FA:  ITT LT
1900FC:  MOVLT           R0, #0xFFFFFFFC
190100:  POPLT           {R4,R5,R7,PC}
190102:  LDRB            R1, [R0,#1]
190104:  AND.W           R5, R1, #0x3F ; '?'
190108:  B               loc_190116
19010A:  MOV.W           R0, #0xFFFFFFFF
19010E:  POP             {R4,R5,R7,PC}
190110:  MOVS            R5, #1
190112:  B               loc_190116
190114:  MOVS            R5, #2
190116:  MOV             R1, R4
190118:  BLX             j_opus_packet_get_samples_per_frame
19011C:  MULS            R0, R5
19011E:  MOVS            R1, #0x19
190120:  ADD.W           R2, R4, R4,LSL#1
190124:  MULS            R1, R0
190126:  CMP             R1, R2
190128:  IT GT
19012A:  MOVGT           R0, #0xFFFFFFFC
19012E:  POP             {R4,R5,R7,PC}
