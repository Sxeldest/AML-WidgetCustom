; =========================================================
; Game Engine Function: sub_1B9FB0
; Address            : 0x1B9FB0 - 0x1B9FDC
; =========================================================

1B9FB0:  MOV             R1, #0x28958
1B9FB8:  LDR             R1, [R0,R1]
1B9FBC:  LDR             R0, [R1,#4]
1B9FC0:  CMP             R0, #0
1B9FC4:  BXEQ            LR
1B9FC8:  LDR             R0, [R1]
1B9FCC:  MOV             R2, #0
1B9FD0:  STR             R2, [R1,#4]
1B9FD4:  MOV             R1, #0
1B9FD8:  B               pthread_join
