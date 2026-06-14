; =========================================================
; Game Engine Function: _Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc
; Address            : 0x3909D4 - 0x3909FC
; =========================================================

3909D4:  PUSH            {R4,R6,R7,LR}
3909D6:  ADD             R7, SP, #8
3909D8:  LDR             R2, =(ClumpOffset_ptr - 0x3909DE)
3909DA:  ADD             R2, PC; ClumpOffset_ptr
3909DC:  LDR             R2, [R2]; ClumpOffset
3909DE:  LDR             R2, [R2]
3909E0:  LDR             R4, [R0,R2]
3909E2:  MOV             R0, R1; this
3909E4:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
3909E8:  LDR             R4, [R4]
3909EA:  CBZ             R4, loc_3909F8
3909EC:  LDR             R1, [R4,#0x10]
3909EE:  LDR             R1, [R1]
3909F0:  CMP             R1, R0
3909F2:  BNE             loc_3909E8
3909F4:  SUBS            R0, R4, #4
3909F6:  POP             {R4,R6,R7,PC}
3909F8:  MOVS            R0, #0
3909FA:  POP             {R4,R6,R7,PC}
