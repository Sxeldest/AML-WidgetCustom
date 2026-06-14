; =========================================================
; Game Engine Function: png_get_current_pass_number
; Address            : 0x2038AE - 0x2038BA
; =========================================================

2038AE:  CMP             R0, #0
2038B0:  ITE NE
2038B2:  LDRBNE.W        R0, [R0,#0x20D]
2038B6:  MOVEQ           R0, #8
2038B8:  BX              LR
