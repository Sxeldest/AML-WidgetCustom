; =========================================================
; Game Engine Function: sub_205D78
; Address            : 0x205D78 - 0x205DAA
; =========================================================

205D78:  PUSH            {R4-R7,LR}
205D7A:  ADD             R7, SP, #0xC
205D7C:  PUSH.W          {R11}
205D80:  MOV             R5, R0
205D82:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x205D8A)
205D84:  MOV             R4, R1
205D86:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
205D88:  LDR             R0, [R0]; this
205D8A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205D8E:  MOV             R6, R0
205D90:  MOV             R0, R4
205D92:  MOV             R1, R6
205D94:  BL              sub_20652C
205D98:  MOV             R1, R0; this
205D9A:  MOV             R0, R5; int
205D9C:  MOV             R2, R6
205D9E:  POP.W           {R11}
205DA2:  POP.W           {R4-R7,LR}
205DA6:  B.W             sub_206408
