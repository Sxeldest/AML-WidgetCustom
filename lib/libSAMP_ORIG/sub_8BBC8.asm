; =========================================================
; Game Engine Function: sub_8BBC8
; Address            : 0x8BBC8 - 0x8BBE0
; =========================================================

8BBC8:  LDR             R0, =(dword_1ACF68 - 0x8BBCE)
8BBCA:  ADD             R0, PC; dword_1ACF68
8BBCC:  LDR             R0, [R0]
8BBCE:  LDR.W           R1, [R0,#0xC8]
8BBD2:  CBZ             R1, loc_8BBDA
8BBD4:  LDR.W           R0, [R0,#0xD0]
8BBD8:  BX              R1
8BBDA:  LDR             R0, =(byte_4FDB8 - 0x8BBE0)
8BBDC:  ADD             R0, PC; byte_4FDB8
8BBDE:  BX              LR
