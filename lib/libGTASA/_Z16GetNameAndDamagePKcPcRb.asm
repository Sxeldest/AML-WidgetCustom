; =========================================================
; Game Engine Function: _Z16GetNameAndDamagePKcPcRb
; Address            : 0x3EF046 - 0x3EF0E0
; =========================================================

3EF046:  PUSH            {R4-R7,LR}
3EF048:  ADD             R7, SP, #0xC
3EF04A:  PUSH.W          {R8,R9,R11}
3EF04E:  MOV             R9, R2
3EF050:  MOV             R8, R1
3EF052:  MOV             R5, R0
3EF054:  BLX             strlen
3EF058:  SUBS            R4, R0, #3
3EF05A:  SUBS            R6, R0, #4
3EF05C:  LDRB            R2, [R5,R6]
3EF05E:  LDRB            R1, [R5,R4]
3EF060:  CMP             R2, #0x5F ; '_'
3EF062:  IT EQ
3EF064:  CMPEQ           R1, #0x64 ; 'd'
3EF066:  BNE             loc_3EF096
3EF068:  ADD             R0, R5
3EF06A:  LDRB.W          R1, [R0,#-2]
3EF06E:  CMP             R1, #0x61 ; 'a'
3EF070:  ITT EQ
3EF072:  LDRBEQ.W        R0, [R0,#-1]
3EF076:  CMPEQ           R0, #0x6D ; 'm'
3EF078:  BNE             loc_3EF0B0
3EF07A:  MOVS            R0, #1
3EF07C:  MOV             R1, R5; char *
3EF07E:  STRB.W          R0, [R9]
3EF082:  MOV             R0, R8; char *
3EF084:  MOV             R2, R6; size_t
3EF086:  BLX             strncpy
3EF08A:  MOVS            R0, #0
3EF08C:  STRB.W          R0, [R8,R6]
3EF090:  POP.W           {R8,R9,R11}
3EF094:  POP             {R4-R7,PC}
3EF096:  CMP             R1, #0x5F ; '_'
3EF098:  BNE             loc_3EF0B0
3EF09A:  ADD             R0, R5
3EF09C:  LDRB.W          R1, [R0,#-2]
3EF0A0:  ORR.W           R1, R1, #0x20 ; ' '
3EF0A4:  CMP             R1, #0x6C ; 'l'
3EF0A6:  ITT EQ
3EF0A8:  LDRBEQ.W        R0, [R0,#-1]
3EF0AC:  CMPEQ           R0, #0x30 ; '0'
3EF0AE:  BEQ             loc_3EF0C6
3EF0B0:  MOVS            R0, #0
3EF0B2:  MOV             R1, R5; char *
3EF0B4:  STRB.W          R0, [R9]
3EF0B8:  MOV             R0, R8; char *
3EF0BA:  POP.W           {R8,R9,R11}
3EF0BE:  POP.W           {R4-R7,LR}
3EF0C2:  B.W             j_strcpy
3EF0C6:  MOVS            R6, #0
3EF0C8:  MOV             R0, R8; char *
3EF0CA:  MOV             R1, R5; char *
3EF0CC:  MOV             R2, R4; size_t
3EF0CE:  STRB.W          R6, [R9]
3EF0D2:  BLX             strncpy
3EF0D6:  STRB.W          R6, [R8,R4]
3EF0DA:  POP.W           {R8,R9,R11}
3EF0DE:  POP             {R4-R7,PC}
