; =========================================================
; Game Engine Function: sub_1273FC
; Address            : 0x1273FC - 0x127414
; =========================================================

1273FC:  LDR             R1, =(byte_8F794 - 0x12740A)
1273FE:  ADD.W           R3, R0, R0,LSL#1
127402:  LDR             R2, =(byte_313AA8 - 0x12740C)
127404:  CMP             R0, #0x1F
127406:  ADD             R1, PC; byte_8F794
127408:  ADD             R2, PC; byte_313AA8
12740A:  IT LS
12740C:  ADDLS.W         R1, R2, R3,LSL#4
127410:  MOV             R0, R1
127412:  BX              LR
