; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarWaitToSlowDown14SetPedPositionEP4CPed
; Address            : 0x502210 - 0x502226
; =========================================================

502210:  LDR             R0, [R0,#8]
502212:  CBZ             R0, loc_502222
502214:  PUSH            {R7,LR}
502216:  MOV             R7, SP
502218:  MOV             R0, R1; this
50221A:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
50221E:  POP.W           {R7,LR}
502222:  MOVS            R0, #1
502224:  BX              LR
