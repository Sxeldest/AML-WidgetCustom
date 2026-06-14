; =========================================================
; Game Engine Function: sub_21FCF0
; Address            : 0x21FCF0 - 0x21FD1E
; =========================================================

21FCF0:  LDR             R0, =(unk_384128 - 0x21FCFE)
21FCF2:  MOV.W           R1, #0xFFFFFFFF
21FCF6:  LDR             R2, =(byte_8F794 - 0x21FD00)
21FCF8:  LDR             R3, =(asc_836CD - 0x21FD02); "." ...
21FCFA:  ADD             R0, PC; unk_384128
21FCFC:  ADD             R2, PC; byte_8F794
21FCFE:  ADD             R3, PC; "."
21FD00:  STRD.W          R1, R1, [R0,#(dword_384154 - 0x384128)]
21FD04:  STRD.W          R3, R2, [R0,#(dword_38412C - 0x384128)]
21FD08:  STRD.W          R2, R2, [R0,#(dword_384134 - 0x384128)]
21FD0C:  STRD.W          R2, R2, [R0,#(dword_38413C - 0x384128)]
21FD10:  STRD.W          R2, R2, [R0,#(dword_384144 - 0x384128)]
21FD14:  STRD.W          R2, R2, [R0,#(dword_38414C - 0x384128)]
21FD18:  STR             R1, [R0,#(dword_38415C - 0x384128)]
21FD1A:  STRH            R1, [R0,#(word_384160 - 0x384128)]
21FD1C:  BX              LR
