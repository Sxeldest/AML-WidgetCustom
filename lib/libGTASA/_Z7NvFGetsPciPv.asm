; =========================================================
; Game Engine Function: _Z7NvFGetsPciPv
; Address            : 0x2740C0 - 0x2740D0
; =========================================================

2740C0:  LDRD.W          R3, R2, [R2]; asset
2740C4:  CMP             R3, #1
2740C6:  IT NE
2740C8:  BNE.W           _Z9NvAPKGetsPciPv; NvAPKGets(char *,int,void *)
2740CC:  B.W             j_fgets
