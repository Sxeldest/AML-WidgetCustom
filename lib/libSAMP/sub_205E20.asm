; =========================================================
; Game Engine Function: sub_205E20
; Address            : 0x205E20 - 0x205E52
; =========================================================

205E20:  PUSH            {R4-R7,LR}
205E22:  ADD             R7, SP, #0xC
205E24:  PUSH.W          {R11}
205E28:  MOV             R5, R0
205E2A:  LDR             R0, =(_ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr - 0x205E32)
205E2C:  MOV             R4, R1
205E2E:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr
205E30:  LDR             R0, [R0]; this
205E32:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205E36:  MOV             R6, R0
205E38:  MOV             R0, R4
205E3A:  MOV             R1, R6
205E3C:  BL              sub_20652C
205E40:  MOV             R1, R0; this
205E42:  MOV             R0, R5; int
205E44:  MOV             R2, R6
205E46:  POP.W           {R11}
205E4A:  POP.W           {R4-R7,LR}
205E4E:  B.W             sub_206408
