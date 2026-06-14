; =========================================================
; Game Engine Function: sub_1EE7B0
; Address            : 0x1EE7B0 - 0x1EE7EE
; =========================================================

1EE7B0:  PUSH            {R4-R7,LR}
1EE7B2:  ADD             R7, SP, #0xC
1EE7B4:  PUSH.W          {R6-R9,R11}
1EE7B8:  MOV             R6, R0
1EE7BA:  MOVS            R0, #0x18; thrown_size
1EE7BC:  MOV             R5, R3
1EE7BE:  MOV             R8, R2
1EE7C0:  MOV             R9, R1
1EE7C2:  BLX             j___cxa_allocate_exception
1EE7C6:  MOV             R4, R0
1EE7C8:  LDRD.W          R0, R1, [R5]
1EE7CC:  STRD.W          R0, R1, [SP,#0x20+var_20]
1EE7D0:  MOV             R0, R4
1EE7D2:  MOV             R1, R6
1EE7D4:  MOV             R2, R9
1EE7D6:  MOV             R3, R8
1EE7D8:  BL              sub_1EEB48
1EE7DC:  LDR             R0, =(_ZTINSt6__ndk14__fs10filesystem16filesystem_errorE_ptr - 0x1EE7E2)
1EE7DE:  ADD             R0, PC; _ZTINSt6__ndk14__fs10filesystem16filesystem_errorE_ptr
1EE7E0:  LDR             R1, [R0]; lptinfo
1EE7E2:  LDR             R0, =(_ZNSt6__ndk14__fs10filesystem16filesystem_errorD2Ev_ptr - 0x1EE7E8)
1EE7E4:  ADD             R0, PC; _ZNSt6__ndk14__fs10filesystem16filesystem_errorD2Ev_ptr
1EE7E6:  LDR             R2, [R0]; std::__fs::filesystem::filesystem_error::~filesystem_error() ; void (*)(void *)
1EE7E8:  MOV             R0, R4; void *
1EE7EA:  BLX             j___cxa_throw
