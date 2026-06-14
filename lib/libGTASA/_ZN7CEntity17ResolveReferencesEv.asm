; =========================================================
; Game Engine Function: _ZN7CEntity17ResolveReferencesEv
; Address            : 0x40EAE4 - 0x40EB26
; =========================================================

40EAE4:  LDR             R1, [R0,#0x28]
40EAE6:  CBZ             R1, locret_40EB24
40EAE8:  MOV.W           R12, #0
40EAEC:  LDR             R3, [R1,#4]
40EAEE:  LDR             R2, [R3]
40EAF0:  CMP             R2, R0
40EAF2:  IT EQ
40EAF4:  STREQ.W         R12, [R3]
40EAF8:  LDR             R1, [R1]
40EAFA:  CMP             R1, #0
40EAFC:  BNE             loc_40EAEC
40EAFE:  LDR             R1, [R0,#0x28]
40EB00:  CMP             R1, #0
40EB02:  IT EQ
40EB04:  BXEQ            LR
40EB06:  MOVS            R3, #0
40EB08:  MOV             R2, R1
40EB0A:  LDR             R1, [R2]
40EB0C:  STR             R3, [R2,#4]
40EB0E:  CMP             R1, #0
40EB10:  BNE             loc_40EB08
40EB12:  LDR             R1, =(_ZN11CReferences10pEmptyListE_ptr - 0x40EB18)
40EB14:  ADD             R1, PC; _ZN11CReferences10pEmptyListE_ptr
40EB16:  LDR             R1, [R1]; CReferences::pEmptyList ...
40EB18:  LDR             R3, [R1]; CReferences::pEmptyList
40EB1A:  STR             R3, [R2]
40EB1C:  LDR             R2, [R0,#0x28]
40EB1E:  STR             R2, [R1]; CReferences::pEmptyList
40EB20:  MOVS            R1, #0
40EB22:  STR             R1, [R0,#0x28]
40EB24:  BX              LR
