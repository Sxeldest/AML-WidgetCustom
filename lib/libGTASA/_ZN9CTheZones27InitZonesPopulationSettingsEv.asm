; =========================================================
; Game Engine Function: _ZN9CTheZones27InitZonesPopulationSettingsEv
; Address            : 0x42CECC - 0x42CEFE
; =========================================================

42CECC:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x42CEDC)
42CECE:  MOV.W           R1, #0x17C
42CED2:  MOVS            R2, #0
42CED4:  MOVW            R12, #0xF05
42CED8:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
42CEDA:  LDR             R0, [R0]; CTheZones::ZoneInfoArray ...
42CEDC:  LDRH.W          R3, [R0,#0xF]
42CEE0:  SUBS            R1, #1
42CEE2:  STR             R2, [R0,#4]
42CEE4:  AND.W           R3, R3, #0xF000
42CEE8:  STR             R2, [R0]; CTheZones::ZoneInfoArray
42CEEA:  STRB            R2, [R0,#0xA]
42CEEC:  ORR.W           R3, R3, R12
42CEF0:  STRH            R2, [R0,#8]
42CEF2:  STRH.W          R3, [R0,#0xF]
42CEF6:  ADD.W           R0, R0, #0x11
42CEFA:  BNE             loc_42CEDC
42CEFC:  BX              LR
