; =========================================================
; Game Engine Function: sub_ECD48
; Address            : 0xECD48 - 0xECD68
; =========================================================

ECD48:  PUSH            {R4,R5,R7,LR}
ECD4A:  ADD             R7, SP, #8
ECD4C:  MOV             R5, R0
ECD4E:  LDR             R0, =(_ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr - 0xECD56)
ECD50:  MOV             R4, R1
ECD52:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr
ECD54:  LDR             R0, [R0]; this
ECD56:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECD5A:  MOV             R2, R0
ECD5C:  MOV             R0, R5; int
ECD5E:  MOV             R1, R4; this
ECD60:  POP.W           {R4,R5,R7,LR}
ECD64:  B.W             sub_EE550
