; =========================================================
; Game Engine Function: sub_23BF08
; Address            : 0x23BF08 - 0x23BF34
; =========================================================

23BF08:  MOVW            R1, #0xB2F4
23BF0C:  LDRB            R1, [R0,R1]
23BF0E:  LSLS            R1, R1, #0x1C
23BF10:  ITTTT PL
23BF12:  MOVWPL          R1, #0xB2E8
23BF16:  LDRPL           R1, [R0,R1]
23BF18:  MOVPL           R0, R1
23BF1A:  BXPL            LR
23BF1C:  MOVW            R1, #0xB334
23BF20:  MOVW            R2, #0xB32C
23BF24:  LDR             R1, [R0,R1]
23BF26:  LDR             R2, [R0,R2]
23BF28:  ADD             R1, R2
23BF2A:  MOVW            R2, #0xB2E8
23BF2E:  STR             R1, [R0,R2]
23BF30:  MOV             R0, R1
23BF32:  BX              LR
