; =========================================================
; Game Engine Function: _ZN9CTheZones4InitEv
; Address            : 0x42CD20 - 0x42CE8A
; =========================================================

42CD20:  LDR             R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42CD2C)
42CD22:  VMOV.I32        Q8, #0
42CD26:  MOVS            R0, #0
42CD28:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42CD2A:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
42CD2C:  ADDS            R2, R1, R0
42CD2E:  ADDS            R0, #0x20 ; ' '
42CD30:  CMP.W           R0, #0x2F80
42CD34:  VST1.64         {D16-D17}, [R2]
42CD38:  ADD.W           R2, R2, #0xF
42CD3C:  VST1.8          {D16-D17}, [R2]
42CD40:  BNE             loc_42CD2C
42CD42:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x42CD52)
42CD44:  MOV.W           R1, #0x17C
42CD48:  MOVS            R2, #0
42CD4A:  MOVW            R12, #0xF05
42CD4E:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
42CD50:  LDR             R0, [R0]; CTheZones::ZoneInfoArray ...
42CD52:  LDRH.W          R3, [R0,#0xF]
42CD56:  SUBS            R1, #1
42CD58:  STR             R2, [R0,#4]
42CD5A:  AND.W           R3, R3, #0xF000
42CD5E:  STR             R2, [R0]; CTheZones::ZoneInfoArray
42CD60:  STRB            R2, [R0,#0xA]
42CD62:  ORR.W           R3, R3, R12
42CD66:  STRH            R2, [R0,#8]
42CD68:  STRH.W          R3, [R0,#0xF]
42CD6C:  ADD.W           R0, R0, #0x11
42CD70:  BNE             loc_42CD52
42CD72:  PUSH            {R4,R5,R7,LR}
42CD74:  ADD             R7, SP, #0x10+var_8
42CD76:  LDR             R0, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42CD84)
42CD78:  VMOV.I32        Q8, #0
42CD7C:  LDR.W           LR, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x42CD8A)
42CD80:  ADD             R0, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42CD82:  LDR             R1, =(_ZN9CTheZones12ZonesVisitedE_ptr - 0x42CD90)
42CD84:  LDR             R4, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x42CD96)
42CD86:  ADD             LR, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
42CD88:  LDR             R2, [R0]; CTheZones::NavigationZoneArray ...
42CD8A:  ADR             R0, aSanAnd; "SAN_AND"
42CD8C:  ADD             R1, PC; _ZN9CTheZones12ZonesVisitedE_ptr
42CD8E:  VLD1.64         {D18-D19}, [R0@128]
42CD92:  ADD             R4, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
42CD94:  LDR.W           R0, [LR]; CTheZones::TotalNumberOfZoneInfos ...
42CD98:  MOVW            LR, #0xF448
42CD9C:  LDR             R3, [R1]; CTheZones::ZonesVisited ...
42CD9E:  LDR             R1, [R4]; CTheZones::TotalNumberOfNavigationZones ...
42CDA0:  MOVS            R4, #1
42CDA2:  STRH            R4, [R0]; CTheZones::TotalNumberOfZoneInfos
42CDA4:  MOV             R0, #0xFFFFF448
42CDAC:  STRH.W          LR, [R2,#(word_98A2E2 - 0x98A2D0)]
42CDB0:  ADD.W           R0, R0, #0x3E8
42CDB4:  STRH            R0, [R2,#(word_98A2E4 - 0x98A2D0)]
42CDB6:  MOVW            R0, #0xBB8
42CDBA:  STRH            R4, [R1]; CTheZones::TotalNumberOfNavigationZones
42CDBC:  STRH            R0, [R2,#(word_98A2E6 - 0x98A2D0)]
42CDBE:  MOVS            R1, #0
42CDC0:  STRH            R0, [R2,#(word_98A2E8 - 0x98A2D0)]
42CDC2:  MOV.W           R0, #0x7D0
42CDC6:  STRH            R0, [R2,#(word_98A2EA - 0x98A2D0)]
42CDC8:  MOV             R0, R3
42CDCA:  STR             R1, [R3,#(dword_98D2B2 - 0x98D252)]
42CDCC:  VST1.8          {D16-D17}, [R0]!
42CDD0:  VST1.8          {D16-D17}, [R0]
42CDD4:  ADD.W           R0, R3, #0x50 ; 'P'
42CDD8:  VST1.8          {D16-D17}, [R0]
42CDDC:  ADD.W           R0, R3, #0x40 ; '@'
42CDE0:  VST1.8          {D16-D17}, [R0]
42CDE4:  ADD.W           R0, R3, #0x30 ; '0'
42CDE8:  VST1.8          {D16-D17}, [R0]
42CDEC:  MOV             R0, R2
42CDEE:  STRB            R1, [R2,#(byte_98A2EF - 0x98A2D0)]
42CDF0:  VST1.64         {D18-D19}, [R0]!
42CDF4:  STRH.W          LR, [R0]
42CDF8:  ADD.W           R0, R3, #0x20 ; ' '
42CDFC:  LDR.W           R12, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x42CE0C)
42CE00:  MOVS            R3, #3
42CE02:  LDR             R5, =(_ZN9CTheZones13ZonesRevealedE_ptr - 0x42CE0E)
42CE04:  VST1.8          {D16-D17}, [R0]
42CE08:  ADD             R12, PC; _ZN9CTheZones11m_CurrLevelE_ptr
42CE0A:  ADD             R5, PC; _ZN9CTheZones13ZonesRevealedE_ptr
42CE0C:  LDR             R0, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42CE16)
42CE0E:  LDR.W           R12, [R12]; CTheZones::m_CurrLevel ...
42CE12:  ADD             R0, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42CE14:  LDR             R5, [R5]; CTheZones::ZonesRevealed ...
42CE16:  STRB            R1, [R2,#(byte_98A2EE - 0x98A2D0)]
42CE18:  LDR             R2, [R0]; CTheZones::MapZoneArray ...
42CE1A:  MOVS            R0, #0
42CE1C:  STR             R1, [R5]; CTheZones::ZonesRevealed
42CE1E:  STR.W           R1, [R12]; CTheZones::m_CurrLevel
42CE22:  ADDS            R5, R2, R0
42CE24:  ADDS            R0, #0x20 ; ' '
42CE26:  CMP.W           R0, #0x4E0
42CE2A:  VST1.64         {D16-D17}, [R5]
42CE2E:  STRB            R3, [R5,#0x1E]
42CE30:  STRH            R1, [R5,#0x1C]
42CE32:  ADD.W           R5, R5, #0xC
42CE36:  VST1.32         {D16-D17}, [R5]
42CE3A:  BNE             loc_42CE22
42CE3C:  LDR             R1, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x42CE4A)
42CE3E:  MOVS            R4, #1
42CE40:  LDR             R0, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42CE4E)
42CE42:  MOVW            R5, #0x4854
42CE46:  ADD             R1, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
42CE48:  MOVS            R2, #0
42CE4A:  ADD             R0, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42CE4C:  MOVW            R3, #0x5041
42CE50:  LDR             R1, [R1]; CTheZones::TotalNumberOfMapZones ...
42CE52:  MOVT            R5, #0x4D45
42CE56:  LDR             R0, [R0]; CTheZones::MapZoneArray ...
42CE58:  STRH            R4, [R1]; CTheZones::TotalNumberOfMapZones
42CE5A:  MOV             R1, #0xBB80BB8
42CE62:  STRB            R2, [R0,#(byte_98EC06 - 0x98EC00)]
42CE64:  STRH            R3, [R0,#(word_98EC04 - 0x98EC00)]
42CE66:  STR             R5, [R0]; CTheZones::MapZoneArray
42CE68:  STRB            R2, [R0,#(byte_98EC0E - 0x98EC00)]
42CE6A:  STRH            R3, [R0,#(word_98EC0C - 0x98EC00)]
42CE6C:  STR.W           R1, [R0,#(dword_98EC16 - 0x98EC00)]
42CE70:  ADD.W           R1, LR, #0x3E8
42CE74:  STR             R5, [R0,#(dword_98EC08 - 0x98EC00)]
42CE76:  STRH.W          LR, [R0,#(word_98EC10 - 0x98EC00)]
42CE7A:  STRH.W          LR, [R0,#(word_98EC12 - 0x98EC00)]
42CE7E:  STRH            R1, [R0,#(word_98EC14 - 0x98EC00)]
42CE80:  MOV.W           R1, #0x7D0
42CE84:  STRH            R1, [R0,#(word_98EC1A - 0x98EC00)]
42CE86:  STRB            R2, [R0,#(byte_98EC1F - 0x98EC00)]
42CE88:  POP             {R4,R5,R7,PC}
