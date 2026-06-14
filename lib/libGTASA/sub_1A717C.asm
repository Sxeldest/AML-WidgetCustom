; =========================================================
; Game Engine Function: sub_1A717C
; Address            : 0x1A717C - 0x1A71BA
; =========================================================

1A717C:  PUSH            {R4,R5,R7,LR}
1A717E:  ADD             R7, SP, #8
1A7180:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x1A718C)
1A7182:  MOVS            R5, #0
1A7184:  LDR             R2, =(_ZN6SArrayIPK5CTaskED2Ev_ptr - 0x1A718E)
1A7186:  LDR             R4, =(unk_67A000 - 0x1A7192)
1A7188:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
1A718A:  ADD             R2, PC; _ZN6SArrayIPK5CTaskED2Ev_ptr
1A718C:  LDR             R1, [R0]; obj
1A718E:  ADD             R4, PC; unk_67A000
1A7190:  LDR             R0, [R2]; SArray<CTask const*>::~SArray() ; lpfunc
1A7192:  MOV             R2, R4; lpdso_handle
1A7194:  STRD.W          R5, R5, [R1]; CPedAttractor::ms_tasks
1A7198:  STR             R5, [R1,#(dword_9EE2C4 - 0x9EE2BC)]
1A719A:  BLX             __cxa_atexit
1A719E:  LDR             R0, =(_ZN20CPedShelterAttractor16ms_displacementsE_ptr - 0x1A71A6)
1A71A0:  LDR             R2, =(_ZN6SArrayI7CVectorED2Ev_ptr - 0x1A71A8)
1A71A2:  ADD             R0, PC; _ZN20CPedShelterAttractor16ms_displacementsE_ptr
1A71A4:  ADD             R2, PC; _ZN6SArrayI7CVectorED2Ev_ptr
1A71A6:  LDR             R1, [R0]; obj
1A71A8:  LDR             R0, [R2]; SArray<CVector>::~SArray() ; lpfunc
1A71AA:  MOV             R2, R4; lpdso_handle
1A71AC:  STRD.W          R5, R5, [R1]; CPedShelterAttractor::ms_displacements
1A71B0:  STR             R5, [R1,#(dword_9EE2D0 - 0x9EE2C8)]
1A71B2:  POP.W           {R4,R5,R7,LR}
1A71B6:  B.W             j___cxa_atexit
