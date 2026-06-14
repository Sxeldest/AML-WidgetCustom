; =========================================================
; Game Engine Function: _ZN9CRenderer22AddToLodDontRenderListEP7CEntityf
; Address            : 0x412330 - 0x412344
; =========================================================

412330:  LDR             R2, =(_ZN9CRenderer21ms_pLodDontRenderListE_ptr - 0x412336)
412332:  ADD             R2, PC; _ZN9CRenderer21ms_pLodDontRenderListE_ptr
412334:  LDR             R2, [R2]; CRenderer::ms_pLodDontRenderList ...
412336:  LDR             R3, [R2]; CRenderer::ms_pLodDontRenderList
412338:  STR             R0, [R3]
41233A:  LDR             R0, [R2]; CRenderer::ms_pLodDontRenderList
41233C:  STR             R1, [R0,#4]
41233E:  ADDS            R0, #8
412340:  STR             R0, [R2]; CRenderer::ms_pLodDontRenderList
412342:  BX              LR
