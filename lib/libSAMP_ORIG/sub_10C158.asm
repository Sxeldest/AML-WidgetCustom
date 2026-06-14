; =========================================================
; Game Engine Function: sub_10C158
; Address            : 0x10C158 - 0x10C164
; =========================================================

10C158:  MOV             R12, #(__android_log_print - 0x10C164)
10C160:  ADD             R12, PC; __android_log_print
10C162:  BX              R12; __android_log_print
