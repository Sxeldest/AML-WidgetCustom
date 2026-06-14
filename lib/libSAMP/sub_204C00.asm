; =========================================================
; Game Engine Function: sub_204C00
; Address            : 0x204C00 - 0x204C20
; =========================================================

204C00:  PUSH            {R4,R5,R7,LR}
204C02:  ADD             R7, SP, #8
204C04:  MOV             R5, R0
204C06:  LDR             R0, =(_ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr - 0x204C0E)
204C08:  MOV             R4, R1
204C0A:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr
204C0C:  LDR             R0, [R0]; this
204C0E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204C12:  MOV             R2, R0
204C14:  MOV             R0, R5; int
204C16:  MOV             R1, R4; this
204C18:  POP.W           {R4,R5,R7,LR}
204C1C:  B.W             sub_206408
