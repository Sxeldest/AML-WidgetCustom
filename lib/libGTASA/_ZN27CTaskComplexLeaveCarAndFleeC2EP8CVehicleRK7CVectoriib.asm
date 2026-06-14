; =========================================================
; Game Engine Function: _ZN27CTaskComplexLeaveCarAndFleeC2EP8CVehicleRK7CVectoriib
; Address            : 0x4F9844 - 0x4F9896
; =========================================================

4F9844:  PUSH            {R4-R7,LR}
4F9846:  ADD             R7, SP, #0xC
4F9848:  PUSH.W          {R8}
4F984C:  MOV             R8, R3
4F984E:  MOV             R6, R2
4F9850:  MOV             R5, R1
4F9852:  MOV             R4, R0
4F9854:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F9858:  LDR             R0, =(_ZTV27CTaskComplexLeaveCarAndFlee_ptr - 0x4F9866)
4F985A:  MOV             R1, R4
4F985C:  STR.W           R8, [R4,#0x10]
4F9860:  CMP             R5, #0
4F9862:  ADD             R0, PC; _ZTV27CTaskComplexLeaveCarAndFlee_ptr
4F9864:  LDR             R2, [R7,#arg_0]
4F9866:  LDR             R3, [R7,#arg_4]
4F9868:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCarAndFlee ...
4F986A:  ADD.W           R0, R0, #8
4F986E:  STR             R0, [R4]
4F9870:  STR.W           R5, [R1,#0xC]!; CEntity **
4F9874:  VLDR            D16, [R6]
4F9878:  LDR             R0, [R6,#8]
4F987A:  STRD.W          R0, R2, [R4,#0x1C]
4F987E:  STRB.W          R3, [R4,#0x24]
4F9882:  VSTR            D16, [R4,#0x14]
4F9886:  ITT NE
4F9888:  MOVNE           R0, R5; this
4F988A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F988E:  MOV             R0, R4
4F9890:  POP.W           {R8}
4F9894:  POP             {R4-R7,PC}
