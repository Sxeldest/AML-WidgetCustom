; =========================================================
; Game Engine Function: sub_138744
; Address            : 0x138744 - 0x13876A
; =========================================================

138744:  PUSH            {R4,R6,R7,LR}
138746:  ADD             R7, SP, #8
138748:  MOV             R4, R0
13874A:  LDR             R0, =(_ZTV11ButtonVoice - 0x138750); `vtable for'ButtonVoice ...
13874C:  ADD             R0, PC; `vtable for'ButtonVoice
13874E:  ADD.W           R1, R0, #8
138752:  MOV             R0, R4
138754:  STR.W           R1, [R0],#0x54
138758:  BL              sub_138A84
13875C:  MOV             R0, R4
13875E:  BL              sub_12BCE4
138762:  POP.W           {R4,R6,R7,LR}
138766:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
