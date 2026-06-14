; =========================================================
; Game Engine Function: sub_1A2710
; Address            : 0x1A2710 - 0x1A274E
; =========================================================

1A2710:  PUSH            {R4,R5,R7,LR}
1A2712:  ADD             R7, SP, #8
1A2714:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x1A2720)
1A2716:  MOVS            R5, #0
1A2718:  LDR             R2, =(_ZN7OSArrayIP7OALBaseED2Ev_ptr - 0x1A2722)
1A271A:  LDR             R4, =(unk_67A000 - 0x1A2726)
1A271C:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
1A271E:  ADD             R2, PC; _ZN7OSArrayIP7OALBaseED2Ev_ptr
1A2720:  LDR             R1, [R0]; obj
1A2722:  ADD             R4, PC; unk_67A000
1A2724:  LDR             R0, [R2]; OSArray<OALBase *>::~OSArray() ; lpfunc
1A2726:  MOV             R2, R4; lpdso_handle
1A2728:  STRD.W          R5, R5, [R1]; OALBase::trashCan
1A272C:  STR             R5, [R1,#(dword_6DFD64 - 0x6DFD5C)]
1A272E:  BLX             __cxa_atexit
1A2732:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x1A273A)
1A2734:  LDR             R2, =(_ZN7OSArrayIP9OALSourceED2Ev_ptr - 0x1A273C)
1A2736:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
1A2738:  ADD             R2, PC; _ZN7OSArrayIP9OALSourceED2Ev_ptr
1A273A:  LDR             R1, [R0]; obj
1A273C:  LDR             R0, [R2]; OSArray<OALSource *>::~OSArray() ; lpfunc
1A273E:  MOV             R2, R4; lpdso_handle
1A2740:  STRD.W          R5, R5, [R1]; OALSource::activeSources
1A2744:  STR             R5, [R1,#(dword_6DFD78 - 0x6DFD70)]
1A2746:  POP.W           {R4,R5,R7,LR}
1A274A:  B.W             j___cxa_atexit
