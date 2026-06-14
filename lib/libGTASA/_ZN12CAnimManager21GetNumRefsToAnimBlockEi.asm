; =========================================================
; Game Engine Function: _ZN12CAnimManager21GetNumRefsToAnimBlockEi
; Address            : 0x38F8FC - 0x38F90C
; =========================================================

38F8FC:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F902)
38F8FE:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F900:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
38F902:  ADD.W           R0, R1, R0,LSL#5
38F906:  LDRSH.W         R0, [R0,#0x12]
38F90A:  BX              LR
