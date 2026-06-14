; =========================================================
; Game Engine Function: sub_1A9DEC
; Address            : 0x1A9DEC - 0x1A9E04
; =========================================================

1A9DEC:  MOV             R1, R0
1A9DF0:  LDR             R2, =(unk_67A000 - 0x1A9E00)
1A9DF4:  LDR             R0, =(sub_1A9DE0 - 0x1A9E04)
1A9DF8:  ADD             R2, PC, R2; unk_67A000
1A9DFC:  ADD             R0, PC, R0; sub_1A9DE0
1A9E00:  B               __cxa_atexit
