; =========================================================
; Game Engine Function: _ZN37CTaskSimpleCarWaitForDoorNotToBeInUse14SetPedPositionEP4CPed
; Address            : 0x502376 - 0x50239C
; =========================================================

502376:  LDR             R0, [R0,#8]
502378:  CBZ             R0, loc_502398
50237A:  LDR.W           R2, [R1,#0x590]
50237E:  CMP             R0, R2
502380:  BNE             loc_502398
502382:  LDRB.W          R0, [R1,#0x485]
502386:  LSLS            R0, R0, #0x1F
502388:  BEQ             loc_502398
50238A:  PUSH            {R7,LR}
50238C:  MOV             R7, SP
50238E:  MOV             R0, R1; this
502390:  BLX             j__ZN4CPed19SetPedPositionInCarEv; CPed::SetPedPositionInCar(void)
502394:  POP.W           {R7,LR}
502398:  MOVS            R0, #1
50239A:  BX              LR
