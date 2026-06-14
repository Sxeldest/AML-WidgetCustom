; =========================================================
; Game Engine Function: sub_161A78
; Address            : 0x161A78 - 0x161AAE
; =========================================================

161A78:  PUSH            {R4,R5,R7,LR}
161A7A:  ADD             R7, SP, #8
161A7C:  LDR             R5, [R0,#4]
161A7E:  MOV             R4, R0
161A80:  CBZ             R5, loc_161AAA
161A82:  ADDS            R0, R5, #4
161A84:  DMB.W           ISH
161A88:  LDREX.W         R1, [R0]
161A8C:  SUBS            R2, R1, #1
161A8E:  STREX.W         R3, R2, [R0]
161A92:  CMP             R3, #0
161A94:  BNE             loc_161A88
161A96:  DMB.W           ISH
161A9A:  CBNZ            R1, loc_161AAA
161A9C:  LDR             R0, [R5]
161A9E:  LDR             R1, [R0,#8]
161AA0:  MOV             R0, R5
161AA2:  BLX             R1
161AA4:  MOV             R0, R5; this
161AA6:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
161AAA:  MOV             R0, R4
161AAC:  POP             {R4,R5,R7,PC}
