; =========================================================
; Game Engine Function: sub_213F0C
; Address            : 0x213F0C - 0x213F3E
; =========================================================

213F0C:  PUSH            {R0-R5,R7,LR}
213F0E:  ADD             R7, SP, #0x18
213F10:  ADD             R5, SP, #0x18+var_14
213F12:  LDR             R2, =(aOutOfRange_0 - 0x213F1A); ": out of range" ...
213F14:  MOV             R1, R0; int
213F16:  ADD             R2, PC; ": out of range"
213F18:  MOV             R0, R5; int
213F1A:  BL              sub_EE094
213F1E:  MOVS            R0, #8; thrown_size
213F20:  BLX             j___cxa_allocate_exception
213F24:  MOV             R4, R0
213F26:  MOV             R1, R5
213F28:  BL              sub_213FC4
213F2C:  LDR             R0, =(_ZTISt12out_of_range_ptr - 0x213F32)
213F2E:  ADD             R0, PC; _ZTISt12out_of_range_ptr
213F30:  LDR             R1, [R0]; lptinfo
213F32:  LDR             R0, =(_ZNSt16invalid_argumentD2Ev_ptr_0 - 0x213F38)
213F34:  ADD             R0, PC; _ZNSt16invalid_argumentD2Ev_ptr_0
213F36:  LDR             R2, [R0]; std::invalid_argument::~invalid_argument() ; void (*)(void *)
213F38:  MOV             R0, R4; void *
213F3A:  BLX             j___cxa_throw
