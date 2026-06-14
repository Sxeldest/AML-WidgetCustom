; =========================================================
; Game Engine Function: sub_115D10
; Address            : 0x115D10 - 0x115D36
; =========================================================

115D10:  PUSH            {R4,R6,R7,LR}
115D12:  ADD             R7, SP, #8
115D14:  SUB             SP, SP, #8
115D16:  MOV             R4, R0
115D18:  BL              sub_115D3C
115D1C:  LDR             R0, =(unk_2634F8 - 0x115D24)
115D1E:  STR             R4, [SP,#0x10+var_C]
115D20:  ADD             R0, PC; unk_2634F8
115D22:  LDR             R0, [R0,#(dword_263508 - 0x2634F8)]
115D24:  CBZ             R0, loc_115D32
115D26:  LDR             R1, [R0]
115D28:  LDR             R2, [R1,#0x18]
115D2A:  ADD             R1, SP, #0x10+var_C
115D2C:  BLX             R2
115D2E:  ADD             SP, SP, #8
115D30:  POP             {R4,R6,R7,PC}
115D32:  BL              sub_DC92C
