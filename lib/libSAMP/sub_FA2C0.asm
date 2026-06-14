; =========================================================
; Game Engine Function: sub_FA2C0
; Address            : 0xFA2C0 - 0xFA30A
; =========================================================

FA2C0:  CMP             R3, #0xC8
FA2C2:  IT GT
FA2C4:  BXGT            LR
FA2C6:  PUSH            {R4-R7,LR}
FA2C8:  ADD             R7, SP, #0x14+var_8
FA2CA:  PUSH.W          {R8}
FA2CE:  LDR             R0, =(unk_B2C8C - 0xFA2DA)
FA2D0:  MOV             R4, R3
FA2D2:  MOV             R8, R2
FA2D4:  MOV             R6, R1
FA2D6:  ADD             R0, PC; unk_B2C8C
FA2D8:  BL              sub_107188
FA2DC:  LDR             R5, =(dword_24735C - 0xFA2E4)
FA2DE:  MOV             R0, R6
FA2E0:  ADD             R5, PC; dword_24735C
FA2E2:  LDR             R1, [R5]
FA2E4:  BL              sub_163C40
FA2E8:  LDR             R0, =(off_23494C - 0xFA2F6)
FA2EA:  MOV             R2, #0x54C5BD
FA2F2:  ADD             R0, PC; off_23494C
FA2F4:  LDR             R0, [R0]; dword_23DF24
FA2F6:  LDR             R1, [R0]
FA2F8:  LDR             R0, [R5]
FA2FA:  ADDS            R3, R1, R2
FA2FC:  MOV             R1, R8
FA2FE:  MOV             R2, R4
FA300:  POP.W           {R8}
FA304:  POP.W           {R4-R7,LR}
FA308:  BX              R3
