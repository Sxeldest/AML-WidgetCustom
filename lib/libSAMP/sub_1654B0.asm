; =========================================================
; Game Engine Function: sub_1654B0
; Address            : 0x1654B0 - 0x1654D0
; =========================================================

1654B0:  LDR             R1, =(dword_381B58 - 0x1654B6)
1654B2:  ADD             R1, PC; dword_381B58
1654B4:  LDR             R1, [R1]
1654B6:  CBZ             R1, loc_1654C2
1654B8:  LDR.W           R2, [R1,#0x370]
1654BC:  ADDS            R2, #1
1654BE:  STR.W           R2, [R1,#0x370]
1654C2:  LDR             R1, =(dword_381B60 - 0x1654CA)
1654C4:  LDR             R2, =(off_2390AC - 0x1654CC)
1654C6:  ADD             R1, PC; dword_381B60
1654C8:  ADD             R2, PC; off_2390AC
1654CA:  LDR             R1, [R1]
1654CC:  LDR             R2, [R2]; sub_171190
1654CE:  BX              R2; sub_171190
