; =========================================================
; Game Engine Function: opus_packet_get_nb_samples
; Address            : 0xB1EBE - 0xB1F0C
; =========================================================

B1EBE:  PUSH            {R4,R5,R7,LR}
B1EC0:  ADD             R7, SP, #8
B1EC2:  MOV             R4, R2
B1EC4:  CMP             R1, #1
B1EC6:  BLT             loc_B1EE6
B1EC8:  LDRB            R2, [R0]
B1ECA:  ANDS.W          R2, R2, #3
B1ECE:  BEQ             loc_B1EEC
B1ED0:  CMP             R2, #3
B1ED2:  BNE             loc_B1EF0
B1ED4:  CMP             R1, #2
B1ED6:  ITT LT
B1ED8:  MOVLT           R0, #0xFFFFFFFC
B1EDC:  POPLT           {R4,R5,R7,PC}
B1EDE:  LDRB            R1, [R0,#1]
B1EE0:  AND.W           R5, R1, #0x3F ; '?'
B1EE4:  B               loc_B1EF2
B1EE6:  MOV.W           R0, #0xFFFFFFFF
B1EEA:  POP             {R4,R5,R7,PC}
B1EEC:  MOVS            R5, #1
B1EEE:  B               loc_B1EF2
B1EF0:  MOVS            R5, #2
B1EF2:  MOV             R1, R4
B1EF4:  BLX             j_opus_packet_get_samples_per_frame
B1EF8:  MULS            R0, R5
B1EFA:  MOVS            R1, #0x19
B1EFC:  ADD.W           R2, R4, R4,LSL#1
B1F00:  MULS            R1, R0
B1F02:  CMP             R1, R2
B1F04:  IT GT
B1F06:  MOVGT           R0, #0xFFFFFFFC
B1F0A:  POP             {R4,R5,R7,PC}
