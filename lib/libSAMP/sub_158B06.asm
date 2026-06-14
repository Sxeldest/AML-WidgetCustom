; =========================================================
; Game Engine Function: sub_158B06
; Address            : 0x158B06 - 0x158B6C
; =========================================================

158B06:  PUSH            {R4,R5,R7,LR}
158B08:  ADD             R7, SP, #8
158B0A:  MOV             R4, R2
158B0C:  CBZ             R0, loc_158B1A
158B0E:  LDR             R3, [R4]; s
158B10:  CBZ             R3, locret_158B18
158B12:  MOVS            R2, #1; n
158B14:  BLX             fwrite
158B18:  POP             {R4,R5,R7,PC}
158B1A:  LDR             R0, [R4,#8]; this
158B1C:  CBZ             R0, loc_158B5E
158B1E:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
158B22:  CBZ             R0, loc_158B5E
158B24:  MOV             R5, R0
158B26:  LDR             R0, [R4,#4]
158B28:  CBZ             R0, loc_158B36
158B2A:  MOVS            R1, #1
158B2C:  DMB.W           ISH
158B30:  STRB            R1, [R0,#4]
158B32:  DMB.W           ISH
158B36:  ADDS            R0, R5, #4
158B38:  DMB.W           ISH
158B3C:  LDREX.W         R1, [R0]
158B40:  SUBS            R2, R1, #1
158B42:  STREX.W         R3, R2, [R0]
158B46:  CMP             R3, #0
158B48:  BNE             loc_158B3C
158B4A:  DMB.W           ISH
158B4E:  CBNZ            R1, loc_158B5E
158B50:  LDR             R0, [R5]
158B52:  LDR             R1, [R0,#8]
158B54:  MOV             R0, R5
158B56:  BLX             R1
158B58:  MOV             R0, R5; this
158B5A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
158B5E:  MOV             R0, R4
158B60:  BL              sub_158B6C
158B64:  POP.W           {R4,R5,R7,LR}
158B68:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
