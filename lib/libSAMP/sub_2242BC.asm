; =========================================================
; Game Engine Function: sub_2242BC
; Address            : 0x2242BC - 0x2242C8
; =========================================================

2242BC:  MOV             R12, #(__android_log_write - 0x2242C8)
2242C4:  ADD             R12, PC; __android_log_write
2242C6:  BX              R12; __android_log_write
