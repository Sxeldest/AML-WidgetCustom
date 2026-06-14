; =========================================================
; Game Engine Function: _ZN15CClothesBuilder17FindNearestColourEP6RwRGBA
; Address            : 0x45BE38 - 0x45BE54
; =========================================================

45BE38:  LDRB            R1, [R0,#3]
45BE3A:  CMP             R1, #0
45BE3C:  ITT EQ
45BE3E:  MOVEQ           R0, #0
45BE40:  BXEQ            LR
45BE42:  LDR.W           R12, =(unk_9A7530 - 0x45BE4C)
45BE46:  LDRB            R1, [R0]; unsigned __int8
45BE48:  ADD             R12, PC; unk_9A7530
45BE4A:  LDRB            R2, [R0,#1]; unsigned __int8
45BE4C:  LDRB            R3, [R0,#2]; unsigned __int8
45BE4E:  MOV             R0, R12; this
45BE50:  B.W             sub_192898
