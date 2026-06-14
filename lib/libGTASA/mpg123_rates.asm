; =========================================================
; Game Engine Function: mpg123_rates
; Address            : 0x223E08 - 0x223E1A
; =========================================================

223E08:  CBZ             R0, loc_223E10
223E0A:  LDR             R2, =(unk_5F06F0 - 0x223E10)
223E0C:  ADD             R2, PC; unk_5F06F0
223E0E:  STR             R2, [R0]
223E10:  CMP             R1, #0
223E12:  ITT NE
223E14:  MOVNE           R0, #9
223E16:  STRNE           R0, [R1]
223E18:  BX              LR
