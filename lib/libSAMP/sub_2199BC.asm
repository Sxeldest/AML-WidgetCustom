; =========================================================
; Game Engine Function: sub_2199BC
; Address            : 0x2199BC - 0x219A5A
; =========================================================

2199BC:  PUSH            {R0-R5,R7,LR}
2199BE:  ADD             R7, SP, #0x18
2199C0:  MOV             R4, R0
2199C2:  LDR             R0, =(__stack_chk_guard_ptr - 0x2199C8)
2199C4:  ADD             R0, PC; __stack_chk_guard_ptr
2199C6:  LDR             R0, [R0]; __stack_chk_guard
2199C8:  LDR             R0, [R0]
2199CA:  STR             R0, [SP,#0x18+var_C]
2199CC:  MOV             R0, R4
2199CE:  LDR             R1, =(aFp - 0x2199D4); "fp" ...
2199D0:  ADD             R1, PC; "fp"
2199D2:  ADDS            R2, R1, #2
2199D4:  BL              sub_2155E4
2199D8:  CBZ             R0, loc_219A0A
2199DA:  MOV             R0, R4
2199DC:  BL              sub_2173EC
2199E0:  ADD             R0, SP, #0x18+var_14
2199E2:  MOV             R1, R4
2199E4:  MOVS            R2, #0
2199E6:  MOVS            R5, #0
2199E8:  BL              sub_215BB4
2199EC:  LDRD.W          R0, R1, [R4]
2199F0:  CMP             R0, R1
2199F2:  BEQ             loc_219A42
2199F4:  LDRB            R1, [R0]
2199F6:  CMP             R1, #0x5F ; '_'
2199F8:  BNE             loc_219A40
2199FA:  ADDS            R0, #1
2199FC:  STR             R0, [R4]
2199FE:  ADD             R1, SP, #0x18+var_14
219A00:  MOV             R0, R4
219A02:  BL              sub_21AE0C
219A06:  MOV             R5, R0
219A08:  B               loc_219A42
219A0A:  LDR             R1, =(aFl - 0x219A12); "fL" ...
219A0C:  MOV             R0, R4
219A0E:  ADD             R1, PC; "fL"
219A10:  ADDS            R2, R1, #2
219A12:  BL              sub_2155E4
219A16:  CBZ             R0, loc_219A40
219A18:  ADD             R0, SP, #0x18+var_14
219A1A:  MOV             R1, R4
219A1C:  MOVS            R2, #0
219A1E:  MOVS            R5, #0
219A20:  BL              sub_215BB4
219A24:  LDRD.W          R0, R1, [SP,#0x18+var_14]
219A28:  CMP             R0, R1
219A2A:  BEQ             loc_219A42
219A2C:  LDRD.W          R0, R1, [R4]
219A30:  CMP             R0, R1
219A32:  BEQ             loc_219A40
219A34:  LDRB            R1, [R0]
219A36:  CMP             R1, #0x70 ; 'p'
219A38:  BNE             loc_219A40
219A3A:  ADDS            R0, #1
219A3C:  STR             R0, [R4]
219A3E:  B               loc_2199DA
219A40:  MOVS            R5, #0
219A42:  LDR             R0, [SP,#0x18+var_C]
219A44:  LDR             R1, =(__stack_chk_guard_ptr - 0x219A4A)
219A46:  ADD             R1, PC; __stack_chk_guard_ptr
219A48:  LDR             R1, [R1]; __stack_chk_guard
219A4A:  LDR             R1, [R1]
219A4C:  CMP             R1, R0
219A4E:  ITTT EQ
219A50:  MOVEQ           R0, R5
219A52:  ADDEQ           SP, SP, #0x10
219A54:  POPEQ           {R4,R5,R7,PC}
219A56:  BLX             __stack_chk_fail
