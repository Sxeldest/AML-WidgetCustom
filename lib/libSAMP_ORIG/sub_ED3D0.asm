; =========================================================
; Game Engine Function: sub_ED3D0
; Address            : 0xED3D0 - 0xED3F0
; =========================================================

ED3D0:  PUSH            {R4,R5,R7,LR}
ED3D2:  ADD             R7, SP, #8
ED3D4:  MOV             R5, R0
ED3D6:  LDR             R0, =(_ZNSt6__ndk17collateIwE2idE_ptr - 0xED3DE)
ED3D8:  MOV             R4, R1
ED3DA:  ADD             R0, PC; _ZNSt6__ndk17collateIwE2idE_ptr
ED3DC:  LDR             R0, [R0]; this
ED3DE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED3E2:  MOV             R2, R0
ED3E4:  MOV             R0, R5; int
ED3E6:  MOV             R1, R4; this
ED3E8:  POP.W           {R4,R5,R7,LR}
ED3EC:  B.W             sub_EE550
