; =========================================================
; Game Engine Function: png_check_keyword
; Address            : 0x2030A4 - 0x20318E
; =========================================================

2030A4:  PUSH            {R4-R7,LR}
2030A6:  ADD             R7, SP, #0xC
2030A8:  PUSH.W          {R8-R10}
2030AC:  SUB             SP, SP, #0x100
2030AE:  MOV             LR, R1
2030B0:  CMP.W           LR, #0
2030B4:  ITT NE
2030B6:  LDRBNE.W        R3, [LR]
2030BA:  CMPNE           R3, #0
2030BC:  MOV             R9, R0
2030BE:  BNE             loc_2030C6
2030C0:  MOVS            R0, #0
2030C2:  STRB            R0, [R2]
2030C4:  B               loc_203186
2030C6:  MOVS            R5, #0
2030C8:  MOV.W           R8, #1
2030CC:  MOV.W           R12, #0x20 ; ' '
2030D0:  MOV.W           R10, #0
2030D4:  MOV             R6, LR
2030D6:  ADDS            R1, R6, #1
2030D8:  MOV             R4, R3
2030DA:  MOV             R6, R1
2030DC:  UXTB            R1, R4
2030DE:  CMP             R1, #0xA0
2030E0:  BHI             loc_203106
2030E2:  SUB.W           R0, R4, #0x21 ; '!'
2030E6:  UXTB            R0, R0
2030E8:  CMP             R0, #0x5D ; ']'
2030EA:  BLS             loc_203106
2030EC:  CMP.W           R8, #0
2030F0:  BEQ             loc_20310E
2030F2:  MOV             R1, R6
2030F4:  CMP             R5, #0
2030F6:  LDRB.W          R4, [R1],#1
2030FA:  IT EQ
2030FC:  MOVEQ           R5, R3
2030FE:  CMP             R4, #0
203100:  MOV             R3, R4
203102:  BNE             loc_2030DA
203104:  B               loc_20312E
203106:  MOV.W           R8, #0
20310A:  STRB            R4, [R2]
20310C:  B               loc_20311C
20310E:  CMP             R1, #0x20 ; ' '
203110:  STRB.W          R12, [R2]
203114:  IT NE
203116:  MOVNE           R5, R3
203118:  MOV.W           R8, #1
20311C:  ADD.W           R10, R10, #1
203120:  ADDS            R2, #1
203122:  CMP.W           R10, #0x4E ; 'N'
203126:  BHI             loc_20312E
203128:  LDRB            R3, [R6]
20312A:  CMP             R3, #0
20312C:  BNE             loc_2030D6
20312E:  CMP.W           R10, #0
203132:  IT NE
203134:  CMPNE.W         R8, #0
203138:  BEQ             loc_203148
20313A:  CMP             R5, #0
20313C:  SUB.W           R2, R2, #1
203140:  SUB.W           R10, R10, #1
203144:  IT EQ
203146:  MOVEQ           R5, #0x20 ; ' '
203148:  MOVS            R0, #0
20314A:  CMP.W           R10, #0
20314E:  STRB            R0, [R2]
203150:  BEQ             loc_203186
203152:  LDRB            R0, [R6]
203154:  CBZ             R0, loc_203160
203156:  ADR             R1, aKeywordTruncat; "keyword truncated"
203158:  MOV             R0, R9
20315A:  BLX             j_png_warning
20315E:  B               loc_203184
203160:  CBZ             R5, loc_203184
203162:  MOV             R8, SP
203164:  MOVS            R1, #1
203166:  MOV             R0, R8
203168:  MOV             R2, LR
20316A:  BLX             j_png_warning_parameter
20316E:  MOV             R0, R8
203170:  MOVS            R1, #2
203172:  MOVS            R2, #4
203174:  MOV             R3, R5
203176:  BLX             j_png_warning_parameter_signed
20317A:  ADR             R2, aKeyword1BadCha; "keyword \"@1\": bad character '0x@2'"
20317C:  MOV             R0, R9
20317E:  MOV             R1, R8
203180:  BLX             j_png_formatted_warning
203184:  MOV             R0, R10
203186:  ADD             SP, SP, #0x100
203188:  POP.W           {R8-R10}
20318C:  POP             {R4-R7,PC}
