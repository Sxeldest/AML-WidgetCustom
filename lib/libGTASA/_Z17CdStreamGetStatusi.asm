; =========================================================
; Game Engine Function: _Z17CdStreamGetStatusi
; Address            : 0x2C9B8C - 0x2C9BBA
; =========================================================

2C9B8C:  LDR             R1, =(dword_70BE40 - 0x2C9B92)
2C9B8E:  ADD             R1, PC; dword_70BE40
2C9B90:  LDR             R1, [R1]
2C9B92:  ADD.W           R1, R1, R0,LSL#5
2C9B96:  LDRB            R0, [R1,#0xE]
2C9B98:  CMP             R0, #0
2C9B9A:  ITT NE
2C9B9C:  MOVNE           R0, #0xFF
2C9B9E:  BXNE            LR
2C9BA0:  LDR             R0, [R1,#4]
2C9BA2:  CBZ             R0, loc_2C9BA8
2C9BA4:  MOVS            R0, #0xFA
2C9BA6:  BX              LR
2C9BA8:  LDR.W           R2, [R1,#0x10]!
2C9BAC:  MOVS            R0, #0
2C9BAE:  CMP             R2, #0
2C9BB0:  ITTT NE
2C9BB2:  LDRNE           R2, [R1]
2C9BB4:  STRNE           R0, [R1]
2C9BB6:  MOVNE           R0, R2
2C9BB8:  BX              LR
