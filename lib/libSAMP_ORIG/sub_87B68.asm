; =========================================================
; Game Engine Function: sub_87B68
; Address            : 0x87B68 - 0x87B80
; =========================================================

87B68:  LDR             R1, =(dword_1ABECC - 0x87B74)
87B6A:  MOVS            R3, #0
87B6C:  LDR             R0, =(sub_87B50+1 - 0x87B76)
87B6E:  LDR             R2, =(off_110560 - 0x87B78)
87B70:  ADD             R1, PC; dword_1ABECC
87B72:  ADD             R0, PC; sub_87B50
87B74:  ADD             R2, PC; off_110560
87B76:  STRD.W          R3, R3, [R1]
87B7A:  STR             R3, [R1,#(dword_1ABED4 - 0x1ABECC)]
87B7C:  B.W             sub_10C188
