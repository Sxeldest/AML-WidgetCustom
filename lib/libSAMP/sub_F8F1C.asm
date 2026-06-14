; =========================================================
; Game Engine Function: sub_F8F1C
; Address            : 0xF8F1C - 0xF8F54
; =========================================================

F8F1C:  LDR             R0, [R0,#4]
F8F1E:  CBZ             R0, locret_F8F52
F8F20:  LDR             R2, =(off_23494C - 0xF8F28)
F8F22:  LDR             R3, [R0]
F8F24:  ADD             R2, PC; off_23494C
F8F26:  LDR             R2, [R2]; dword_23DF24
F8F28:  LDR.W           R12, [R2]
F8F2C:  MOV             R2, #0x667D24
F8F34:  ADD             R2, R12
F8F36:  CMP             R3, R2
F8F38:  BEQ             locret_F8F52
F8F3A:  LDR             R2, [R0,#0x1C]
F8F3C:  MOV             R3, #0x7FFFFFFD
F8F44:  CMP             R1, #0
F8F46:  AND.W           R2, R2, R3
F8F4A:  ADD             R3, R2
F8F4C:  IT EQ
F8F4E:  ADDEQ           R2, R3, #5
F8F50:  STR             R2, [R0,#0x1C]
F8F52:  BX              LR
