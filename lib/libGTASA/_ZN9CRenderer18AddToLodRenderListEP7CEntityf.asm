; =========================================================
; Game Engine Function: _ZN9CRenderer18AddToLodRenderListEP7CEntityf
; Address            : 0x4116D4 - 0x4116E8
; =========================================================

4116D4:  LDR             R2, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x4116DA)
4116D6:  ADD             R2, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
4116D8:  LDR             R2, [R2]; CRenderer::ms_pLodRenderList ...
4116DA:  LDR             R3, [R2]; CRenderer::ms_pLodRenderList
4116DC:  STR             R0, [R3]
4116DE:  LDR             R0, [R2]; CRenderer::ms_pLodRenderList
4116E0:  STR             R1, [R0,#4]
4116E2:  ADDS            R0, #8
4116E4:  STR             R0, [R2]; CRenderer::ms_pLodRenderList
4116E6:  BX              LR
