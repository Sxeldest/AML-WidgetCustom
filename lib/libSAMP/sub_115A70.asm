; =========================================================
; Game Engine Function: sub_115A70
; Address            : 0x115A70 - 0x115A96
; =========================================================

115A70:  PUSH            {R7,LR}
115A72:  MOV             R7, SP
115A74:  SUB             SP, SP, #0x10
115A76:  LDR             R0, [R0,#0x10]
115A78:  STRD.W          R2, R1, [SP,#0x18+var_10]
115A7C:  STR             R3, [SP,#0x18+var_14]
115A7E:  CBZ             R0, loc_115A92
115A80:  LDR             R1, [R0]
115A82:  ADD             R2, SP, #0x18+var_10
115A84:  ADD             R3, SP, #0x18+var_14
115A86:  LDR.W           R12, [R1,#0x18]
115A8A:  ADD             R1, SP, #0x18+var_C
115A8C:  BLX             R12
115A8E:  ADD             SP, SP, #0x10
115A90:  POP             {R7,PC}
115A92:  BL              sub_DC92C
