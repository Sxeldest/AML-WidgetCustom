; =========================================================
; Game Engine Function: sub_FF538
; Address            : 0xFF538 - 0xFF54E
; =========================================================

FF538:  CMP.W           R0, #0x1000
FF53C:  ITTE CS
FF53E:  LDRCS           R2, [R0]
FF540:  CMPCS.W         R2, #0x1000
FF544:  BXCC            LR
FF546:  LDR             R2, =(off_25B194 - 0xFF54C)
FF548:  ADD             R2, PC; off_25B194
FF54A:  LDR             R2, [R2]
FF54C:  BX              R2
