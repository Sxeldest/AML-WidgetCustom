; =========================================================
; Game Engine Function: _ZN27CTaskComplexDrivePointRouteC2EP8CVehicleRK11CPointRoutefiifi
; Address            : 0x4FC720 - 0x4FC7A8
; =========================================================

4FC720:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexDrivePointRoute::CTaskComplexDrivePointRoute(CVehicle *, CPointRoute const&, float, int, int, float, int)'
4FC722:  ADD             R7, SP, #0xC
4FC724:  PUSH.W          {R8-R11}
4FC728:  SUB             SP, SP, #4
4FC72A:  VPUSH           {D8-D9}
4FC72E:  MOV             R6, R3
4FC730:  MOV             R8, R2
4FC732:  MOV             R5, R1
4FC734:  MOV             R4, R0
4FC736:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FC73A:  LDR             R0, =(_ZTV27CTaskComplexDrivePointRoute_ptr - 0x4FC748)
4FC73C:  VMOV            S18, R6
4FC740:  LDRD.W          R11, R10, [R7,#arg_0]
4FC744:  ADD             R0, PC; _ZTV27CTaskComplexDrivePointRoute_ptr
4FC746:  STR             R5, [R4,#0xC]
4FC748:  LDR.W           R9, [R7,#arg_C]
4FC74C:  LDR             R0, [R0]; `vtable for'CTaskComplexDrivePointRoute ...
4FC74E:  VLDR            S16, [R7,#arg_8]
4FC752:  ADDS            R0, #8
4FC754:  STR             R0, [R4]
4FC756:  MOVS            R0, #dword_64; this
4FC758:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
4FC75C:  LDR.W           R1, [R8]
4FC760:  STR             R1, [R0]
4FC762:  CMP             R1, #1
4FC764:  BLT             loc_4FC786
4FC766:  ADD.W           R1, R8, #4
4FC76A:  ADDS            R2, R0, #4
4FC76C:  MOVS            R3, #0
4FC76E:  VLDR            D16, [R1]
4FC772:  ADDS            R3, #1
4FC774:  LDR             R6, [R1,#8]
4FC776:  ADDS            R1, #0xC
4FC778:  STR             R6, [R2,#8]
4FC77A:  VSTR            D16, [R2]
4FC77E:  ADDS            R2, #0xC
4FC780:  LDR             R6, [R0]
4FC782:  CMP             R3, R6
4FC784:  BLT             loc_4FC76E
4FC786:  VSTR            S18, [R4,#0x14]
4FC78A:  STR             R0, [R4,#0x10]
4FC78C:  MOVS            R0, #0
4FC78E:  STRD.W          R11, R10, [R4,#0x18]
4FC792:  VSTR            S16, [R4,#0x20]
4FC796:  STRD.W          R9, R0, [R4,#0x24]
4FC79A:  MOV             R0, R4
4FC79C:  VPOP            {D8-D9}
4FC7A0:  ADD             SP, SP, #4
4FC7A2:  POP.W           {R8-R11}
4FC7A6:  POP             {R4-R7,PC}
