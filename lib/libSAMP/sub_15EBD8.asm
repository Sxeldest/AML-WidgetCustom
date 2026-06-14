; =========================================================
; Game Engine Function: sub_15EBD8
; Address            : 0x15EBD8 - 0x15EC40
; =========================================================

15EBD8:  PUSH            {R4,R5,R7,LR}
15EBDA:  ADD             R7, SP, #8
15EBDC:  SUB             SP, SP, #8
15EBDE:  MOV             R5, R0
15EBE0:  LDR             R0, [R0]
15EBE2:  CBZ             R0, loc_15EC3C
15EBE4:  MOV             R4, R1
15EBE6:  STR             R1, [SP,#0x10+var_C]
15EBE8:  ADD             R1, SP, #0x10+var_C
15EBEA:  BL              sub_15FAE4
15EBEE:  CBZ             R0, loc_15EC3C
15EBF0:  LDR             R0, [R5]
15EBF2:  MOV             R1, R4
15EBF4:  BL              sub_15E7CC
15EBF8:  LDR             R0, [R0,#8]
15EBFA:  CBZ             R0, loc_15EC1A
15EBFC:  LDRB            R1, [R0,#0x14]
15EBFE:  CBZ             R1, loc_15EC0C
15EC00:  LDR             R1, [R0,#8]
15EC02:  LDR             R2, [R0,#0x1C]
15EC04:  STR             R2, [R1,#4]
15EC06:  LDR             R1, [R0,#0x18]
15EC08:  LDR             R2, [R0,#0x24]
15EC0A:  STR             R2, [R1,#8]
15EC0C:  LDRB            R1, [R0,#0x15]
15EC0E:  CBZ             R1, loc_15EC16
15EC10:  LDR             R1, [R0,#8]
15EC12:  LDR             R2, [R0,#0x20]
15EC14:  STR             R2, [R1]
15EC16:  LDR             R0, [R0]
15EC18:  B               loc_15EBFA
15EC1A:  LDR             R0, [R5]
15EC1C:  MOV             R1, R4
15EC1E:  BL              sub_15E7CC
15EC22:  LDR             R4, [R0,#0x1C]
15EC24:  CBZ             R4, loc_15EC3C
15EC26:  LDRB            R0, [R4,#0xC]
15EC28:  CBZ             R0, loc_15EC38
15EC2A:  LDR             R0, [R4,#8]
15EC2C:  ADD.W           R1, R4, #0x10; src
15EC30:  MOVS            R2, #0x40 ; '@'; n
15EC32:  ADDS            R0, #0x10; dest
15EC34:  BLX             j_memcpy
15EC38:  LDR             R4, [R4]
15EC3A:  B               loc_15EC24
15EC3C:  ADD             SP, SP, #8
15EC3E:  POP             {R4,R5,R7,PC}
