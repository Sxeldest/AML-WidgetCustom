; =========================================================
; Game Engine Function: mpg123_encodings
; Address            : 0x223E20 - 0x223E32
; =========================================================

223E20:  CBZ             R0, loc_223E28
223E22:  LDR             R2, =(unk_5F0714 - 0x223E28)
223E24:  ADD             R2, PC; unk_5F0714
223E26:  STR             R2, [R0]
223E28:  CMP             R1, #0
223E2A:  ITT NE
223E2C:  MOVNE           R0, #0xB
223E2E:  STRNE           R0, [R1]
223E30:  BX              LR
