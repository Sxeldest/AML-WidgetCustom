; =========================================================
; Game Engine Function: _ZN12COctTreeBase11FillPaletteEPh
; Address            : 0x45CDF4 - 0x45CE14
; =========================================================

45CDF4:  LDR             R2, =(_ZN8COctTree8ms_levelE_ptr - 0x45CDFA)
45CDF6:  ADD             R2, PC; _ZN8COctTree8ms_levelE_ptr
45CDF8:  LDR             R3, [R2]; COctTree::ms_level ...
45CDFA:  MOVS            R2, #0
45CDFC:  STR             R2, [R3]; COctTree::ms_level
45CDFE:  LDR             R3, [R0,#0x2C]
45CE00:  CMP             R3, #0
45CE02:  IT EQ
45CE04:  BEQ             _ZN8COctTree11FillPaletteEPh; COctTree::FillPalette(uchar *)
45CE06:  LDR             R3, =(_ZN8COctTree8ms_levelE_ptr - 0x45CE10)
45CE08:  STR             R2, [R1]
45CE0A:  MOVS            R2, #1
45CE0C:  ADD             R3, PC; _ZN8COctTree8ms_levelE_ptr
45CE0E:  LDR             R3, [R3]; COctTree::ms_level ...
45CE10:  STR             R2, [R3]; COctTree::ms_level
45CE12:  B               _ZN8COctTree11FillPaletteEPh; COctTree::FillPalette(uchar *)
