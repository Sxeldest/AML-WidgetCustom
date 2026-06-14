; =========================================================
; Game Engine Function: _ZN8CMirrors8ShutDownEv
; Address            : 0x5BFFF0 - 0x5C002A
; =========================================================

5BFFF0:  PUSH            {R7,LR}
5BFFF2:  MOV             R7, SP
5BFFF4:  LDR             R0, =(_ZN8CMirrors7pBufferE_ptr - 0x5BFFFA)
5BFFF6:  ADD             R0, PC; _ZN8CMirrors7pBufferE_ptr
5BFFF8:  LDR             R0, [R0]; CMirrors::pBuffer ...
5BFFFA:  LDR             R0, [R0]; CMirrors::pBuffer
5BFFFC:  CBZ             R0, loc_5C000C
5BFFFE:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5C0002:  LDR             R0, =(_ZN8CMirrors7pBufferE_ptr - 0x5C000A)
5C0004:  MOVS            R1, #0
5C0006:  ADD             R0, PC; _ZN8CMirrors7pBufferE_ptr
5C0008:  LDR             R0, [R0]; CMirrors::pBuffer ...
5C000A:  STR             R1, [R0]; CMirrors::pBuffer
5C000C:  LDR             R0, =(_ZN8CMirrors8pZBufferE_ptr - 0x5C0012)
5C000E:  ADD             R0, PC; _ZN8CMirrors8pZBufferE_ptr
5C0010:  LDR             R0, [R0]; CMirrors::pZBuffer ...
5C0012:  LDR             R0, [R0]; CMirrors::pZBuffer
5C0014:  CMP             R0, #0
5C0016:  IT EQ
5C0018:  POPEQ           {R7,PC}
5C001A:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5C001E:  LDR             R0, =(_ZN8CMirrors8pZBufferE_ptr - 0x5C0026)
5C0020:  MOVS            R1, #0
5C0022:  ADD             R0, PC; _ZN8CMirrors8pZBufferE_ptr
5C0024:  LDR             R0, [R0]; CMirrors::pZBuffer ...
5C0026:  STR             R1, [R0]; CMirrors::pZBuffer
5C0028:  POP             {R7,PC}
