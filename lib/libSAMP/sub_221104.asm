; =========================================================
; Game Engine Function: sub_221104
; Address            : 0x221104 - 0x221134
; =========================================================

221104:  PUSH            {R4,LR}
221108:  LDR             R4, =(byte_384180 - 0x221118)
22110C:  LDR             R1, =(sub_22113C - 0x22111C)
221110:  ADD             R4, PC, R4; byte_384180
221114:  ADD             R1, PC, R1; sub_22113C ; destr_function
221118:  ADD             R0, R4, #4; key
22111C:  BL              pthread_key_create
221120:  CMP             R0, #0
221124:  MOVEQ           R0, #1
221128:  STRBEQ          R0, [R4]
22112C:  POPEQ           {R4,PC}
221130:  BL              abort
