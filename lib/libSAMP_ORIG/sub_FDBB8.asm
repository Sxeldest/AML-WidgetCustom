; =========================================================
; Game Engine Function: sub_FDBB8
; Address            : 0xFDBB8 - 0xFDBDC
; =========================================================

FDBB8:  PUSH            {R4,R5,R7,LR}
FDBBA:  ADD             R7, SP, #8
FDBBC:  MOV             R4, R0
FDBBE:  MOVS            R0, #0x10; thrown_size
FDBC0:  MOV             R5, R1
FDBC2:  BLX             j___cxa_allocate_exception
FDBC6:  MOV             R1, R5
FDBC8:  BLX             j__ZNSt6__ndk112future_errorC2ERKS0_; std::future_error::future_error(std::future_error const&)
FDBCC:  LDR             R1, =(_ZTINSt6__ndk112future_errorE_ptr - 0xFDBD4)
FDBCE:  LDR             R2, =(_ZNSt6__ndk112future_errorD2Ev_ptr - 0xFDBD6)
FDBD0:  ADD             R1, PC; _ZTINSt6__ndk112future_errorE_ptr
FDBD2:  ADD             R2, PC; _ZNSt6__ndk112future_errorD2Ev_ptr
FDBD4:  LDR             R1, [R1]; lptinfo
FDBD6:  LDR             R2, [R2]; std::future_error::~future_error() ; void (*)(void *)
FDBD8:  BLX             j___cxa_throw
