; =========================================================
; Game Engine Function: sub_87780
; Address            : 0x87780 - 0x8779E
; =========================================================

87780:  LDR             R0, =(byte_1ABEC4 - 0x87786)
87782:  ADD             R0, PC; byte_1ABEC4
87784:  LDRB            R1, [R0]
87786:  CMP             R1, #0
87788:  ITT EQ
8778A:  MOVEQ           R1, #1
8778C:  STRBEQ          R1, [R0]
8778E:  LDR             R0, =(sub_87748+1 - 0x87798)
87790:  LDR             R1, =(unk_1ABEC5 - 0x8779A)
87792:  LDR             R2, =(off_110560 - 0x8779C)
87794:  ADD             R0, PC; sub_87748
87796:  ADD             R1, PC; unk_1ABEC5
87798:  ADD             R2, PC; off_110560
8779A:  B.W             sub_10C188
