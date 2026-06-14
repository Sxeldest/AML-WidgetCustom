; =========================================================
; Game Engine Function: sub_127C6C
; Address            : 0x127C6C - 0x127C92
; =========================================================

127C6C:  PUSH            {R4,R6,R7,LR}
127C6E:  ADD             R7, SP, #8
127C70:  SUB             SP, SP, #8
127C72:  MOV             R4, R0
127C74:  BL              sub_127C98
127C78:  LDR             R0, =(unk_3140B0 - 0x127C80)
127C7A:  STR             R4, [SP,#0x10+var_C]
127C7C:  ADD             R0, PC; unk_3140B0
127C7E:  LDR             R0, [R0,#(dword_3140C0 - 0x3140B0)]
127C80:  CBZ             R0, loc_127C8E
127C82:  LDR             R1, [R0]
127C84:  LDR             R2, [R1,#0x18]
127C86:  ADD             R1, SP, #0x10+var_C
127C88:  BLX             R2
127C8A:  ADD             SP, SP, #8
127C8C:  POP             {R4,R6,R7,PC}
127C8E:  BL              sub_DC92C
