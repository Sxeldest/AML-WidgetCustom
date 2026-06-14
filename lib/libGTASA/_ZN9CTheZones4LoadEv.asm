; =========================================================
; Game Engine Function: _ZN9CTheZones4LoadEv
; Address            : 0x48ADA4 - 0x48AE8A
; =========================================================

48ADA4:  PUSH            {R4-R7,LR}
48ADA6:  ADD             R7, SP, #0xC
48ADA8:  PUSH.W          {R11}
48ADAC:  BLX             j__ZN9CTheZones4InitEv; CTheZones::Init(void)
48ADB0:  LDR             R0, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x48ADB8)
48ADB2:  MOVS            R1, #byte_4; void *
48ADB4:  ADD             R0, PC; _ZN9CTheZones11m_CurrLevelE_ptr
48ADB6:  LDR             R0, [R0]; this
48ADB8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48ADBC:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x48ADC4)
48ADBE:  MOVS            R1, #(stderr+2); void *
48ADC0:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
48ADC2:  LDR             R4, [R0]; CTheZones::TotalNumberOfNavigationZones ...
48ADC4:  MOV             R0, R4; this
48ADC6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48ADCA:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x48ADD2)
48ADCC:  MOVS            R1, #(stderr+2); void *
48ADCE:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
48ADD0:  LDR             R0, [R0]; this
48ADD2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48ADD6:  LDR             R0, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x48ADDE)
48ADD8:  MOVS            R1, #(stderr+2); void *
48ADDA:  ADD             R0, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
48ADDC:  LDR             R0, [R0]; this
48ADDE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48ADE2:  LDRH            R0, [R4]; CTheZones::TotalNumberOfNavigationZones
48ADE4:  CBZ             R0, loc_48AE0A
48ADE6:  LDR             R0, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x48ADEE)
48ADE8:  MOVS            R4, #0
48ADEA:  ADD             R0, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
48ADEC:  LDR             R5, [R0]; CTheZones::NavigationZoneArray ...
48ADEE:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x48ADF4)
48ADF0:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
48ADF2:  LDR             R6, [R0]; CTheZones::TotalNumberOfNavigationZones ...
48ADF4:  UXTH            R0, R4
48ADF6:  MOVS            R1, #dword_20; void *
48ADF8:  ADD.W           R0, R5, R0,LSL#5; this
48ADFC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AE00:  ADDS            R4, #1
48AE02:  LDRH            R0, [R6]; CTheZones::TotalNumberOfNavigationZones
48AE04:  UXTH            R1, R4
48AE06:  CMP             R1, R0
48AE08:  BCC             loc_48ADF4
48AE0A:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x48AE10)
48AE0C:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
48AE0E:  LDR             R0, [R0]; CTheZones::TotalNumberOfZoneInfos ...
48AE10:  LDRH            R0, [R0]; CTheZones::TotalNumberOfZoneInfos
48AE12:  CBZ             R0, loc_48AE3C
48AE14:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x48AE1C)
48AE16:  MOVS            R4, #0
48AE18:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
48AE1A:  LDR             R5, [R0]; CTheZones::ZoneInfoArray ...
48AE1C:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x48AE22)
48AE1E:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
48AE20:  LDR             R6, [R0]; CTheZones::TotalNumberOfZoneInfos ...
48AE22:  UXTH            R0, R4
48AE24:  MOVS            R1, #(word_10+1); void *
48AE26:  LSLS            R0, R0, #4
48AE28:  UXTAH.W         R0, R0, R4
48AE2C:  ADD             R0, R5; this
48AE2E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AE32:  ADDS            R4, #1
48AE34:  LDRH            R0, [R6]; CTheZones::TotalNumberOfZoneInfos
48AE36:  UXTH            R1, R4
48AE38:  CMP             R1, R0
48AE3A:  BCC             loc_48AE22
48AE3C:  LDR             R0, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x48AE42)
48AE3E:  ADD             R0, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
48AE40:  LDR             R0, [R0]; CTheZones::TotalNumberOfMapZones ...
48AE42:  LDRH            R0, [R0]; CTheZones::TotalNumberOfMapZones
48AE44:  CBZ             R0, loc_48AE6A
48AE46:  LDR             R0, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x48AE4E)
48AE48:  MOVS            R4, #0
48AE4A:  ADD             R0, PC; _ZN9CTheZones12MapZoneArrayE_ptr
48AE4C:  LDR             R5, [R0]; CTheZones::MapZoneArray ...
48AE4E:  LDR             R0, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x48AE54)
48AE50:  ADD             R0, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
48AE52:  LDR             R6, [R0]; CTheZones::TotalNumberOfMapZones ...
48AE54:  UXTH            R0, R4
48AE56:  MOVS            R1, #dword_20; void *
48AE58:  ADD.W           R0, R5, R0,LSL#5; this
48AE5C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AE60:  ADDS            R4, #1
48AE62:  LDRH            R0, [R6]; CTheZones::TotalNumberOfMapZones
48AE64:  UXTH            R1, R4
48AE66:  CMP             R1, R0
48AE68:  BCC             loc_48AE54
48AE6A:  LDR             R0, =(_ZN9CTheZones12ZonesVisitedE_ptr - 0x48AE72)
48AE6C:  MOVS            R1, #dword_64; void *
48AE6E:  ADD             R0, PC; _ZN9CTheZones12ZonesVisitedE_ptr
48AE70:  LDR             R0, [R0]; this
48AE72:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AE76:  LDR             R0, =(_ZN9CTheZones13ZonesRevealedE_ptr - 0x48AE7E)
48AE78:  MOVS            R1, #byte_4; void *
48AE7A:  ADD             R0, PC; _ZN9CTheZones13ZonesRevealedE_ptr
48AE7C:  LDR             R0, [R0]; this
48AE7E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AE82:  MOVS            R0, #1
48AE84:  POP.W           {R11}
48AE88:  POP             {R4-R7,PC}
