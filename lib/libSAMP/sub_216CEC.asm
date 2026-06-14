; =========================================================
; Game Engine Function: sub_216CEC
; Address            : 0x216CEC - 0x216D60
; =========================================================

216CEC:  PUSH            {R4-R7,LR}
216CEE:  ADD             R7, SP, #0xC
216CF0:  PUSH.W          {R8-R10}
216CF4:  MOV             R4, R0
216CF6:  LDRD.W          R6, R0, [R0,#4]
216CFA:  MOV             R8, R1
216CFC:  CMP             R6, R0
216CFE:  BNE             loc_216D4C
216D00:  MOV             R0, R4
216D02:  LDR.W           R9, [R0],#0xC
216D06:  SUB.W           R10, R6, R9
216D0A:  CMP             R9, R0
216D0C:  BEQ             loc_216D20
216D0E:  MOV.W           R1, R10,LSL#1; size
216D12:  MOV             R0, R9; ptr
216D14:  BLX             realloc
216D18:  MOV             R5, R0
216D1A:  STR             R0, [R4]
216D1C:  CBNZ            R0, loc_216D38
216D1E:  B               loc_216D5C
216D20:  MOV.W           R0, R10,LSL#1; size
216D24:  BLX             malloc
216D28:  CBZ             R0, loc_216D5C
216D2A:  MOV             R5, R0
216D2C:  MOV             R0, R9; src
216D2E:  MOV             R1, R6; int
216D30:  MOV             R2, R5; dest
216D32:  BL              sub_21AB64
216D36:  STR             R5, [R4]
216D38:  MOV.W           R0, R10,ASR#1
216D3C:  MOV.W           R1, R10,ASR#2
216D40:  ADD.W           R6, R5, R1,LSL#2
216D44:  ADD.W           R0, R5, R0,LSL#2
216D48:  STRD.W          R6, R0, [R4,#4]
216D4C:  LDR.W           R0, [R8]
216D50:  ADDS            R1, R6, #4
216D52:  STR             R1, [R4,#4]
216D54:  STR             R0, [R6]
216D56:  POP.W           {R8-R10}
216D5A:  POP             {R4-R7,PC}
216D5C:  BLX             j__ZSt9terminatev; std::terminate(void)
