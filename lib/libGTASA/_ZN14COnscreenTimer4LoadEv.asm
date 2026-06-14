; =========================================================
; Game Engine Function: _ZN14COnscreenTimer4LoadEv
; Address            : 0x48A700 - 0x48A71C
; =========================================================

48A700:  PUSH            {R4,R6,R7,LR}
48A702:  ADD             R7, SP, #8
48A704:  MOVS            R1, #dword_40; void *
48A706:  MOV             R4, R0
48A708:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48A70C:  ADD.W           R0, R4, #0x40 ; '@'; this
48A710:  MOV.W           R1, #(elf_hash_bucket+0x14); void *
48A714:  POP.W           {R4,R6,R7,LR}
48A718:  B.W             sub_193B88
