; =========================================================
; Game Engine Function: _ZN17InteriorManager_c14AreAnimsLoadedEi
; Address            : 0x44C6BC - 0x44C6E2
; =========================================================

44C6BC:  CMP             R1, #2
44C6BE:  BHI             loc_44C6D4
44C6C0:  PUSH            {R7,LR}
44C6C2:  MOV             R7, SP
44C6C4:  LDR             R0, =(off_667DA8 - 0x44C6CA); "int_house" ...
44C6C6:  ADD             R0, PC; off_667DA8
44C6C8:  LDR.W           R0, [R0,R1,LSL#2]; this
44C6CC:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
44C6D0:  POP.W           {R7,LR}
44C6D4:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x44C6DA)
44C6D6:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
44C6D8:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
44C6DA:  ADD.W           R0, R1, R0,LSL#5
44C6DE:  LDRB            R0, [R0,#0x10]
44C6E0:  BX              LR
