; =========================================================
; Game Engine Function: _ZN12CAnimManager31RemoveAnimBlockRefWithoutDeleteEi
; Address            : 0x38F8E4 - 0x38F8F6
; =========================================================

38F8E4:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x38F8EA)
38F8E6:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
38F8E8:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
38F8EA:  ADD.W           R0, R1, R0,LSL#5
38F8EE:  LDRH            R1, [R0,#0x12]
38F8F0:  SUBS            R1, #1
38F8F2:  STRH            R1, [R0,#0x12]
38F8F4:  BX              LR
