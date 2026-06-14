; =========================================================
; Game Engine Function: _ZN11CReferences25PruneAllReferencesInWorldEv
; Address            : 0x40EC3C - 0x40ED6A
; =========================================================

40EC3C:  PUSH            {R4-R7,LR}
40EC3E:  ADD             R7, SP, #0xC
40EC40:  PUSH.W          {R8}
40EC44:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x40EC4A)
40EC46:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
40EC48:  LDR             R0, [R0]; CPools::ms_pPedPool ...
40EC4A:  LDR.W           LR, [R0]; CPools::ms_pPedPool
40EC4E:  LDR.W           R1, [LR,#8]
40EC52:  CBZ             R1, loc_40ECA4
40EC54:  LDR             R0, =(_ZN11CReferences10pEmptyListE_ptr - 0x40EC62)
40EC56:  MOVW            R12, #0x7CC
40EC5A:  MOV.W           R8, #0
40EC5E:  ADD             R0, PC; _ZN11CReferences10pEmptyListE_ptr
40EC60:  LDR             R3, [R0]; CReferences::pEmptyList ...
40EC62:  LDR.W           R0, [LR,#4]
40EC66:  SUBS            R1, #1
40EC68:  LDRSB           R0, [R0,R1]
40EC6A:  CMP             R0, #0
40EC6C:  BLT             loc_40ECA0
40EC6E:  LDR.W           R0, [LR]
40EC72:  MLA.W           R0, R1, R12, R0
40EC76:  CBZ             R0, loc_40ECA0
40EC78:  MOV             R4, R0
40EC7A:  LDR.W           R5, [R4,#0x28]!
40EC7E:  CBZ             R5, loc_40ECA0
40EC80:  MOV             R6, R4
40EC82:  MOV             R4, R5
40EC84:  LDRD.W          R5, R2, [R4]
40EC88:  LDR             R2, [R2]
40EC8A:  CMP             R2, R0
40EC8C:  BEQ             loc_40EC7E
40EC8E:  STR             R5, [R6]
40EC90:  CMP             R5, #0
40EC92:  LDR             R2, [R3]; CReferences::pEmptyList
40EC94:  STR             R2, [R4]
40EC96:  STR             R4, [R3]; CReferences::pEmptyList
40EC98:  STR.W           R8, [R4,#4]
40EC9C:  MOV             R4, R5
40EC9E:  BNE             loc_40EC84
40ECA0:  CMP             R1, #0
40ECA2:  BNE             loc_40EC62
40ECA4:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x40ECAA)
40ECA6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
40ECA8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
40ECAA:  LDR.W           LR, [R0]; CPools::ms_pVehiclePool
40ECAE:  LDR.W           R1, [LR,#8]
40ECB2:  CBZ             R1, loc_40ED04
40ECB4:  LDR             R0, =(_ZN11CReferences10pEmptyListE_ptr - 0x40ECC2)
40ECB6:  MOVW            R12, #0xA2C
40ECBA:  MOV.W           R8, #0
40ECBE:  ADD             R0, PC; _ZN11CReferences10pEmptyListE_ptr
40ECC0:  LDR             R3, [R0]; CReferences::pEmptyList ...
40ECC2:  LDR.W           R0, [LR,#4]
40ECC6:  SUBS            R1, #1
40ECC8:  LDRSB           R0, [R0,R1]
40ECCA:  CMP             R0, #0
40ECCC:  BLT             loc_40ED00
40ECCE:  LDR.W           R0, [LR]
40ECD2:  MLA.W           R0, R1, R12, R0
40ECD6:  CBZ             R0, loc_40ED00
40ECD8:  MOV             R4, R0
40ECDA:  LDR.W           R5, [R4,#0x28]!
40ECDE:  CBZ             R5, loc_40ED00
40ECE0:  MOV             R6, R4
40ECE2:  MOV             R4, R5
40ECE4:  LDRD.W          R5, R2, [R4]
40ECE8:  LDR             R2, [R2]
40ECEA:  CMP             R2, R0
40ECEC:  BEQ             loc_40ECDE
40ECEE:  STR             R5, [R6]
40ECF0:  CMP             R5, #0
40ECF2:  LDR             R2, [R3]; CReferences::pEmptyList
40ECF4:  STR             R2, [R4]
40ECF6:  STR             R4, [R3]; CReferences::pEmptyList
40ECF8:  STR.W           R8, [R4,#4]
40ECFC:  MOV             R4, R5
40ECFE:  BNE             loc_40ECE4
40ED00:  CMP             R1, #0
40ED02:  BNE             loc_40ECC2
40ED04:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x40ED0A)
40ED06:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
40ED08:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
40ED0A:  LDR.W           LR, [R0]; CPools::ms_pObjectPool
40ED0E:  LDR.W           R1, [LR,#8]
40ED12:  CBZ             R1, loc_40ED64
40ED14:  LDR             R0, =(_ZN11CReferences10pEmptyListE_ptr - 0x40ED22)
40ED16:  MOV.W           R12, #0x1A4
40ED1A:  MOV.W           R8, #0
40ED1E:  ADD             R0, PC; _ZN11CReferences10pEmptyListE_ptr
40ED20:  LDR             R3, [R0]; CReferences::pEmptyList ...
40ED22:  LDR.W           R0, [LR,#4]
40ED26:  SUBS            R1, #1
40ED28:  LDRSB           R0, [R0,R1]
40ED2A:  CMP             R0, #0
40ED2C:  BLT             loc_40ED60
40ED2E:  LDR.W           R0, [LR]
40ED32:  MLA.W           R0, R1, R12, R0
40ED36:  CBZ             R0, loc_40ED60
40ED38:  MOV             R4, R0
40ED3A:  LDR.W           R5, [R4,#0x28]!
40ED3E:  CBZ             R5, loc_40ED60
40ED40:  MOV             R6, R4
40ED42:  MOV             R4, R5
40ED44:  LDRD.W          R5, R2, [R4]
40ED48:  LDR             R2, [R2]
40ED4A:  CMP             R2, R0
40ED4C:  BEQ             loc_40ED3E
40ED4E:  STR             R5, [R6]
40ED50:  CMP             R5, #0
40ED52:  LDR             R2, [R3]; CReferences::pEmptyList
40ED54:  STR             R2, [R4]
40ED56:  STR             R4, [R3]; CReferences::pEmptyList
40ED58:  STR.W           R8, [R4,#4]
40ED5C:  MOV             R4, R5
40ED5E:  BNE             loc_40ED44
40ED60:  CMP             R1, #0
40ED62:  BNE             loc_40ED22
40ED64:  POP.W           {R8}
40ED68:  POP             {R4-R7,PC}
