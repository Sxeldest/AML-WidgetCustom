; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointAnyMeansC2EiRK7CVectorP8CVehiclefi
; Address            : 0x5247C0 - 0x52481C
; =========================================================

5247C0:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexGoToPointAnyMeans::CTaskComplexGoToPointAnyMeans(int, CVector const&, CVehicle *, float, int)'
5247C2:  ADD             R7, SP, #0xC
5247C4:  PUSH.W          {R8}
5247C8:  MOV             R5, R3
5247CA:  MOV             R6, R2
5247CC:  MOV             R8, R1
5247CE:  MOV             R4, R0
5247D0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5247D4:  LDR             R0, =(_ZTV29CTaskComplexGoToPointAnyMeans_ptr - 0x5247E2)
5247D6:  MOV             R1, R4
5247D8:  VLDR            S0, [R7,#arg_0]
5247DC:  CMP             R5, #0
5247DE:  ADD             R0, PC; _ZTV29CTaskComplexGoToPointAnyMeans_ptr
5247E0:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAnyMeans ...
5247E2:  ADD.W           R0, R0, #8
5247E6:  STR             R0, [R4]
5247E8:  VLDR            D16, [R6]
5247EC:  LDR             R2, [R6,#8]
5247EE:  STR.W           R5, [R1,#0x20]!; CEntity **
5247F2:  LDR             R0, [R7,#arg_4]
5247F4:  STRD.W          R2, R8, [R1,#-0xC]
5247F8:  MOV.W           R2, #0
5247FC:  VSTR            S0, [R1,#-4]
524800:  STRD.W          R0, R2, [R1,#4]
524804:  STR             R2, [R1,#0xC]
524806:  VSTR            D16, [R1,#-0x14]
52480A:  STRH            R2, [R1,#0x10]
52480C:  ITT NE
52480E:  MOVNE           R0, R5; this
524810:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
524814:  MOV             R0, R4
524816:  POP.W           {R8}
52481A:  POP             {R4-R7,PC}
