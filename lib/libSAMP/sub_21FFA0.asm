; =========================================================
; Game Engine Function: sub_21FFA0
; Address            : 0x21FFA0 - 0x21FFAE
; =========================================================

21FFA0:  LDR             R3, =(unk_38416C - 0x21FFA8)
21FFA2:  CMP             R2, #0
21FFA4:  ADD             R3, PC; unk_38416C
21FFA6:  IT EQ
21FFA8:  MOVEQ           R2, R3
21FFAA:  B.W             sub_220270
