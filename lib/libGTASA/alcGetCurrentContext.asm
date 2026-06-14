; =========================================================
; Game Engine Function: alcGetCurrentContext
; Address            : 0x24BE18 - 0x24BE34
; =========================================================

24BE18:  PUSH            {R7,LR}
24BE1A:  MOV             R7, SP
24BE1C:  LDR             R0, =(dword_6D6290 - 0x24BE22)
24BE1E:  ADD             R0, PC; dword_6D6290
24BE20:  LDR             R0, [R0]; key
24BE22:  BLX             pthread_getspecific
24BE26:  CMP             R0, #0
24BE28:  IT NE
24BE2A:  POPNE           {R7,PC}
24BE2C:  LDR             R0, =(dword_6D6338 - 0x24BE32)
24BE2E:  ADD             R0, PC; dword_6D6338
24BE30:  LDR             R0, [R0]
24BE32:  POP             {R7,PC}
