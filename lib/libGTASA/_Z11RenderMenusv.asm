; =========================================================
; Game Engine Function: _Z11RenderMenusv
; Address            : 0x3F6514 - 0x3F6546
; =========================================================

3F6514:  PUSH            {R7,LR}
3F6516:  MOV             R7, SP
3F6518:  BLX             j__Z21emu_IsAltRenderTargetv; emu_IsAltRenderTarget(void)
3F651C:  CMP             R0, #0
3F651E:  IT NE
3F6520:  BLXNE           j__Z24emu_FlushAltRenderTargetv; emu_FlushAltRenderTarget(void)
3F6524:  LDR             R0, =(gMobileMenu_ptr - 0x3F652A)
3F6526:  ADD             R0, PC; gMobileMenu_ptr
3F6528:  LDR             R0, [R0]; gMobileMenu
3F652A:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
3F652C:  CMP             R1, #0
3F652E:  ITT EQ
3F6530:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
3F6532:  CMPEQ           R0, #0
3F6534:  BNE             loc_3F6538
3F6536:  POP             {R7,PC}
3F6538:  LDR             R0, =(gMobileMenu_ptr - 0x3F653E)
3F653A:  ADD             R0, PC; gMobileMenu_ptr
3F653C:  LDR             R0, [R0]; gMobileMenu ; this
3F653E:  POP.W           {R7,LR}
3F6542:  B.W             sub_19BF80
