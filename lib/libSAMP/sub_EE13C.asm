; =========================================================
; Game Engine Function: sub_EE13C
; Address            : 0xEE13C - 0xEE162
; =========================================================

EE13C:  PUSH            {R4,R5,R7,LR}
EE13E:  ADD             R7, SP, #8
EE140:  MOV             R5, R0
EE142:  MOVS            R0, #8; thrown_size
EE144:  BLX             j___cxa_allocate_exception
EE148:  MOV             R4, R0
EE14A:  MOV             R1, R5
EE14C:  BL              sub_EE174
EE150:  LDR             R0, =(_ZTISt12out_of_range_ptr - 0xEE158)
EE152:  LDR             R2, =(_ZNSt16invalid_argumentD2Ev_ptr_0 - 0xEE15A)
EE154:  ADD             R0, PC; _ZTISt12out_of_range_ptr
EE156:  ADD             R2, PC; _ZNSt16invalid_argumentD2Ev_ptr_0
EE158:  LDR             R1, [R0]; lptinfo
EE15A:  MOV             R0, R4; void *
EE15C:  LDR             R2, [R2]; std::invalid_argument::~invalid_argument() ; void (*)(void *)
EE15E:  BLX             j___cxa_throw
