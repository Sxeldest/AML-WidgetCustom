; =========================================================
; Game Engine Function: _ZN11CAutomobile4LoadEv
; Address            : 0x4879F2 - 0x487A0A
; =========================================================

4879F2:  PUSH            {R4,R6,R7,LR}
4879F4:  ADD             R7, SP, #8
4879F6:  MOV             R4, R0
4879F8:  BLX             j__ZN8CVehicle4LoadEv; CVehicle::Load(void)
4879FC:  ADDW            R0, R4, #0x5B4; this
487A00:  MOVS            R1, #off_18; void *
487A02:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
487A06:  MOVS            R0, #1
487A08:  POP             {R4,R6,R7,PC}
