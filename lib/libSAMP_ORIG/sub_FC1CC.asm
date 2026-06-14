; =========================================================
; Game Engine Function: sub_FC1CC
; Address            : 0xFC1CC - 0xFC1FE
; =========================================================

FC1CC:  PUSH            {R0-R5,R7,LR}
FC1CE:  ADD             R7, SP, #0x18
FC1D0:  ADD             R5, SP, #0x18+var_14
FC1D2:  LDR             R2, =(aOutOfRange - 0xFC1DA); ": out of range" ...
FC1D4:  MOV             R1, R0; int
FC1D6:  ADD             R2, PC; ": out of range"
FC1D8:  MOV             R0, R5; int
FC1DA:  BL              sub_77B7C
FC1DE:  MOVS            R0, #8; thrown_size
FC1E0:  BLX             j___cxa_allocate_exception
FC1E4:  MOV             R4, R0
FC1E6:  MOV             R1, R5
FC1E8:  BL              sub_FC284
FC1EC:  LDR             R0, =(_ZTISt12out_of_range_ptr - 0xFC1F2)
FC1EE:  ADD             R0, PC; _ZTISt12out_of_range_ptr
FC1F0:  LDR             R1, [R0]; lptinfo
FC1F2:  LDR             R0, =(_ZNSt16invalid_argumentD2Ev_ptr_1 - 0xFC1F8)
FC1F4:  ADD             R0, PC; _ZNSt16invalid_argumentD2Ev_ptr_1
FC1F6:  LDR             R2, [R0]; std::invalid_argument::~invalid_argument() ; void (*)(void *)
FC1F8:  MOV             R0, R4; void *
FC1FA:  BLX             j___cxa_throw
