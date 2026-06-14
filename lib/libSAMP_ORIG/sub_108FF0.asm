; =========================================================
; Game Engine Function: sub_108FF0
; Address            : 0x108FF0 - 0x109020
; =========================================================

108FF0:  PUSH            {R4,LR}
108FF4:  LDR             R4, =(byte_1AF8A8 - 0x109004)
108FF8:  LDR             R1, =(sub_109028 - 0x109008)
108FFC:  ADD             R4, PC, R4; byte_1AF8A8
109000:  ADD             R1, PC, R1; sub_109028 ; destr_function
109004:  ADD             R0, R4, #4; key
109008:  BL              pthread_key_create
10900C:  CMP             R0, #0
109010:  MOVEQ           R0, #1
109014:  STRBEQ          R0, [R4]
109018:  POPEQ           {R4,PC}
10901C:  BL              abort
