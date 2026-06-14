; =========================================================
; Game Engine Function: _ZN11CHudColoursC2Ev
; Address            : 0x43AA00 - 0x43AA8E
; =========================================================

43AA00:  ADR             R1, dword_43AA90
43AA02:  MOVS            R2, #0x64 ; 'd'
43AA04:  VLD1.64         {D16-D17}, [R1@128]
43AA08:  ADR             R1, loc_43AAA0
43AA0A:  VLD1.64         {D18-D19}, [R1@128]
43AA0E:  MOV             R1, R0
43AA10:  VST1.8          {D16-D17}, [R1]!
43AA14:  STRB            R2, [R1]
43AA16:  ADD.W           R1, R0, #0x25 ; '%'
43AA1A:  MOV.W           R2, #0xFFFFFFFF
43AA1E:  VST1.8          {D18-D19}, [R1]
43AA22:  MOVW            R1, #0xCC9C
43AA26:  STRH.W          R1, [R0,#0x11]
43AA2A:  MOVS            R1, #0xFF
43AA2C:  STRB            R1, [R0,#0x17]
43AA2E:  STR.W           R2, [R0,#0x13]
43AA32:  MOVS            R2, #0
43AA34:  STRB            R2, [R0,#0x18]
43AA36:  STRB            R1, [R0,#0x1B]
43AA38:  STRH.W          R2, [R0,#0x19]
43AA3C:  MOVS            R2, #0x90
43AA3E:  STRB            R2, [R0,#0x1C]
43AA40:  MOVW            R2, #0x1062
43AA44:  STRB            R1, [R0,#0x1F]
43AA46:  STRH.W          R2, [R0,#0x1D]
43AA4A:  MOVS            R2, #0xA8
43AA4C:  STRB.W          R2, [R0,#0x20]
43AA50:  MOVW            R2, #0xFC6E
43AA54:  STRB.W          R1, [R0,#0x23]
43AA58:  STRH.W          R2, [R0,#0x21]
43AA5C:  MOVS            R2, #0x96
43AA5E:  STRB.W          R2, [R0,#0x24]
43AA62:  MOVW            R2, #0x6B5A
43AA66:  STRB.W          R1, [R0,#0x37]
43AA6A:  STRH.W          R2, [R0,#0x35]
43AA6E:  MOVW            R2, #0xC819
43AA72:  STRB.W          R1, [R0,#0x3B]
43AA76:  STRH.W          R2, [R0,#0x39]
43AA7A:  MOVS            R2, #0x14
43AA7C:  STRB.W          R2, [R0,#0x38]
43AA80:  STRB.W          R1, [R0,#0x3F]
43AA84:  STRH.W          R1, [R0,#0x3D]
43AA88:  STRB.W          R1, [R0,#0x3C]
43AA8C:  BX              LR
