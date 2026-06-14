; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_widgets_MobileMenu_setDrawDistanceNative
; Address            : 0x6AB78 - 0x6AB84
; =========================================================

6AB78:  LDR             R0, =(off_114B0C - 0x6AB7E)
6AB7A:  ADD             R0, PC; off_114B0C
6AB7C:  LDR             R0, [R0]; dword_1A44F8
6AB7E:  STR             R2, [R0]
6AB80:  B.W             sub_76564
