; =========================================================
; Game Engine Function: sub_EE208
; Address            : 0xEE208 - 0xEE23A
; =========================================================

EE208:  PUSH            {R4-R7,LR}
EE20A:  ADD             R7, SP, #0xC
EE20C:  PUSH.W          {R11}
EE210:  MOV             R5, R0
EE212:  LDR             R0, =(_ZNSt6__ndk18numpunctIwE2idE_ptr - 0xEE21A)
EE214:  MOV             R4, R1
EE216:  ADD             R0, PC; _ZNSt6__ndk18numpunctIwE2idE_ptr
EE218:  LDR             R0, [R0]; this
EE21A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE21E:  MOV             R6, R0
EE220:  MOV             R0, R4
EE222:  MOV             R1, R6
EE224:  BL              sub_EE674
EE228:  MOV             R1, R0; this
EE22A:  MOV             R0, R5; int
EE22C:  MOV             R2, R6
EE22E:  POP.W           {R11}
EE232:  POP.W           {R4-R7,LR}
EE236:  B.W             sub_EE550
