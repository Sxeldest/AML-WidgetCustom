; =========================================================
; Game Engine Function: _ZN11CAutomobile4SaveEv
; Address            : 0x4879AC - 0x4879F2
; =========================================================

4879AC:  PUSH            {R4-R7,LR}
4879AE:  ADD             R7, SP, #0xC
4879B0:  PUSH.W          {R11}
4879B4:  MOV             R4, R0
4879B6:  BLX             j__ZN8CVehicle4SaveEv; CVehicle::Save(void)
4879BA:  MOVS            R0, #0x18; byte_count
4879BC:  ADDW            R6, R4, #0x5B4
4879C0:  BLX             malloc
4879C4:  MOV             R5, R0
4879C6:  ADDW            R0, R4, #0x5C4
4879CA:  VLD1.8          {D16-D17}, [R6]
4879CE:  MOVS            R1, #off_18; void *
4879D0:  VLD1.8          {D18}, [R0]
4879D4:  MOV             R0, R5
4879D6:  VST1.8          {D16-D17}, [R0]!
4879DA:  VST1.8          {D18}, [R0]
4879DE:  MOV             R0, R5; this
4879E0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4879E4:  MOV             R0, R5; p
4879E6:  BLX             free
4879EA:  MOVS            R0, #1
4879EC:  POP.W           {R11}
4879F0:  POP             {R4-R7,PC}
