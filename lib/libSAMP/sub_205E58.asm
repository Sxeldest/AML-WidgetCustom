; =========================================================
; Game Engine Function: sub_205E58
; Address            : 0x205E58 - 0x205E8A
; =========================================================

205E58:  PUSH            {R4-R7,LR}
205E5A:  ADD             R7, SP, #0xC
205E5C:  PUSH.W          {R11}
205E60:  MOV             R5, R0
205E62:  LDR             R0, =(_ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr - 0x205E6A)
205E64:  MOV             R4, R1
205E66:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr
205E68:  LDR             R0, [R0]; this
205E6A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205E6E:  MOV             R6, R0
205E70:  MOV             R0, R4
205E72:  MOV             R1, R6
205E74:  BL              sub_20652C
205E78:  MOV             R1, R0; this
205E7A:  MOV             R0, R5; int
205E7C:  MOV             R2, R6
205E7E:  POP.W           {R11}
205E82:  POP.W           {R4-R7,LR}
205E86:  B.W             sub_206408
