; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c20ContainsInteriorTypeEi
; Address            : 0x44A068 - 0x44A0D0
; =========================================================

44A068:  LDR             R2, [R0,#0x10]
44A06A:  CBZ             R2, loc_44A074
44A06C:  LDR             R2, [R2,#0x14]
44A06E:  LDRB            R2, [R2]
44A070:  CMP             R2, R1
44A072:  BEQ             loc_44A0C8
44A074:  LDR             R2, [R0,#0x14]
44A076:  CBZ             R2, loc_44A080
44A078:  LDR             R2, [R2,#0x14]
44A07A:  LDRB            R2, [R2]
44A07C:  CMP             R2, R1
44A07E:  BEQ             loc_44A0C8
44A080:  LDR             R2, [R0,#0x18]
44A082:  CBZ             R2, loc_44A08C
44A084:  LDR             R2, [R2,#0x14]
44A086:  LDRB            R2, [R2]
44A088:  CMP             R2, R1
44A08A:  BEQ             loc_44A0C8
44A08C:  LDR             R2, [R0,#0x1C]
44A08E:  CBZ             R2, loc_44A098
44A090:  LDR             R2, [R2,#0x14]
44A092:  LDRB            R2, [R2]
44A094:  CMP             R2, R1
44A096:  BEQ             loc_44A0C8
44A098:  LDR             R2, [R0,#0x20]
44A09A:  CBZ             R2, loc_44A0A4
44A09C:  LDR             R2, [R2,#0x14]
44A09E:  LDRB            R2, [R2]
44A0A0:  CMP             R2, R1
44A0A2:  BEQ             loc_44A0C8
44A0A4:  LDR             R2, [R0,#0x24]
44A0A6:  CBZ             R2, loc_44A0B0
44A0A8:  LDR             R2, [R2,#0x14]
44A0AA:  LDRB            R2, [R2]
44A0AC:  CMP             R2, R1
44A0AE:  BEQ             loc_44A0C8
44A0B0:  LDR             R2, [R0,#0x28]
44A0B2:  CBZ             R2, loc_44A0BC
44A0B4:  LDR             R2, [R2,#0x14]
44A0B6:  LDRB            R2, [R2]
44A0B8:  CMP             R2, R1
44A0BA:  BEQ             loc_44A0C8
44A0BC:  LDR             R0, [R0,#0x2C]
44A0BE:  CBZ             R0, loc_44A0CC
44A0C0:  LDR             R0, [R0,#0x14]
44A0C2:  LDRB            R0, [R0]
44A0C4:  CMP             R0, R1
44A0C6:  BNE             loc_44A0CC
44A0C8:  MOVS            R0, #1
44A0CA:  BX              LR
44A0CC:  MOVS            R0, #0
44A0CE:  BX              LR
