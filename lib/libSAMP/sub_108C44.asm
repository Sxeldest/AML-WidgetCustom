; =========================================================
; Game Engine Function: sub_108C44
; Address            : 0x108C44 - 0x108C62
; =========================================================

108C44:  LDR             R1, =(unk_262908 - 0x108C4C)
108C46:  MOVS            R0, #0
108C48:  ADD             R1, PC; unk_262908
108C4A:  LDRB            R2, [R1,R0]
108C4C:  CBZ             R2, loc_108C5C
108C4E:  ADDS            R0, #1
108C50:  CMP             R0, #0xC8
108C52:  ITT EQ
108C54:  MOVEQ.W         R0, #0xFFFFFFFF
108C58:  BXEQ            LR
108C5A:  B               loc_108C4A
108C5C:  MOVS            R2, #1
108C5E:  STRB            R2, [R1,R0]
108C60:  BX              LR
