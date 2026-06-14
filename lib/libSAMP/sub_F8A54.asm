; =========================================================
; Game Engine Function: sub_F8A54
; Address            : 0xF8A54 - 0xF8AC8
; =========================================================

F8A54:  PUSH            {R4,R5,R7,LR}
F8A56:  ADD             R7, SP, #8
F8A58:  MOV             R5, R0
F8A5A:  LDR             R0, [R0,#4]
F8A5C:  CBZ             R0, locret_F8AC6
F8A5E:  MOV             R0, R1
F8A60:  MOV             R4, R1
F8A62:  BL              sub_F9C94
F8A66:  CBNZ            R0, loc_F8A84
F8A68:  MOV             R0, R4
F8A6A:  BL              sub_108564
F8A6E:  CBNZ            R0, loc_F8A84
F8A70:  MOV             R0, R4
F8A72:  BL              sub_F9CBC
F8A76:  BL              sub_F9CCC
F8A7A:  MOV             R0, R4
F8A7C:  MOVS            R1, #0xC8
F8A7E:  BL              sub_F9CD8
F8A82:  CBZ             R0, loc_F8A9C
F8A84:  LDR             R0, [R5,#4]
F8A86:  LDR             R1, [R0]
F8A88:  LDR             R1, [R1,#0x24]
F8A8A:  BLX             R1
F8A8C:  LDR             R0, [R5,#4]
F8A8E:  LDR             R1, [R0]
F8A90:  STRH            R4, [R0,#0x26]
F8A92:  LDR             R2, [R1,#0x18]
F8A94:  MOV             R1, R4
F8A96:  POP.W           {R4,R5,R7,LR}
F8A9A:  BX              R2
F8A9C:  LDR             R1, =(aAxl - 0xF8AA8); "AXL" ...
F8A9E:  MOVS            R0, #5; prio
F8AA0:  LDR             R2, =(aModelUWouldnTL - 0xF8AAA); "Model %u wouldn't load in time!" ...
F8AA2:  MOV             R3, R4
F8AA4:  ADD             R1, PC; "AXL"
F8AA6:  ADD             R2, PC; "Model %u wouldn't load in time!"
F8AA8:  BLX             __android_log_print
F8AAC:  LDR             R0, =(off_234A24 - 0xF8AB2)
F8AAE:  ADD             R0, PC; off_234A24
F8AB0:  LDR             R0, [R0]; dword_23DEEC
F8AB2:  LDR             R0, [R0]
F8AB4:  CBZ             R0, locret_F8AC6
F8AB6:  LDR             R1, =(aWarningModelUW - 0xF8AC0); "Warning: model %u wouldn't load in time"... ...
F8AB8:  MOV             R2, R4
F8ABA:  LDR             R0, [R0,#0x60]; int
F8ABC:  ADD             R1, PC; "Warning: model %u wouldn't load in time"...
F8ABE:  POP.W           {R4,R5,R7,LR}
F8AC2:  B.W             sub_12D520
F8AC6:  POP             {R4,R5,R7,PC}
