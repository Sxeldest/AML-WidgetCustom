; =========================================================
; Game Engine Function: _ZN13CEventHandler29ComputeVehicleToStealResponseEP6CEventP5CTaskS3_
; Address            : 0x380CC0 - 0x380CE8
; =========================================================

380CC0:  PUSH            {R4,R5,R7,LR}
380CC2:  ADD             R7, SP, #8
380CC4:  MOV             R4, R0
380CC6:  LDR             R0, [R4]
380CC8:  LDRB.W          R0, [R0,#0x485]
380CCC:  LSLS            R0, R0, #0x1F
380CCE:  BNE             locret_380CE6
380CD0:  LDR             R5, [R1,#0xC]
380CD2:  CMP             R5, #0
380CD4:  IT EQ
380CD6:  POPEQ           {R4,R5,R7,PC}
380CD8:  MOVS            R0, #dword_20; this
380CDA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380CDE:  MOV             R1, R5; CVehicle *
380CE0:  BLX             j__ZN20CTaskComplexStealCarC2EP8CVehicle; CTaskComplexStealCar::CTaskComplexStealCar(CVehicle *)
380CE4:  STR             R0, [R4,#0x24]
380CE6:  POP             {R4,R5,R7,PC}
