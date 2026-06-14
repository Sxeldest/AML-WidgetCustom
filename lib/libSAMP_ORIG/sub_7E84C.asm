; =========================================================
; Game Engine Function: sub_7E84C
; Address            : 0x7E84C - 0x7E864
; =========================================================

7E84C:  LDR             R0, =(byte_1A45F3 - 0x7E852)
7E84E:  ADD             R0, PC; byte_1A45F3
7E850:  LDRB            R0, [R0]
7E852:  CMP             R0, #0
7E854:  IT EQ
7E856:  BXEQ            LR
7E858:  LDR             R0, =(dword_1A461C - 0x7E860)
7E85A:  MOVS            R1, #0
7E85C:  ADD             R0, PC; dword_1A461C
7E85E:  LDR             R0, [R0]
7E860:  STR             R1, [R0,#0x14]
7E862:  BX              LR
