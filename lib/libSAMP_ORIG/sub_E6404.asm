; =========================================================
; Game Engine Function: sub_E6404
; Address            : 0xE6404 - 0xE641A
; =========================================================

E6404:  LDR             R2, [R2]
E6406:  CMP             R0, R1
E6408:  BEQ             loc_E6416
E640A:  LDR             R3, [R0]
E640C:  CMP             R3, R2
E640E:  BEQ             loc_E6414
E6410:  ADDS            R0, #4
E6412:  B               loc_E6406
E6414:  MOV             R1, R0
E6416:  MOV             R0, R1
E6418:  BX              LR
