; =========================================================
; Game Engine Function: sub_2210D4
; Address            : 0x2210D4 - 0x221100
; =========================================================

2210D4:  PUSH            {R4,LR}
2210D8:  LDR             R4, =(byte_384180 - 0x2210E4)
2210DC:  ADD             R4, PC, R4; byte_384180
2210E0:  LDRB            R0, [R4]
2210E4:  CMP             R0, #1
2210E8:  POPNE           {R4,PC}
2210EC:  LDR             R0, [R4,#(dword_384184 - 0x384180)]; key
2210F0:  BL              pthread_key_delete
2210F4:  MOV             R0, #0
2210F8:  STRB            R0, [R4]
2210FC:  POP             {R4,PC}
