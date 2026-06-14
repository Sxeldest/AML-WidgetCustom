; =========================================================
; Game Engine Function: sub_1EE720
; Address            : 0x1EE720 - 0x1EE750
; =========================================================

1EE720:  PUSH            {R4-R7,LR}
1EE722:  ADD             R7, SP, #0xC
1EE724:  PUSH.W          {R11}
1EE728:  MOV             R6, R0
1EE72A:  MOVS            R0, #0x18; thrown_size
1EE72C:  MOV             R5, R1
1EE72E:  BLX             j___cxa_allocate_exception
1EE732:  MOV             R4, R0
1EE734:  LDRD.W          R2, R3, [R5]
1EE738:  MOV             R1, R6
1EE73A:  BL              sub_1EE800
1EE73E:  LDR             R0, =(_ZTINSt6__ndk14__fs10filesystem16filesystem_errorE_ptr - 0x1EE744)
1EE740:  ADD             R0, PC; _ZTINSt6__ndk14__fs10filesystem16filesystem_errorE_ptr
1EE742:  LDR             R1, [R0]; lptinfo
1EE744:  LDR             R0, =(_ZNSt6__ndk14__fs10filesystem16filesystem_errorD2Ev_ptr - 0x1EE74A)
1EE746:  ADD             R0, PC; _ZNSt6__ndk14__fs10filesystem16filesystem_errorD2Ev_ptr
1EE748:  LDR             R2, [R0]; std::__fs::filesystem::filesystem_error::~filesystem_error() ; void (*)(void *)
1EE74A:  MOV             R0, R4; void *
1EE74C:  BLX             j___cxa_throw
