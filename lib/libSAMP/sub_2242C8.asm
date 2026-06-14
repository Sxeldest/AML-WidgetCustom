; =========================================================
; Game Engine Function: sub_2242C8
; Address            : 0x2242C8 - 0x2242D4
; =========================================================

2242C8:  MOV             R12, #(__android_log_print - 0x2242D4)
2242D0:  ADD             R12, PC; __android_log_print
2242D2:  BX              R12; __android_log_print
