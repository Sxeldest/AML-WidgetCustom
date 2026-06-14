; =========================================================
; Game Engine Function: sub_18CB80
; Address            : 0x18CB80 - 0x18CB8E
; =========================================================

18CB80:  LDR             R1, =(byte_382750 - 0x18CB86)
18CB82:  ADD             R1, PC; byte_382750
18CB84:  LDRB            R2, [R1]
18CB86:  CBZ             R2, locret_18CB8C
18CB88:  MOVS            R2, #0
18CB8A:  STRB            R2, [R1]
18CB8C:  BX              LR
