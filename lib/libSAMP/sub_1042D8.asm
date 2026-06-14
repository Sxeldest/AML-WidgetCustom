; =========================================================
; Game Engine Function: sub_1042D8
; Address            : 0x1042D8 - 0x1042F0
; =========================================================

1042D8:  LDR             R0, [R0,#0x5C]
1042DA:  CMP             R0, #0
1042DC:  ITTE NE
1042DE:  LDRNE.W         R0, [R0,#0x544]
1042E2:  VMOVNE          S0, R0
1042E6:  VLDREQ          S0, =0.0
1042EA:  VMOV            R0, S0
1042EE:  BX              LR
