; =========================================================
; Game Engine Function: _Z17AND_OnStateLoaded25LIB_CloudLoadResultStatusPhi
; Address            : 0x26E704 - 0x26E75C
; =========================================================

26E704:  PUSH            {R4,R5,R7,LR}
26E706:  ADD             R7, SP, #8
26E708:  MOV             R4, R2
26E70A:  MOV             R5, R1
26E70C:  CMP             R0, #0
26E70E:  IT NE
26E710:  POPNE           {R4,R5,R7,PC}
26E712:  LDR             R0, =(gameServiceMutex_ptr - 0x26E718)
26E714:  ADD             R0, PC; gameServiceMutex_ptr
26E716:  LDR             R0, [R0]; gameServiceMutex
26E718:  LDR             R0, [R0]; mutex
26E71A:  BLX             pthread_mutex_lock
26E71E:  LDR             R0, =(byte_6D7130 - 0x26E724)
26E720:  ADD             R0, PC; byte_6D7130
26E722:  LDRB            R0, [R0]
26E724:  CMP             R0, #1
26E726:  BNE             loc_26E736
26E728:  LDR             R0, =(dword_6D7134 - 0x26E72E)
26E72A:  ADD             R0, PC; dword_6D7134
26E72C:  LDR             R0, [R0,#(dword_6D713C - 0x6D7134)]; void *
26E72E:  CMP             R0, #0
26E730:  IT NE
26E732:  BLXNE           _ZdaPv; operator delete[](void *)
26E736:  LDR             R1, =(gameServiceMutex_ptr - 0x26E740)
26E738:  MOVS            R3, #0
26E73A:  LDR             R0, =(dword_6D7134 - 0x26E744)
26E73C:  ADD             R1, PC; gameServiceMutex_ptr
26E73E:  LDR             R2, =(byte_6D7130 - 0x26E748)
26E740:  ADD             R0, PC; dword_6D7134
26E742:  LDR             R1, [R1]; gameServiceMutex
26E744:  ADD             R2, PC; byte_6D7130
26E746:  STRD.W          R3, R3, [R0]
26E74A:  STRD.W          R5, R4, [R0,#(dword_6D713C - 0x6D7134)]
26E74E:  LDR             R0, [R1]; mutex
26E750:  MOVS            R1, #1
26E752:  STRB            R1, [R2]
26E754:  POP.W           {R4,R5,R7,LR}
26E758:  B.W             j_pthread_mutex_unlock
