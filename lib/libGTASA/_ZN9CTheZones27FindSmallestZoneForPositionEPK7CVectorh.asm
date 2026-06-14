; =========================================================
; Game Engine Function: _ZN9CTheZones27FindSmallestZoneForPositionEPK7CVectorh
; Address            : 0x42DBF0 - 0x42DCF4
; =========================================================

42DBF0:  PUSH            {R4-R7,LR}
42DBF2:  ADD             R7, SP, #0xC
42DBF4:  PUSH.W          {R8-R10}
42DBF8:  LDR             R2, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x42DBFE)
42DBFA:  ADD             R2, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
42DBFC:  LDR             R2, [R2]; CTheZones::TotalNumberOfNavigationZones ...
42DBFE:  LDRH.W          R10, [R2]; CTheZones::TotalNumberOfNavigationZones
42DC02:  CMP.W           R10, #2
42DC06:  BCC             loc_42DCE4
42DC08:  LDR             R2, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42DC0E)
42DC0A:  ADD             R2, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42DC0C:  LDR.W           LR, [R2]; CTheZones::NavigationZoneArray ...
42DC10:  LDRSH.W         R2, [LR,#(word_98A2E0 - 0x98A2D0)]
42DC14:  LDRSH.W         R5, [LR,#(word_98A2E6 - 0x98A2D0)]
42DC18:  LDRSH.W         R4, [LR,#(word_98A2E8 - 0x98A2D0)]
42DC1C:  SUBS            R2, R5, R2
42DC1E:  LDRSH.W         R6, [LR,#(word_98A2E2 - 0x98A2D0)]
42DC22:  ADD             R2, R4
42DC24:  MOVS            R4, #1
42DC26:  SUB.W           R12, R2, R6
42DC2A:  ADD.W           R2, LR, #0x3E ; '>'
42DC2E:  CMP             R1, #0
42DC30:  ITT NE
42DC32:  LDRBNE          R5, [R2]
42DC34:  CMPNE           R5, #0
42DC36:  BNE             loc_42DCDA
42DC38:  LDRSH.W         R5, [R2,#-0xE]
42DC3C:  VMOV            S0, R5
42DC40:  VCVT.F32.S32    S2, S0
42DC44:  VLDR            S0, [R0]
42DC48:  VCMPE.F32       S0, S2
42DC4C:  VMRS            APSR_nzcv, FPSCR
42DC50:  BLT             loc_42DCDA
42DC52:  LDRSH.W         R6, [R2,#-8]
42DC56:  VMOV            S2, R6
42DC5A:  VCVT.F32.S32    S2, S2
42DC5E:  VCMPE.F32       S0, S2
42DC62:  VMRS            APSR_nzcv, FPSCR
42DC66:  BGT             loc_42DCDA
42DC68:  LDRSH.W         R8, [R2,#-0xC]
42DC6C:  VMOV            S0, R8
42DC70:  VCVT.F32.S32    S2, S0
42DC74:  VLDR            S0, [R0,#4]
42DC78:  VCMPE.F32       S0, S2
42DC7C:  VMRS            APSR_nzcv, FPSCR
42DC80:  BLT             loc_42DCDA
42DC82:  LDRSH.W         R9, [R2,#-6]
42DC86:  VMOV            S2, R9
42DC8A:  VCVT.F32.S32    S2, S2
42DC8E:  VCMPE.F32       S0, S2
42DC92:  VMRS            APSR_nzcv, FPSCR
42DC96:  BGT             loc_42DCDA
42DC98:  LDRSH.W         R3, [R2,#-0xA]
42DC9C:  VMOV            S0, R3
42DCA0:  VCVT.F32.S32    S2, S0
42DCA4:  VLDR            S0, [R0,#8]
42DCA8:  VCMPE.F32       S0, S2
42DCAC:  VMRS            APSR_nzcv, FPSCR
42DCB0:  BLT             loc_42DCDA
42DCB2:  LDRSH.W         R3, [R2,#-4]
42DCB6:  VMOV            S2, R3
42DCBA:  VCVT.F32.S32    S2, S2
42DCBE:  VCMPE.F32       S0, S2
42DCC2:  VMRS            APSR_nzcv, FPSCR
42DCC6:  BGT             loc_42DCDA
42DCC8:  SUBS            R3, R6, R5
42DCCA:  SUB.W           R5, R9, R8
42DCCE:  ADD             R3, R5
42DCD0:  CMP             R3, R12
42DCD2:  ITT CC
42DCD4:  SUBCC.W         LR, R2, #0x1E
42DCD8:  MOVCC           R12, R3
42DCDA:  ADDS            R4, #1
42DCDC:  ADDS            R2, #0x20 ; ' '
42DCDE:  CMP             R4, R10
42DCE0:  BCC             loc_42DC2E
42DCE2:  B               loc_42DCEC
42DCE4:  LDR             R0, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42DCEA)
42DCE6:  ADD             R0, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42DCE8:  LDR.W           LR, [R0]; CTheZones::NavigationZoneArray ...
42DCEC:  MOV             R0, LR
42DCEE:  POP.W           {R8-R10}
42DCF2:  POP             {R4-R7,PC}
