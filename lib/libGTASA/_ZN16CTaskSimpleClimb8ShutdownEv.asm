; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb8ShutdownEv
; Address            : 0x52E458 - 0x52E488
; =========================================================

52E458:  PUSH            {R7,LR}
52E45A:  MOV             R7, SP
52E45C:  LDR             R0, =(_ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr - 0x52E462)
52E45E:  ADD             R0, PC; _ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr
52E460:  LDR             R0, [R0]; this
52E462:  BLX             j__ZN9CColModel22RemoveCollisionVolumesEv; CColModel::RemoveCollisionVolumes(void)
52E466:  LDR             R0, =(_ZN16CTaskSimpleClimb18ms_StandupColModelE_ptr - 0x52E46C)
52E468:  ADD             R0, PC; _ZN16CTaskSimpleClimb18ms_StandupColModelE_ptr
52E46A:  LDR             R0, [R0]; this
52E46C:  BLX             j__ZN9CColModel22RemoveCollisionVolumesEv; CColModel::RemoveCollisionVolumes(void)
52E470:  LDR             R0, =(_ZN16CTaskSimpleClimb16ms_VaultColModelE_ptr - 0x52E476)
52E472:  ADD             R0, PC; _ZN16CTaskSimpleClimb16ms_VaultColModelE_ptr
52E474:  LDR             R0, [R0]; this
52E476:  BLX             j__ZN9CColModel22RemoveCollisionVolumesEv; CColModel::RemoveCollisionVolumes(void)
52E47A:  LDR             R0, =(_ZN16CTaskSimpleClimb19ms_FindEdgeColModelE_ptr - 0x52E480)
52E47C:  ADD             R0, PC; _ZN16CTaskSimpleClimb19ms_FindEdgeColModelE_ptr
52E47E:  LDR             R0, [R0]; this
52E480:  POP.W           {R7,LR}
52E484:  B.W             j_j__ZN9CColModel22RemoveCollisionVolumesEv; j_CColModel::RemoveCollisionVolumes(void)
