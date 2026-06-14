; =========================================================
; Game Engine Function: sub_205D08
; Address            : 0x205D08 - 0x205D3A
; =========================================================

205D08:  PUSH            {R4-R7,LR}
205D0A:  ADD             R7, SP, #0xC
205D0C:  PUSH.W          {R11}
205D10:  MOV             R5, R0
205D12:  LDR             R0, =(_ZNSt6__ndk17collateIcE2idE_ptr - 0x205D1A)
205D14:  MOV             R4, R1
205D16:  ADD             R0, PC; _ZNSt6__ndk17collateIcE2idE_ptr
205D18:  LDR             R0, [R0]; this
205D1A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205D1E:  MOV             R6, R0
205D20:  MOV             R0, R4
205D22:  MOV             R1, R6
205D24:  BL              sub_20652C
205D28:  MOV             R1, R0; this
205D2A:  MOV             R0, R5; int
205D2C:  MOV             R2, R6
205D2E:  POP.W           {R11}
205D32:  POP.W           {R4-R7,LR}
205D36:  B.W             sub_206408
