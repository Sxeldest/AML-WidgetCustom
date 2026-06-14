; =========================================================
; Game Engine Function: _Z12jpeg_destroyP18jpeg_common_struct
; Address            : 0x47A09A - 0x47A0B4
; =========================================================

47A09A:  PUSH            {R4,R6,R7,LR}
47A09C:  ADD             R7, SP, #8
47A09E:  MOV             R4, R0
47A0A0:  LDR             R0, [R4,#4]
47A0A2:  CMP             R0, #0
47A0A4:  ITTT NE
47A0A6:  LDRNE           R1, [R0,#0x28]
47A0A8:  MOVNE           R0, R4
47A0AA:  BLXNE           R1
47A0AC:  MOVS            R0, #0
47A0AE:  STR             R0, [R4,#0x14]
47A0B0:  STR             R0, [R4,#4]
47A0B2:  POP             {R4,R6,R7,PC}
