; =========================================================
; Game Engine Function: sub_F8454
; Address            : 0xF8454 - 0xF847A
; =========================================================

F8454:  PUSH            {R4,R5,R7,LR}
F8456:  ADD             R7, SP, #8
F8458:  MOV             R5, R0
F845A:  MOVS            R0, #8; thrown_size
F845C:  BLX             j___cxa_allocate_exception
F8460:  MOV             R4, R0
F8462:  MOV             R1, R5
F8464:  BL              sub_FBF00
F8468:  LDR             R0, =(_ZTISt12out_of_range_ptr - 0xF846E)
F846A:  ADD             R0, PC; _ZTISt12out_of_range_ptr
F846C:  LDR             R1, [R0]; lptinfo
F846E:  LDR             R0, =(_ZNSt16invalid_argumentD2Ev_ptr_1 - 0xF8474)
F8470:  ADD             R0, PC; _ZNSt16invalid_argumentD2Ev_ptr_1
F8472:  LDR             R2, [R0]; std::invalid_argument::~invalid_argument() ; void (*)(void *)
F8474:  MOV             R0, R4; void *
F8476:  BLX             j___cxa_throw
