; =========================================================
; Game Engine Function: sub_216EF0
; Address            : 0x216EF0 - 0x216F5E
; =========================================================

216EF0:  PUSH            {R4-R7,LR}
216EF2:  ADD             R7, SP, #0xC
216EF4:  PUSH.W          {R11}
216EF8:  MOV             R4, R0
216EFA:  MOV.W           R0, #0x1000
216EFE:  LDR             R5, [R4,R0]
216F00:  ADD.W           R0, R1, #0xF
216F04:  BIC.W           R6, R0, #0xF
216F08:  MOVW            R1, #0xFF8
216F0C:  LDR             R2, [R5,#4]
216F0E:  ADDS            R0, R2, R6
216F10:  CMP             R0, R1
216F12:  BCC             loc_216F32
216F14:  MOVW            R0, #0xFF9
216F18:  CMP             R6, R0
216F1A:  BCC             loc_216F36
216F1C:  ORR.W           R0, R6, #8; size
216F20:  BLX             malloc
216F24:  CBZ             R0, loc_216F5A
216F26:  LDR             R1, [R5]
216F28:  MOVS            R2, #0
216F2A:  STRD.W          R1, R2, [R0]
216F2E:  STR             R0, [R5]
216F30:  B               loc_216F52
216F32:  MOV             R0, R5
216F34:  B               loc_216F4C
216F36:  MOV.W           R0, #0x1000; size
216F3A:  BLX             malloc
216F3E:  CBZ             R0, loc_216F5A
216F40:  ADD.W           R1, R4, #0x1000
216F44:  MOVS            R2, #0
216F46:  STRD.W          R5, R2, [R0]
216F4A:  STR             R0, [R1]
216F4C:  ADDS            R1, R2, R6
216F4E:  STR             R1, [R0,#4]
216F50:  ADD             R0, R2
216F52:  ADDS            R0, #8
216F54:  POP.W           {R11}
216F58:  POP             {R4-R7,PC}
216F5A:  BLX             j__ZSt9terminatev; std::terminate(void)
