; =========================================================
; Game Engine Function: _ZN13CCarEnterExit18CarHasOpenableDoorERK8CVehicleiRK4CPed
; Address            : 0x508746 - 0x508758
; =========================================================

508746:  PUSH            {R7,LR}
508748:  MOV             R7, SP
50874A:  MOV             R1, R2; CPed *
50874C:  BLX             j__ZNK8CVehicle15CanPedOpenLocksEPK4CPed; CVehicle::CanPedOpenLocks(CPed const*)
508750:  CMP             R0, #0
508752:  IT NE
508754:  MOVNE           R0, #1
508756:  POP             {R7,PC}
