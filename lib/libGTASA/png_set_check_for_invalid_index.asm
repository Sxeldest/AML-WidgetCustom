; =========================================================
; Game Engine Function: png_set_check_for_invalid_index
; Address            : 0x203092 - 0x2030A2
; =========================================================

203092:  MOVS            R2, #0
203094:  CMP             R1, #1
203096:  IT LT
203098:  MOVLT.W         R2, #0xFFFFFFFF
20309C:  STR.W           R2, [R0,#0x204]
2030A0:  BX              LR
