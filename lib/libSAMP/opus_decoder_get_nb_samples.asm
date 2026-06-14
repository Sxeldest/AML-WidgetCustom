; =========================================================
; Game Engine Function: opus_decoder_get_nb_samples
; Address            : 0x190130 - 0x190180
; =========================================================

190130:  PUSH            {R4,R5,R7,LR}
190132:  ADD             R7, SP, #8
190134:  CMP             R2, #1
190136:  BLT             loc_190158
190138:  LDR             R4, [R0,#0xC]
19013A:  LDRB            R0, [R1]
19013C:  ANDS.W          R0, R0, #3
190140:  BEQ             loc_19015E
190142:  CMP             R0, #3
190144:  BNE             loc_190162
190146:  CMP             R2, #2
190148:  ITT LT
19014A:  MOVLT           R0, #0xFFFFFFFC
19014E:  POPLT           {R4,R5,R7,PC}
190150:  LDRB            R0, [R1,#1]
190152:  AND.W           R5, R0, #0x3F ; '?'
190156:  B               loc_190164
190158:  MOV.W           R0, #0xFFFFFFFF
19015C:  POP             {R4,R5,R7,PC}
19015E:  MOVS            R5, #1
190160:  B               loc_190164
190162:  MOVS            R5, #2
190164:  MOV             R0, R1
190166:  MOV             R1, R4
190168:  BLX             j_opus_packet_get_samples_per_frame
19016C:  MULS            R0, R5
19016E:  MOVS            R1, #0x19
190170:  ADD.W           R2, R4, R4,LSL#1
190174:  MULS            R1, R0
190176:  CMP             R1, R2
190178:  IT GT
19017A:  MOVGT           R0, #0xFFFFFFFC
19017E:  POP             {R4,R5,R7,PC}
