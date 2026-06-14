; =========================================================
; Game Engine Function: _ZN4CBmxD2Ev
; Address            : 0x568AC0 - 0x568AE2
; =========================================================

568AC0:  PUSH            {R4,R6,R7,LR}
568AC2:  ADD             R7, SP, #8
568AC4:  MOV             R4, R0
568AC6:  LDR             R0, =(_ZTV4CBmx_ptr - 0x568ACC)
568AC8:  ADD             R0, PC; _ZTV4CBmx_ptr
568ACA:  LDR             R0, [R0]; `vtable for'CBmx ...
568ACC:  ADDS            R0, #8
568ACE:  STR             R0, [R4]
568AD0:  ADD.W           R0, R4, #0x13C; this
568AD4:  BLX             j__ZN21CAEVehicleAudioEntity9TerminateEv; CAEVehicleAudioEntity::Terminate(void)
568AD8:  MOV             R0, R4; this
568ADA:  POP.W           {R4,R6,R7,LR}
568ADE:  B.W             sub_19BF34
