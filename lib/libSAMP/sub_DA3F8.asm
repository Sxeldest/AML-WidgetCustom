; =========================================================
; Game Engine Function: sub_DA3F8
; Address            : 0xDA3F8 - 0xDA404
; =========================================================

DA3F8:  LDR             R0, =(off_22A540 - 0xDA404)
DA3FC:  ADD             R0, PC, R0; off_22A540 ; void *
DA400:  B               __cxa_finalize
