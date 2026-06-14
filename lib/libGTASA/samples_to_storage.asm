; =========================================================
; Game Engine Function: samples_to_storage
; Address            : 0x2251CE - 0x2251EE
; =========================================================

2251CE:  MOVW            R2, #0xB2B1
2251D2:  LDRB            R2, [R0,R2]
2251D4:  LSLS            R2, R2, #0x19
2251D6:  BMI             loc_2251E2
2251D8:  MOVW            R2, #0xB2B4
2251DC:  LDR             R2, [R0,R2]
2251DE:  MULS            R1, R2
2251E0:  B               loc_2251E4
2251E2:  LSLS            R1, R1, #2
2251E4:  MOVW            R2, #0xB2B8
2251E8:  LDR             R0, [R0,R2]
2251EA:  MULS            R0, R1
2251EC:  BX              LR
