; =========================================================
; Game Engine Function: sub_FD714
; Address            : 0xFD714 - 0xFD744
; =========================================================

FD714:  PUSH            {R4,R5,R7,LR}
FD716:  ADD             R7, SP, #8
FD718:  MOV             R5, R0
FD71A:  MOVS            R0, #0x10; thrown_size
FD71C:  BLX             j___cxa_allocate_exception
FD720:  MOV             R4, R0
FD722:  BLX             j__ZNSt6__ndk115future_categoryEv; std::future_category(void)
FD726:  LDR             R2, =(unk_1AF680 - 0xFD730)
FD728:  MOV             R0, R4
FD72A:  MOV             R1, R5
FD72C:  ADD             R2, PC; unk_1AF680
FD72E:  BLX             j__ZNSt6__ndk112future_errorC2ENS_10error_codeE; std::future_error::future_error(std::error_code)
FD732:  LDR             R0, =(_ZTINSt6__ndk112future_errorE_ptr - 0xFD738)
FD734:  ADD             R0, PC; _ZTINSt6__ndk112future_errorE_ptr
FD736:  LDR             R1, [R0]; lptinfo
FD738:  LDR             R0, =(_ZNSt6__ndk112future_errorD2Ev_ptr - 0xFD73E)
FD73A:  ADD             R0, PC; _ZNSt6__ndk112future_errorD2Ev_ptr
FD73C:  LDR             R2, [R0]; std::future_error::~future_error() ; void (*)(void *)
FD73E:  MOV             R0, R4; void *
FD740:  BLX             j___cxa_throw
