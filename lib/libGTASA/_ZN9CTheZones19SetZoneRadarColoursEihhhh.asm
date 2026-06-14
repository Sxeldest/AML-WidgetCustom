; =========================================================
; Game Engine Function: _ZN9CTheZones19SetZoneRadarColoursEihhhh
; Address            : 0x42DD50 - 0x42DD98
; =========================================================

42DD50:  PUSH            {R7,LR}
42DD52:  MOV             R7, SP
42DD54:  LDR.W           R12, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x42DD62)
42DD58:  UXTH            R0, R0
42DD5A:  LDR.W           LR, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x42DD64)
42DD5E:  ADD             R12, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
42DD60:  ADD             LR, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
42DD62:  LDR.W           R12, [R12]; CTheZones::NavigationZoneArray ...
42DD66:  ADD.W           R0, R12, R0,LSL#5
42DD6A:  LDR.W           R12, [LR]; CTheZones::ZoneInfoArray ...
42DD6E:  LDR.W           LR, [R7,#8+arg_0]
42DD72:  LDRH            R0, [R0,#0x1C]
42DD74:  ADD.W           R0, R0, R0,LSL#4
42DD78:  ADD             R0, R12
42DD7A:  STRB            R2, [R0,#0xB]
42DD7C:  STRB            R3, [R0,#0xC]
42DD7E:  MOVS            R3, #0x60 ; '`'
42DD80:  LDRH.W          R2, [R0,#0xF]
42DD84:  AND.W           R1, R3, R1,LSL#5
42DD88:  STRB.W          LR, [R0,#0xD]
42DD8C:  BIC.W           R2, R2, #0x60 ; '`'
42DD90:  ORRS            R1, R2
42DD92:  STRH.W          R1, [R0,#0xF]
42DD96:  POP             {R7,PC}
