; =========================================================
; Game Engine Function: _ZN12CAnimManager18RemoveAnimBlockRefEi
; Address            : 0x38F8CC - 0x38F8DE
; =========================================================

38F8CC:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F8D2)
38F8CE:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F8D0:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
38F8D2:  ADD.W           R0, R1, R0,LSL#5
38F8D6:  LDRH            R1, [R0,#0x12]
38F8D8:  SUBS            R1, #1
38F8DA:  STRH            R1, [R0,#0x12]
38F8DC:  BX              LR
