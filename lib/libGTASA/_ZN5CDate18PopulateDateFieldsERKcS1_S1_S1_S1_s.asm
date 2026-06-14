; =========================================================
; Game Engine Function: _ZN5CDate18PopulateDateFieldsERKcS1_S1_S1_S1_s
; Address            : 0x4D3B32 - 0x4D3B50
; =========================================================

4D3B32:  LDRB            R1, [R1]
4D3B34:  STR             R1, [R0]
4D3B36:  LDRB            R1, [R2]
4D3B38:  STR             R1, [R0,#4]
4D3B3A:  LDR             R2, [SP,#arg_0]
4D3B3C:  LDRB            R1, [R3]
4D3B3E:  STR             R1, [R0,#8]
4D3B40:  LDR             R3, [SP,#arg_4]
4D3B42:  LDRB            R1, [R2]
4D3B44:  LDR             R2, [SP,#arg_8]
4D3B46:  STR             R1, [R0,#0xC]
4D3B48:  LDRB            R1, [R3]
4D3B4A:  STRD.W          R1, R2, [R0,#0x10]
4D3B4E:  BX              LR
