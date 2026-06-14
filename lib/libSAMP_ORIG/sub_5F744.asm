; =========================================================
; Game Engine Function: sub_5F744
; Address            : 0x5F744 - 0x5F75C
; =========================================================

5F744:  MOV             R1, R0
5F748:  LDR             R0, =(sub_5F738 - 0x5F758)
5F74C:  LDR             R2, =(off_110560 - 0x5F75C)
5F750:  ADD             R0, PC, R0; sub_5F738
5F754:  ADD             R2, PC, R2; off_110560
5F758:  B               __cxa_atexit
