; =========================================================
; Game Engine Function: sub_205E90
; Address            : 0x205E90 - 0x205EC2
; =========================================================

205E90:  PUSH            {R4-R7,LR}
205E92:  ADD             R7, SP, #0xC
205E94:  PUSH.W          {R11}
205E98:  MOV             R5, R0
205E9A:  LDR             R0, =(_ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr - 0x205EA2)
205E9C:  MOV             R4, R1
205E9E:  ADD             R0, PC; _ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr
205EA0:  LDR             R0, [R0]; this
205EA2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205EA6:  MOV             R6, R0
205EA8:  MOV             R0, R4
205EAA:  MOV             R1, R6
205EAC:  BL              sub_20652C
205EB0:  MOV             R1, R0; this
205EB2:  MOV             R0, R5; int
205EB4:  MOV             R2, R6
205EB6:  POP.W           {R11}
205EBA:  POP.W           {R4-R7,LR}
205EBE:  B.W             sub_206408
