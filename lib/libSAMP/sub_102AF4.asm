; =========================================================
; Game Engine Function: sub_102AF4
; Address            : 0x102AF4 - 0x102B0C
; =========================================================

102AF4:  LDR             R1, =(off_234A74 - 0x102AFA)
102AF6:  ADD             R1, PC; off_234A74
102AF8:  LDR             R1, [R1]; dword_2402E4
102AFA:  LDR             R1, [R1]
102AFC:  LDR             R1, [R1]
102AFE:  CBZ             R1, loc_102B04
102B00:  MOVS            R0, #0
102B02:  BX              LR
102B04:  LDR             R1, =(off_25C938 - 0x102B0A)
102B06:  ADD             R1, PC; off_25C938
102B08:  LDR             R1, [R1]
102B0A:  BX              R1
