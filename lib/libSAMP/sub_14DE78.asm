; =========================================================
; Game Engine Function: sub_14DE78
; Address            : 0x14DE78 - 0x14DE86
; =========================================================

14DE78:  LDR             R0, =(off_234970 - 0x14DE7E)
14DE7A:  ADD             R0, PC; off_234970
14DE7C:  LDR             R0, [R0]; dword_23DEF0
14DE7E:  LDR             R0, [R0]
14DE80:  LDR             R0, [R0,#4]
14DE82:  B.W             sub_F85F0
