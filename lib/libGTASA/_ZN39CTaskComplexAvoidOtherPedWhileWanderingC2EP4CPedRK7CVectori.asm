; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWanderingC2EP4CPedRK7CVectori
; Address            : 0x521B90 - 0x521C04
; =========================================================

521B90:  PUSH            {R4-R7,LR}
521B92:  ADD             R7, SP, #0xC
521B94:  PUSH.W          {R8}
521B98:  MOV             R8, R3
521B9A:  MOV             R6, R2
521B9C:  MOV             R5, R1
521B9E:  MOV             R4, R0
521BA0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
521BA4:  LDR             R0, =(_ZTV39CTaskComplexAvoidOtherPedWhileWandering_ptr - 0x521BAE)
521BA6:  MOV             R1, R4
521BA8:  CMP             R5, #0
521BAA:  ADD             R0, PC; _ZTV39CTaskComplexAvoidOtherPedWhileWandering_ptr
521BAC:  LDR             R0, [R0]; `vtable for'CTaskComplexAvoidOtherPedWhileWandering ...
521BAE:  ADD.W           R0, R0, #8
521BB2:  STR             R0, [R4]
521BB4:  STR.W           R5, [R1,#0xC]!; CEntity **
521BB8:  VLDR            D16, [R6]
521BBC:  LDR             R0, [R6,#8]
521BBE:  STR             R0, [R4,#0x24]
521BC0:  VSTR            D16, [R4,#0x1C]
521BC4:  LDR             R0, [R6,#8]
521BC6:  VLDR            D16, [R6]
521BCA:  STR             R0, [R4,#0x30]
521BCC:  MOV.W           R0, #0
521BD0:  STR             R0, [R4,#0x44]
521BD2:  STRH.W          R0, [R4,#0x48]
521BD6:  STRH.W          R0, [R4,#0x54]
521BDA:  STR             R0, [R4,#0x40]
521BDC:  STRD.W          R0, R0, [R4,#0x4C]
521BE0:  LDRB.W          R0, [R4,#0x5C]
521BE4:  STR.W           R8, [R4,#0x58]
521BE8:  VSTR            D16, [R4,#0x28]
521BEC:  AND.W           R0, R0, #0xF8
521BF0:  STRB.W          R0, [R4,#0x5C]
521BF4:  ITT NE
521BF6:  MOVNE           R0, R5; this
521BF8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
521BFC:  MOV             R0, R4
521BFE:  POP.W           {R8}
521C02:  POP             {R4-R7,PC}
