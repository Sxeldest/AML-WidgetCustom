; =========================================================
; Game Engine Function: Java_com_arizona_game_GTASA_SetRefreshRate
; Address            : 0xF55B4 - 0xF55C2
; =========================================================

F55B4:  LDR             R1, =(aAxl - 0xF55BE); "AXL" ...
F55B6:  MOVS            R0, #6
F55B8:  LDR             R2, =(aChangeFrameRat - 0xF55C0); "Change frame rate limit from java is no"... ...
F55BA:  ADD             R1, PC; "AXL"
F55BC:  ADD             R2, PC; "Change frame rate limit from java is no"...
F55BE:  B.W             sub_2242C8
