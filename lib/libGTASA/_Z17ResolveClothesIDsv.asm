; =========================================================
; Game Engine Function: _Z17ResolveClothesIDsv
; Address            : 0x45BE5C - 0x45BE86
; =========================================================

45BE5C:  PUSH            {R4,R6,R7,LR}
45BE5E:  ADD             R7, SP, #8
45BE60:  LDR             R0, =(clothesIDs_ptr - 0x45BE66)
45BE62:  ADD             R0, PC; clothesIDs_ptr
45BE64:  LDR             R0, [R0]; clothesIDs
45BE66:  LDR             R0, [R0]; "10ls" ...
45BE68:  CMP             R0, #0
45BE6A:  IT EQ
45BE6C:  POPEQ           {R4,R6,R7,PC}
45BE6E:  LDR             R1, =(clothesIDs_ptr - 0x45BE74)
45BE70:  ADD             R1, PC; clothesIDs_ptr
45BE72:  LDR             R1, [R1]; clothesIDs ; char *
45BE74:  ADDS            R4, R1, #4
45BE76:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
45BE7A:  STR             R0, [R4]
45BE7C:  LDR             R0, [R4,#4]; "10ls2" ...
45BE7E:  ADDS            R4, #8
45BE80:  CMP             R0, #0
45BE82:  BNE             loc_45BE76
45BE84:  POP             {R4,R6,R7,PC}
