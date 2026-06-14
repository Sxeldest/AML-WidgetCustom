; =========================================================
; Game Engine Function: _ZN7CEntity19CleanUpOldReferenceEPPS_
; Address            : 0x40EAAC - 0x40EADE
; =========================================================

40EAAC:  LDR.W           R2, [R0,#0x28]!
40EAB0:  CMP             R2, #0
40EAB2:  IT EQ
40EAB4:  BXEQ            LR
40EAB6:  LDR             R3, [R2,#4]
40EAB8:  CMP             R3, R1
40EABA:  BEQ             loc_40EAC8
40EABC:  LDR             R3, [R2]
40EABE:  MOV             R0, R2
40EAC0:  CMP             R3, #0
40EAC2:  MOV             R2, R3
40EAC4:  BNE             loc_40EAB6
40EAC6:  BX              LR
40EAC8:  LDR             R1, =(_ZN11CReferences10pEmptyListE_ptr - 0x40EAD0)
40EACA:  LDR             R3, [R2]
40EACC:  ADD             R1, PC; _ZN11CReferences10pEmptyListE_ptr
40EACE:  STR             R3, [R0]
40EAD0:  LDR             R1, [R1]; CReferences::pEmptyList ...
40EAD2:  LDR             R0, [R1]; CReferences::pEmptyList
40EAD4:  STR             R0, [R2]
40EAD6:  MOVS            R0, #0
40EAD8:  STR             R2, [R1]; CReferences::pEmptyList
40EADA:  STR             R0, [R2,#4]
40EADC:  BX              LR
