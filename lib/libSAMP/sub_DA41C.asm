; =========================================================
; Game Engine Function: sub_DA41C
; Address            : 0xDA41C - 0xDA434
; =========================================================

DA41C:  MOV             R1, R0
DA420:  LDR             R0, =(sub_DA410 - 0xDA430)
DA424:  LDR             R2, =(off_22A540 - 0xDA434)
DA428:  ADD             R0, PC, R0; sub_DA410
DA42C:  ADD             R2, PC, R2; off_22A540
DA430:  B               __cxa_atexit
