; =========================================================
; Game Engine Function: _ZN9CTheZones4SaveEv
; Address            : 0x48ABB4 - 0x48AD6A
; =========================================================

48ABB4:  PUSH            {R4-R7,LR}
48ABB6:  ADD             R7, SP, #0xC
48ABB8:  PUSH.W          {R8,R9,R11}
48ABBC:  MOVS            R0, #4; byte_count
48ABBE:  BLX             malloc
48ABC2:  MOV             R4, R0
48ABC4:  LDR             R0, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x48ABCC)
48ABC6:  MOVS            R1, #byte_4; void *
48ABC8:  ADD             R0, PC; _ZN9CTheZones11m_CurrLevelE_ptr
48ABCA:  LDR             R0, [R0]; CTheZones::m_CurrLevel ...
48ABCC:  LDR             R0, [R0]; CTheZones::m_CurrLevel
48ABCE:  STR             R0, [R4]
48ABD0:  MOV             R0, R4; this
48ABD2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48ABD6:  MOV             R0, R4; p
48ABD8:  BLX             free
48ABDC:  MOVS            R0, #2; byte_count
48ABDE:  BLX             malloc
48ABE2:  MOV             R4, R0
48ABE4:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x48ABEC)
48ABE6:  MOVS            R1, #(stderr+2); void *
48ABE8:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
48ABEA:  LDR             R5, [R0]; CTheZones::TotalNumberOfNavigationZones ...
48ABEC:  LDRH            R0, [R5]; CTheZones::TotalNumberOfNavigationZones
48ABEE:  STRH            R0, [R4]
48ABF0:  MOV             R0, R4; this
48ABF2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48ABF6:  MOV             R0, R4; p
48ABF8:  BLX             free
48ABFC:  MOVS            R0, #2; byte_count
48ABFE:  BLX             malloc
48AC02:  MOV             R4, R0
48AC04:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x48AC0C)
48AC06:  MOVS            R1, #(stderr+2); void *
48AC08:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
48AC0A:  LDR             R0, [R0]; CTheZones::TotalNumberOfZoneInfos ...
48AC0C:  LDRH            R0, [R0]; CTheZones::TotalNumberOfZoneInfos
48AC0E:  STRH            R0, [R4]
48AC10:  MOV             R0, R4; this
48AC12:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48AC16:  MOV             R0, R4; p
48AC18:  BLX             free
48AC1C:  MOVS            R0, #2; byte_count
48AC1E:  BLX             malloc
48AC22:  MOV             R4, R0
48AC24:  LDR             R0, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x48AC2C)
48AC26:  MOVS            R1, #(stderr+2); void *
48AC28:  ADD             R0, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
48AC2A:  LDR             R0, [R0]; CTheZones::TotalNumberOfMapZones ...
48AC2C:  LDRH            R0, [R0]; CTheZones::TotalNumberOfMapZones
48AC2E:  STRH            R0, [R4]
48AC30:  MOV             R0, R4; this
48AC32:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48AC36:  MOV             R0, R4; p
48AC38:  BLX             free
48AC3C:  LDRH            R0, [R5]; CTheZones::TotalNumberOfNavigationZones
48AC3E:  CBZ             R0, loc_48AC8A
48AC40:  LDR             R0, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x48AC48)
48AC42:  MOVS            R5, #0
48AC44:  ADD             R0, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
48AC46:  LDR.W           R8, [R0]; CTheZones::NavigationZoneArray ...
48AC4A:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x48AC50)
48AC4C:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
48AC4E:  LDR.W           R9, [R0]; CTheZones::TotalNumberOfNavigationZones ...
48AC52:  UXTH            R0, R5
48AC54:  ADD.W           R6, R8, R0,LSL#5
48AC58:  MOVS            R0, #0x20 ; ' '; byte_count
48AC5A:  BLX             malloc
48AC5E:  VLD1.8          {D16-D17}, [R6]!
48AC62:  MOV             R4, R0
48AC64:  MOVS            R1, #dword_20; void *
48AC66:  VLD1.8          {D18-D19}, [R6]
48AC6A:  VST1.8          {D16-D17}, [R0]!
48AC6E:  VST1.8          {D18-D19}, [R0]
48AC72:  MOV             R0, R4; this
48AC74:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48AC78:  MOV             R0, R4; p
48AC7A:  BLX             free
48AC7E:  ADDS            R5, #1
48AC80:  LDRH.W          R0, [R9]; CTheZones::TotalNumberOfNavigationZones
48AC84:  UXTH            R1, R5
48AC86:  CMP             R1, R0
48AC88:  BCC             loc_48AC52
48AC8A:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x48AC90)
48AC8C:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
48AC8E:  LDR             R0, [R0]; CTheZones::TotalNumberOfZoneInfos ...
48AC90:  LDRH            R0, [R0]; CTheZones::TotalNumberOfZoneInfos
48AC92:  CBZ             R0, loc_48ACE2
48AC94:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x48AC9C)
48AC96:  MOVS            R5, #0
48AC98:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
48AC9A:  LDR.W           R8, [R0]; CTheZones::ZoneInfoArray ...
48AC9E:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x48ACA4)
48ACA0:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
48ACA2:  LDR.W           R9, [R0]; CTheZones::TotalNumberOfZoneInfos ...
48ACA6:  UXTH            R0, R5
48ACA8:  LSLS            R0, R0, #4
48ACAA:  UXTAH.W         R0, R0, R5
48ACAE:  ADD.W           R6, R8, R0
48ACB2:  MOVS            R0, #0x11; byte_count
48ACB4:  BLX             malloc
48ACB8:  MOV             R4, R0
48ACBA:  VLD1.8          {D16-D17}, [R6]!
48ACBE:  MOV             R1, R4
48ACC0:  VST1.8          {D16-D17}, [R1]!
48ACC4:  LDRB            R0, [R6]
48ACC6:  STRB            R0, [R1]
48ACC8:  MOV             R0, R4; this
48ACCA:  MOVS            R1, #(word_10+1); void *
48ACCC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48ACD0:  MOV             R0, R4; p
48ACD2:  BLX             free
48ACD6:  ADDS            R5, #1
48ACD8:  LDRH.W          R0, [R9]; CTheZones::TotalNumberOfZoneInfos
48ACDC:  UXTH            R1, R5
48ACDE:  CMP             R1, R0
48ACE0:  BCC             loc_48ACA6
48ACE2:  LDR             R0, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x48ACE8)
48ACE4:  ADD             R0, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
48ACE6:  LDR             R0, [R0]; CTheZones::TotalNumberOfMapZones ...
48ACE8:  LDRH            R0, [R0]; CTheZones::TotalNumberOfMapZones
48ACEA:  CBZ             R0, loc_48AD36
48ACEC:  LDR             R0, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x48ACF4)
48ACEE:  MOVS            R5, #0
48ACF0:  ADD             R0, PC; _ZN9CTheZones12MapZoneArrayE_ptr
48ACF2:  LDR.W           R8, [R0]; CTheZones::MapZoneArray ...
48ACF6:  LDR             R0, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x48ACFC)
48ACF8:  ADD             R0, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
48ACFA:  LDR.W           R9, [R0]; CTheZones::TotalNumberOfMapZones ...
48ACFE:  UXTH            R0, R5
48AD00:  ADD.W           R6, R8, R0,LSL#5
48AD04:  MOVS            R0, #0x20 ; ' '; byte_count
48AD06:  BLX             malloc
48AD0A:  VLD1.8          {D16-D17}, [R6]!
48AD0E:  MOV             R4, R0
48AD10:  MOVS            R1, #dword_20; void *
48AD12:  VLD1.8          {D18-D19}, [R6]
48AD16:  VST1.8          {D16-D17}, [R0]!
48AD1A:  VST1.8          {D18-D19}, [R0]
48AD1E:  MOV             R0, R4; this
48AD20:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48AD24:  MOV             R0, R4; p
48AD26:  BLX             free
48AD2A:  ADDS            R5, #1
48AD2C:  LDRH.W          R0, [R9]; CTheZones::TotalNumberOfMapZones
48AD30:  UXTH            R1, R5
48AD32:  CMP             R1, R0
48AD34:  BCC             loc_48ACFE
48AD36:  LDR             R0, =(_ZN9CTheZones12ZonesVisitedE_ptr - 0x48AD3E)
48AD38:  MOVS            R1, #dword_64; void *
48AD3A:  ADD             R0, PC; _ZN9CTheZones12ZonesVisitedE_ptr
48AD3C:  LDR             R0, [R0]; this
48AD3E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48AD42:  MOVS            R0, #4; byte_count
48AD44:  BLX             malloc
48AD48:  MOV             R4, R0
48AD4A:  LDR             R0, =(_ZN9CTheZones13ZonesRevealedE_ptr - 0x48AD52)
48AD4C:  MOVS            R1, #byte_4; void *
48AD4E:  ADD             R0, PC; _ZN9CTheZones13ZonesRevealedE_ptr
48AD50:  LDR             R0, [R0]; CTheZones::ZonesRevealed ...
48AD52:  LDR             R0, [R0]; CTheZones::ZonesRevealed
48AD54:  STR             R0, [R4]
48AD56:  MOV             R0, R4; this
48AD58:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48AD5C:  MOV             R0, R4; p
48AD5E:  BLX             free
48AD62:  MOVS            R0, #1
48AD64:  POP.W           {R8,R9,R11}
48AD68:  POP             {R4-R7,PC}
