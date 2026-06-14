; =========================================================
; Game Engine Function: sub_8B080
; Address            : 0x8B080 - 0x8B0AE
; =========================================================

8B080:  LDR             R0, =(dword_1ACF68 - 0x8B08A)
8B082:  MOVW            R1, #0x19D0
8B086:  ADD             R0, PC; dword_1ACF68
8B088:  LDR             R0, [R0]
8B08A:  LDR             R2, [R0,R1]
8B08C:  ADD             R0, R1
8B08E:  CMP             R2, #0
8B090:  IT NE
8B092:  MOVNE           R2, #1
8B094:  STRB            R2, [R0,#0xC]
8B096:  ITTT NE
8B098:  MOVNE           R1, #0
8B09A:  STRHNE          R1, [R0,#0xE]
8B09C:  STRNE           R1, [R0,#8]
8B09E:  MOVS            R1, #0
8B0A0:  STRD.W          R1, R1, [R0,#0x14]
8B0A4:  STR             R1, [R0]
8B0A6:  STR             R1, [R0,#0x24]
8B0A8:  STRB            R1, [R0,#0xD]
8B0AA:  STRB            R1, [R0,#0x10]
8B0AC:  BX              LR
