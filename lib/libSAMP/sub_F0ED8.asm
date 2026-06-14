; =========================================================
; Game Engine Function: sub_F0ED8
; Address            : 0xF0ED8 - 0xF0F54
; =========================================================

F0ED8:  PUSH            {R4,R6,R7,LR}
F0EDA:  ADD             R7, SP, #8
F0EDC:  MOV             R1, R0
F0EDE:  LDR             R0, =(off_234A4C - 0xF0EE4)
F0EE0:  ADD             R0, PC; off_234A4C
F0EE2:  LDR             R4, [R0]; dword_381A54
F0EE4:  LDR             R0, [R4]
F0EE6:  CBZ             R0, loc_F0EEA
F0EE8:  POP             {R4,R6,R7,PC}
F0EEA:  CBNZ            R1, loc_F0F02
F0EEC:  LDR             R0, =(byte_23FBB0 - 0xF0EF2)
F0EEE:  ADD             R0, PC; byte_23FBB0
F0EF0:  LDRB            R0, [R0]
F0EF2:  DMB.W           ISH
F0EF6:  LSLS            R0, R0, #0x1F
F0EF8:  BEQ             loc_F0F24
F0EFA:  LDR             R0, =(unk_23DF38 - 0xF0F00)
F0EFC:  ADD             R0, PC; unk_23DF38
F0EFE:  STR             R0, [R4]
F0F00:  POP             {R4,R6,R7,PC}
F0F02:  MOVS            R0, #8; thrown_size
F0F04:  BLX             j___cxa_allocate_exception
F0F08:  LDR             R1, =(aUefInstanceNot - 0xF0F10); "UEF instance not created yet" ...
F0F0A:  MOV             R4, R0
F0F0C:  ADD             R1, PC; "UEF instance not created yet"
F0F0E:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
F0F12:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0xF0F1A)
F0F14:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0xF0F1C)
F0F16:  ADD             R0, PC; _ZTISt13runtime_error_ptr
F0F18:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
F0F1A:  LDR             R1, [R0]; lptinfo
F0F1C:  MOV             R0, R4; void *
F0F1E:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
F0F20:  BLX             j___cxa_throw
F0F24:  LDR             R0, =(byte_23FBB0 - 0xF0F2A)
F0F26:  ADD             R0, PC; byte_23FBB0 ; __guard *
F0F28:  BLX             j___cxa_guard_acquire
F0F2C:  CMP             R0, #0
F0F2E:  BEQ             loc_F0EFA
F0F30:  LDR             R0, =(unk_23DF38 - 0xF0F36)
F0F32:  ADD             R0, PC; unk_23DF38
F0F34:  BL              sub_15FD40
F0F38:  LDR             R0, =(off_234A50 - 0xF0F40)
F0F3A:  LDR             R1, =(unk_23DF38 - 0xF0F44)
F0F3C:  ADD             R0, PC; off_234A50
F0F3E:  LDR             R2, =(off_22A540 - 0xF0F48)
F0F40:  ADD             R1, PC; unk_23DF38 ; obj
F0F42:  LDR             R0, [R0]; sub_15FF14 ; lpfunc
F0F44:  ADD             R2, PC; off_22A540 ; lpdso_handle
F0F46:  BLX             __cxa_atexit
F0F4A:  LDR             R0, =(byte_23FBB0 - 0xF0F50)
F0F4C:  ADD             R0, PC; byte_23FBB0 ; __guard *
F0F4E:  BLX             j___cxa_guard_release
F0F52:  B               loc_F0EFA
