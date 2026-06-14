; =========================================================
; Game Engine Function: sub_186FF8
; Address            : 0x186FF8 - 0x187024
; =========================================================

186FF8:  LDR             R1, =(dword_381D88 - 0x187006)
186FFA:  MOVS            R3, #0
186FFC:  LDR             R2, =(dword_2390B4 - 0x187008)
186FFE:  ORR.W           R0, R0, #1
187002:  ADD             R1, PC; dword_381D88
187004:  ADD             R2, PC; dword_2390B4
187006:  STR             R0, [R1]
187008:  STR             R3, [R2]
18700A:  MOVW            R3, #:lower16:(elf_gnu_hash_bucket+0x711)
18700E:  MOVS            R2, #1
187010:  MOVT            R3, #:upper16:(elf_gnu_hash_bucket+0x711)
187014:  MULS            R0, R3
187016:  STR.W           R0, [R1,R2,LSL#2]
18701A:  ADDS            R2, #1
18701C:  CMP.W           R2, #0x270
187020:  BNE             loc_187014
187022:  BX              LR
