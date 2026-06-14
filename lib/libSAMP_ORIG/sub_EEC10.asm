; =========================================================
; Game Engine Function: sub_EEC10
; Address            : 0xEEC10 - 0xEEC36
; =========================================================

EEC10:  PUSH            {R4,R5,R7,LR}
EEC12:  ADD             R7, SP, #8
EEC14:  MOV             R5, R0
EEC16:  MOVS            R0, #8; thrown_size
EEC18:  BLX             j___cxa_allocate_exception
EEC1C:  MOV             R4, R0
EEC1E:  MOV             R1, R5
EEC20:  BLX             j__ZNSt13runtime_errorC2ERKNSt6__ndk112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE; std::runtime_error::runtime_error(std::string const&)
EEC24:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0xEEC2A)
EEC26:  ADD             R0, PC; _ZTISt13runtime_error_ptr
EEC28:  LDR             R1, [R0]; lptinfo
EEC2A:  LDR             R0, =(_ZNSt15underflow_errorD2Ev_ptr_0 - 0xEEC30)
EEC2C:  ADD             R0, PC; _ZNSt15underflow_errorD2Ev_ptr_0
EEC2E:  LDR             R2, [R0]; std::underflow_error::~underflow_error() ; void (*)(void *)
EEC30:  MOV             R0, R4; void *
EEC32:  BLX             j___cxa_throw
