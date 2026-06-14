; =========================================================
; Game Engine Function: sub_205F70
; Address            : 0x205F70 - 0x205FA2
; =========================================================

205F70:  PUSH            {R4-R7,LR}
205F72:  ADD             R7, SP, #0xC
205F74:  PUSH.W          {R11}
205F78:  MOV             R5, R0
205F7A:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr - 0x205F82)
205F7C:  MOV             R4, R1
205F7E:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr
205F80:  LDR             R0, [R0]; this
205F82:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205F86:  MOV             R6, R0
205F88:  MOV             R0, R4
205F8A:  MOV             R1, R6
205F8C:  BL              sub_20652C
205F90:  MOV             R1, R0; this
205F92:  MOV             R0, R5; int
205F94:  MOV             R2, R6
205F96:  POP.W           {R11}
205F9A:  POP.W           {R4-R7,LR}
205F9E:  B.W             sub_206408
