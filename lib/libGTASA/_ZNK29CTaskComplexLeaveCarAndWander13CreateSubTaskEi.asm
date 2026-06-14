; =========================================================
; Game Engine Function: _ZNK29CTaskComplexLeaveCarAndWander13CreateSubTaskEi
; Address            : 0x4F9794 - 0x4F9824
; =========================================================

4F9794:  PUSH            {R4-R7,LR}
4F9796:  ADD             R7, SP, #0xC
4F9798:  PUSH.W          {R8,R9,R11}
4F979C:  MOV             R6, R0
4F979E:  CMP             R1, #0xC8
4F97A0:  BEQ             loc_4F9802
4F97A2:  CMP.W           R1, #0x2C0
4F97A6:  BNE             loc_4F981A
4F97A8:  MOVS            R0, #dword_34; this
4F97AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F97AE:  ADD.W           R9, R6, #0xC
4F97B2:  MOV             R4, R0
4F97B4:  LDM.W           R9, {R5,R8,R9}
4F97B8:  LDRB            R6, [R6,#0x18]
4F97BA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F97BE:  LDR             R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4F97CC)
4F97C0:  MOVS            R1, #0
4F97C2:  STRD.W          R8, R9, [R4,#0x10]
4F97C6:  MOVS            R2, #0xF
4F97C8:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4F97CA:  STRB            R6, [R4,#0x18]
4F97CC:  MOV.W           R3, #0x40800000
4F97D0:  MOV.W           R6, #0x3F800000
4F97D4:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4F97D6:  ADD.W           R12, R4, #0x24 ; '$'
4F97DA:  STRH.W          R1, [R4,#0x19]
4F97DE:  CMP             R5, #0
4F97E0:  STR             R1, [R4,#0x1C]
4F97E2:  ADD.W           R0, R0, #8
4F97E6:  STRH            R1, [R4,#0x20]
4F97E8:  STM.W           R12, {R2,R3,R6}
4F97EC:  STRB.W          R1, [R4,#0x30]
4F97F0:  MOV             R1, R4
4F97F2:  STR             R0, [R4]
4F97F4:  STR.W           R5, [R1,#0xC]!; CEntity **
4F97F8:  BEQ             loc_4F981C
4F97FA:  MOV             R0, R5; this
4F97FC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F9800:  B               loc_4F981C
4F9802:  MOVS            R0, #byte_8; this
4F9804:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F9808:  MOV             R4, R0
4F980A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F980E:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4F9814)
4F9810:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4F9812:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4F9814:  ADDS            R0, #8
4F9816:  STR             R0, [R4]
4F9818:  B               loc_4F981C
4F981A:  MOVS            R4, #0
4F981C:  MOV             R0, R4
4F981E:  POP.W           {R8,R9,R11}
4F9822:  POP             {R4-R7,PC}
