; =========================================================
; Game Engine Function: _ZN37CTaskSimpleCarWaitForDoorNotToBeInUse10ProcessPedEP4CPed
; Address            : 0x502358 - 0x502376
; =========================================================

502358:  MOV             R2, R0
50235A:  LDR             R0, [R2,#8]
50235C:  CMP             R0, #0
50235E:  ITT EQ
502360:  MOVEQ           R0, #(stderr+1); this
502362:  BXEQ            LR
502364:  PUSH            {R7,LR}
502366:  MOV             R7, SP
502368:  LDRD.W          R1, R2, [R2,#0xC]; int
50236C:  BLX             j__ZN13CCarEnterExit14IsCarDoorInUseERK8CVehicleii; CCarEnterExit::IsCarDoorInUse(CVehicle const&,int,int)
502370:  EOR.W           R0, R0, #1
502374:  POP             {R7,PC}
