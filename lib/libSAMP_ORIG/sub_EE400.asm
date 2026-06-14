; =========================================================
; Game Engine Function: sub_EE400
; Address            : 0xEE400 - 0xEE432
; =========================================================

EE400:  PUSH            {R4-R7,LR}
EE402:  ADD             R7, SP, #0xC
EE404:  PUSH.W          {R11}
EE408:  MOV             R5, R0
EE40A:  LDR             R0, =(_ZNSt6__ndk18messagesIcE2idE_ptr - 0xEE412)
EE40C:  MOV             R4, R1
EE40E:  ADD             R0, PC; _ZNSt6__ndk18messagesIcE2idE_ptr
EE410:  LDR             R0, [R0]; this
EE412:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE416:  MOV             R6, R0
EE418:  MOV             R0, R4
EE41A:  MOV             R1, R6
EE41C:  BL              sub_EE674
EE420:  MOV             R1, R0; this
EE422:  MOV             R0, R5; int
EE424:  MOV             R2, R6
EE426:  POP.W           {R11}
EE42A:  POP.W           {R4-R7,LR}
EE42E:  B.W             sub_EE550
