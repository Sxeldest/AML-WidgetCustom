; =========================================================
; Game Engine Function: _ZNK23CTaskComplexUseSwatRope5CloneEv
; Address            : 0x5126A0 - 0x512716
; =========================================================

5126A0:  PUSH            {R4-R7,LR}
5126A2:  ADD             R7, SP, #0xC
5126A4:  PUSH.W          {R8}
5126A8:  MOV             R5, R0
5126AA:  MOVS            R0, #dword_1C; this
5126AC:  LDRB            R6, [R5,#0x14]
5126AE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5126B2:  LDR.W           R8, [R5,#0xC]
5126B6:  MOV             R4, R0
5126B8:  TST.W           R6, #1
5126BC:  BNE             loc_5126E0
5126BE:  MOV             R0, R4; this
5126C0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5126C4:  LDR             R0, =(_ZTV23CTaskComplexUseSwatRope_ptr - 0x5126CE)
5126C6:  MOVS            R2, #0
5126C8:  LDRB            R1, [R4,#0x14]
5126CA:  ADD             R0, PC; _ZTV23CTaskComplexUseSwatRope_ptr
5126CC:  STRD.W          R8, R2, [R4,#0xC]
5126D0:  STR             R2, [R4,#0x18]
5126D2:  AND.W           R1, R1, #0xFE
5126D6:  LDR             R0, [R0]; `vtable for'CTaskComplexUseSwatRope ...
5126D8:  STRB            R1, [R4,#0x14]
5126DA:  ADDS            R0, #8
5126DC:  STR             R0, [R4]
5126DE:  B               loc_51270E
5126E0:  MOV             R0, R4; this
5126E2:  LDR             R5, [R5,#0x18]
5126E4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5126E8:  LDR             R0, =(_ZTV23CTaskComplexUseSwatRope_ptr - 0x5126F4)
5126EA:  MOVS            R1, #0
5126EC:  STR.W           R8, [R4,#0xC]
5126F0:  ADD             R0, PC; _ZTV23CTaskComplexUseSwatRope_ptr
5126F2:  STR             R1, [R4,#0x10]
5126F4:  LDRB            R1, [R4,#0x14]
5126F6:  LDR             R0, [R0]; `vtable for'CTaskComplexUseSwatRope ...
5126F8:  ADDS            R0, #8
5126FA:  STR             R0, [R4]
5126FC:  ORR.W           R0, R1, #1
512700:  MOV             R1, R4
512702:  STRB            R0, [R4,#0x14]
512704:  MOV             R0, R5; this
512706:  STR.W           R5, [R1,#0x18]!; CEntity **
51270A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51270E:  MOV             R0, R4
512710:  POP.W           {R8}
512714:  POP             {R4-R7,PC}
