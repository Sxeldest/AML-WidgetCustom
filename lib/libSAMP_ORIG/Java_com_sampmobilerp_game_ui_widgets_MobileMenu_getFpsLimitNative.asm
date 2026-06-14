; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_widgets_MobileMenu_getFpsLimitNative
; Address            : 0x6AB68 - 0x6AB72
; =========================================================

6AB68:  LDR             R0, =(off_114B6C - 0x6AB6E)
6AB6A:  ADD             R0, PC; off_114B6C
6AB6C:  LDR             R0, [R0]; dword_116D04
6AB6E:  LDR             R0, [R0]
6AB70:  BX              LR
