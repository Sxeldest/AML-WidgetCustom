; =========================================================
; Game Engine Function: sub_158400
; Address            : 0x158400 - 0x15843A
; =========================================================

158400:  PUSH            {R4-R7,LR}
158402:  ADD             R7, SP, #0xC
158404:  PUSH.W          {R11}
158408:  MOV             R6, R0
15840A:  MOVS            R0, #0x10; thrown_size
15840C:  MOV             R5, R1
15840E:  BLX             j___cxa_allocate_exception
158412:  MOV             R1, R5; std::logic_error *
158414:  BLX             j__ZNSt11logic_errorC2ERKS_; std::logic_error::logic_error(std::logic_error const&)
158418:  LDR             R1, =(_ZTVNSt6__ndk112future_errorE_ptr - 0x158420)
15841A:  LDR             R2, =(_ZTINSt6__ndk112future_errorE_ptr - 0x158424)
15841C:  ADD             R1, PC; _ZTVNSt6__ndk112future_errorE_ptr
15841E:  LDR             R3, =(_ZNSt6__ndk112future_errorD2Ev_ptr - 0x158428)
158420:  ADD             R2, PC; _ZTINSt6__ndk112future_errorE_ptr
158422:  LDR             R1, [R1]; `vtable for'std::future_error ...
158424:  ADD             R3, PC; _ZNSt6__ndk112future_errorD2Ev_ptr
158426:  ADDS            R1, #8
158428:  STR             R1, [R0]
15842A:  LDR             R1, [R2]; lptinfo
15842C:  LDRD.W          R4, R5, [R5,#8]
158430:  LDR             R2, [R3]; std::future_error::~future_error() ; void (*)(void *)
158432:  STRD.W          R4, R5, [R0,#8]
158436:  BLX             j___cxa_throw
