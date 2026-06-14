; =========================================================
; Game Engine Function: sub_8BBE8
; Address            : 0x8BBE8 - 0x8BC00
; =========================================================

8BBE8:  MOV             R1, R0
8BBEA:  LDR             R0, =(dword_1ACF68 - 0x8BBF0)
8BBEC:  ADD             R0, PC; dword_1ACF68
8BBEE:  LDR             R0, [R0]
8BBF0:  LDR.W           R2, [R0,#0xCC]
8BBF4:  CMP             R2, #0
8BBF6:  IT EQ
8BBF8:  BXEQ            LR
8BBFA:  LDR.W           R0, [R0,#0xD0]
8BBFE:  BX              R2
