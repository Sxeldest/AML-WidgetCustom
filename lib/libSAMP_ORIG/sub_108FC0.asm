; =========================================================
; Game Engine Function: sub_108FC0
; Address            : 0x108FC0 - 0x108FEC
; =========================================================

108FC0:  PUSH            {R4,LR}
108FC4:  LDR             R4, =(byte_1AF8A8 - 0x108FD0)
108FC8:  ADD             R4, PC, R4; byte_1AF8A8
108FCC:  LDRB            R0, [R4]
108FD0:  CMP             R0, #1
108FD4:  POPNE           {R4,PC}
108FD8:  LDR             R0, [R4,#(dword_1AF8AC - 0x1AF8A8)]; key
108FDC:  BL              pthread_key_delete
108FE0:  MOV             R0, #0
108FE4:  STRB            R0, [R4]
108FE8:  POP             {R4,PC}
