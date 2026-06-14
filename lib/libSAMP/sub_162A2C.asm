; =========================================================
; Game Engine Function: sub_162A2C
; Address            : 0x162A2C - 0x162A62
; =========================================================

162A2C:  PUSH            {R4,R5,R7,LR}
162A2E:  ADD             R7, SP, #8
162A30:  LDR             R5, [R0,#4]
162A32:  MOV             R4, R0
162A34:  CBZ             R5, loc_162A5E
162A36:  ADDS            R0, R5, #4
162A38:  DMB.W           ISH
162A3C:  LDREX.W         R1, [R0]
162A40:  SUBS            R2, R1, #1
162A42:  STREX.W         R3, R2, [R0]
162A46:  CMP             R3, #0
162A48:  BNE             loc_162A3C
162A4A:  DMB.W           ISH
162A4E:  CBNZ            R1, loc_162A5E
162A50:  LDR             R0, [R5]
162A52:  LDR             R1, [R0,#8]
162A54:  MOV             R0, R5
162A56:  BLX             R1
162A58:  MOV             R0, R5; this
162A5A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
162A5E:  MOV             R0, R4
162A60:  POP             {R4,R5,R7,PC}
