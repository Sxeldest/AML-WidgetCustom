; =========================================================
; Game Engine Function: png_write_sig
; Address            : 0x206018 - 0x206064
; =========================================================

206018:  PUSH            {R4,R6,R7,LR}
20601A:  ADD             R7, SP, #8
20601C:  SUB             SP, SP, #8
20601E:  MOV             R4, R0
206020:  MOV             R0, #0xA1A0A0D
206028:  LDRB.W          R2, [R4,#0x215]
20602C:  STR             R0, [SP,#0x10+var_C]
20602E:  MOV             R0, #0x474E5089
206036:  STR             R0, [SP,#0x10+var_10]
206038:  MOVS            R0, #0x12
20603A:  STR.W           R0, [R4,#0x368]
20603E:  MOV             R0, SP
206040:  ADDS            R1, R0, R2
206042:  RSB.W           R2, R2, #8
206046:  MOV             R0, R4
206048:  BLX             j_png_write_data
20604C:  LDRB.W          R0, [R4,#0x215]
206050:  CMP             R0, #2
206052:  ITTT LS
206054:  LDRLS.W         R0, [R4,#0x134]
206058:  ORRLS.W         R0, R0, #0x1000
20605C:  STRLS.W         R0, [R4,#0x134]
206060:  ADD             SP, SP, #8
206062:  POP             {R4,R6,R7,PC}
