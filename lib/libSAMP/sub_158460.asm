; =========================================================
; Game Engine Function: sub_158460
; Address            : 0x158460 - 0x15848E
; =========================================================

158460:  PUSH            {R4,R5,R7,LR}
158462:  ADD             R7, SP, #8
158464:  MOV             R5, R0
158466:  MOVS            R0, #0x10; thrown_size
158468:  BLX             j___cxa_allocate_exception
15846C:  MOV             R4, R0
15846E:  BLX             j__ZNSt6__ndk115future_categoryEv; std::future_category(void)
158472:  MOV             R2, R0
158474:  MOV             R0, R4
158476:  MOV             R1, R5
158478:  BLX             j__ZNSt6__ndk112future_errorC2ENS_10error_codeE; std::future_error::future_error(std::error_code)
15847C:  LDR             R0, =(_ZTINSt6__ndk112future_errorE_ptr - 0x158484)
15847E:  LDR             R2, =(_ZNSt6__ndk112future_errorD2Ev_ptr - 0x158486)
158480:  ADD             R0, PC; _ZTINSt6__ndk112future_errorE_ptr
158482:  ADD             R2, PC; _ZNSt6__ndk112future_errorD2Ev_ptr
158484:  LDR             R1, [R0]; lptinfo
158486:  MOV             R0, R4; void *
158488:  LDR             R2, [R2]; std::future_error::~future_error() ; void (*)(void *)
15848A:  BLX             j___cxa_throw
