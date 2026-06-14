; =========================================================
; Game Engine Function: _Z19AND_BillingShutdownv
; Address            : 0x26A710 - 0x26A75C
; =========================================================

26A710:  PUSH            {R4,R6,R7,LR}
26A712:  ADD             R7, SP, #8
26A714:  LDR             R0, =(items_ptr - 0x26A71A)
26A716:  ADD             R0, PC; items_ptr
26A718:  LDR             R0, [R0]; items
26A71A:  LDR             R0, [R0]; p
26A71C:  CBZ             R0, loc_26A734
26A71E:  BLX             free
26A722:  LDR             R0, =(numItems_ptr - 0x26A72C)
26A724:  MOVS            R2, #0
26A726:  LDR             R1, =(items_ptr - 0x26A72E)
26A728:  ADD             R0, PC; numItems_ptr
26A72A:  ADD             R1, PC; items_ptr
26A72C:  LDR             R0, [R0]; numItems
26A72E:  LDR             R1, [R1]; items
26A730:  STR             R2, [R0]
26A732:  STR             R2, [R1]
26A734:  LDR             R0, =(billingMutex_ptr - 0x26A73A)
26A736:  ADD             R0, PC; billingMutex_ptr
26A738:  LDR             R0, [R0]; billingMutex
26A73A:  LDR             R4, [R0]
26A73C:  CBZ             R4, loc_26A750
26A73E:  MOV             R0, R4; mutex
26A740:  BLX             pthread_mutex_destroy
26A744:  ADDS            R0, R4, #4; attr
26A746:  BLX             pthread_mutexattr_destroy
26A74A:  MOV             R0, R4; void *
26A74C:  BLX             _ZdlPv; operator delete(void *)
26A750:  LDR             R0, =(billingMutex_ptr - 0x26A758)
26A752:  MOVS            R1, #0
26A754:  ADD             R0, PC; billingMutex_ptr
26A756:  LDR             R0, [R0]; billingMutex
26A758:  STR             R1, [R0]
26A75A:  POP             {R4,R6,R7,PC}
