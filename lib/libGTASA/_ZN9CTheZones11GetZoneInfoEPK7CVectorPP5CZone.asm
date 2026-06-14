; =========================================================
; Game Engine Function: _ZN9CTheZones11GetZoneInfoEPK7CVectorPP5CZone
; Address            : 0x42DD00 - 0x42DD3E
; =========================================================

42DD00:  PUSH            {R4,R6,R7,LR}
42DD02:  ADD             R7, SP, #8
42DD04:  MOV             R4, R1
42DD06:  MOVS            R1, #0; CVector *
42DD08:  BLX             j__ZN9CTheZones27FindSmallestZoneForPositionEPK7CVectorh; CTheZones::FindSmallestZoneForPosition(CVector const*,uchar)
42DD0C:  CBZ             R0, loc_42DD24
42DD0E:  LDR             R1, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x42DD1A)
42DD10:  CMP             R4, #0
42DD12:  IT NE
42DD14:  STRNE           R0, [R4]
42DD16:  ADD             R1, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
42DD18:  LDRH            R0, [R0,#0x1C]
42DD1A:  LDR             R1, [R1]; CTheZones::ZoneInfoArray ...
42DD1C:  ADD.W           R0, R0, R0,LSL#4
42DD20:  ADD             R0, R1
42DD22:  POP             {R4,R6,R7,PC}
42DD24:  CBZ             R4, loc_42DD36
42DD26:  LDR             R0, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42DD2E)
42DD28:  LDR             R1, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x42DD30)
42DD2A:  ADD             R0, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42DD2C:  ADD             R1, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
42DD2E:  LDR             R2, [R0]; CTheZones::NavigationZoneArray ...
42DD30:  LDR             R0, [R1]; CTheZones::ZoneInfoArray ...
42DD32:  STR             R2, [R4]
42DD34:  POP             {R4,R6,R7,PC}
42DD36:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x42DD3C)
42DD38:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
42DD3A:  LDR             R0, [R0]; CTheZones::ZoneInfoArray ...
42DD3C:  POP             {R4,R6,R7,PC}
