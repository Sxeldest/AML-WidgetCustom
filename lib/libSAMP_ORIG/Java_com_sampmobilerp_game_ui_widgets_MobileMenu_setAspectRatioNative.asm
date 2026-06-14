; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_widgets_MobileMenu_setAspectRatioNative
; Address            : 0x6AAB0 - 0x6AACA
; =========================================================

6AAB0:  LDR             R0, =(off_114B08 - 0x6AAB8)
6AAB2:  LDR             R1, =(dword_1A41D8 - 0x6AABA)
6AAB4:  ADD             R0, PC; off_114B08
6AAB6:  ADD             R1, PC; dword_1A41D8
6AAB8:  LDR             R3, [R0]; dword_1A4488
6AABA:  LDR             R0, [R1]
6AABC:  CMP             R0, #0
6AABE:  STR             R2, [R3]
6AAC0:  ITT NE
6AAC2:  MOVNE           R1, R2
6AAC4:  BNE.W           sub_69984
6AAC8:  BX              LR
