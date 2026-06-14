; =========================================================
; Game Engine Function: sub_8BC64
; Address            : 0x8BC64 - 0x8BCB2
; =========================================================

8BC64:  PUSH            {R4-R7,LR}
8BC66:  ADD             R7, SP, #0xC
8BC68:  PUSH.W          {R11}
8BC6C:  LDR             R6, =(dword_1ACF68 - 0x8BC74)
8BC6E:  MOV             R4, R0
8BC70:  ADD             R6, PC; dword_1ACF68
8BC72:  LDR             R0, [R6]
8BC74:  CMP             R0, #0
8BC76:  ITTT NE
8BC78:  LDRNE.W         R1, [R0,#0x370]
8BC7C:  ADDNE           R1, #1
8BC7E:  STRNE.W         R1, [R0,#0x370]
8BC82:  LDR             R0, =(dword_1ACF70 - 0x8BC8A)
8BC84:  LDR             R2, =(off_117248 - 0x8BC8C)
8BC86:  ADD             R0, PC; dword_1ACF70
8BC88:  ADD             R2, PC; off_117248
8BC8A:  LDR             R1, [R0]
8BC8C:  MOVW            R0, #0x3B48
8BC90:  LDR             R2, [R2]; sub_9A720
8BC92:  BLX             R2; sub_9A720
8BC94:  MOV             R1, R4
8BC96:  MOV             R5, R0
8BC98:  BL              sub_8BCC0
8BC9C:  LDR             R0, [R6]
8BC9E:  CMP             R0, #0
8BCA0:  MOV             R0, R5
8BCA2:  IT EQ
8BCA4:  STREQ           R5, [R6]
8BCA6:  BL              sub_8C3A4
8BCAA:  MOV             R0, R5
8BCAC:  POP.W           {R11}
8BCB0:  POP             {R4-R7,PC}
