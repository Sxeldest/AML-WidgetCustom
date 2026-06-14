; =========================================================
; Game Engine Function: sub_205F00
; Address            : 0x205F00 - 0x205F32
; =========================================================

205F00:  PUSH            {R4-R7,LR}
205F02:  ADD             R7, SP, #0xC
205F04:  PUSH.W          {R11}
205F08:  MOV             R5, R0
205F0A:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr - 0x205F12)
205F0C:  MOV             R4, R1
205F0E:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb1EE2idE_ptr
205F10:  LDR             R0, [R0]; this
205F12:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205F16:  MOV             R6, R0
205F18:  MOV             R0, R4
205F1A:  MOV             R1, R6
205F1C:  BL              sub_20652C
205F20:  MOV             R1, R0; this
205F22:  MOV             R0, R5; int
205F24:  MOV             R2, R6
205F26:  POP.W           {R11}
205F2A:  POP.W           {R4-R7,LR}
205F2E:  B.W             sub_206408
