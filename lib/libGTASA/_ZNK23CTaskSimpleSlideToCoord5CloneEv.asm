; =========================================================
; Game Engine Function: _ZNK23CTaskSimpleSlideToCoord5CloneEv
; Address            : 0x528714 - 0x5287CE
; =========================================================

528714:  PUSH            {R4-R7,LR}
528716:  ADD             R7, SP, #0xC
528718:  PUSH.W          {R8,R9,R11}
52871C:  SUB             SP, SP, #0x18; float
52871E:  MOV             R4, R0
528720:  MOVS            R0, #dword_80; this
528722:  LDRB.W          R6, [R4,#0x78]
528726:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52872A:  LDRD.W          R9, R8, [R4,#0x70]
52872E:  ADD.W           R5, R4, #0x64 ; 'd'
528732:  TST.W           R6, #2
528736:  BNE             loc_52876E
528738:  MOVS            R1, #0; bool
52873A:  MOVS            R4, #0
52873C:  BLX             j__ZN15CTaskSimpleAnimC2Eb; CTaskSimpleAnim::CTaskSimpleAnim(bool)
528740:  LDR             R1, =(_ZTV23CTaskSimpleSlideToCoord_ptr - 0x52874A)
528742:  STRH.W          R4, [R0,#0x4C]
528746:  ADD             R1, PC; _ZTV23CTaskSimpleSlideToCoord_ptr
528748:  STRD.W          R4, R4, [R0,#0x44]
52874C:  LDR             R1, [R1]; `vtable for'CTaskSimpleSlideToCoord ...
52874E:  ADDS            R1, #8
528750:  STR             R1, [R0]
528752:  LDRB.W          R2, [R0,#0x78]
528756:  LDR             R1, [R5,#8]
528758:  VLDR            D16, [R5]
52875C:  STRD.W          R1, R9, [R0,#0x6C]
528760:  AND.W           R1, R2, #0xFC
528764:  ORR.W           R1, R1, #1
528768:  STR.W           R8, [R0,#0x74]
52876C:  B               loc_5287BE
52876E:  LDRB            R2, [R4,#0xC]
528770:  MOVS            R6, #0
528772:  LDR             R3, [R4,#0x5C]; int
528774:  VLDR            S0, [R4,#0x38]
528778:  LDR             R1, [R4,#0x40]
52877A:  STRD.W          R6, R6, [SP,#0x30+var_20]; bool
52877E:  UBFX.W          R2, R2, #4, #1
528782:  STR             R2, [SP,#0x30+var_24]; bool
528784:  ADD.W           R2, R4, #0x25 ; '%'; char *
528788:  STRD.W          R1, R6, [SP,#0x30+var_2C]; int
52878C:  ADD.W           R1, R4, #0xD; char *
528790:  VSTR            S0, [SP,#0x30+var_30]
528794:  BLX             j__ZN23CTaskSimpleRunNamedAnimC2EPKcS1_ifibbbb_0; CTaskSimpleRunNamedAnim::CTaskSimpleRunNamedAnim(char const*,char const*,int,float,int,bool,bool,bool,bool)
528798:  LDR             R1, =(_ZTV23CTaskSimpleSlideToCoord_ptr - 0x52879E)
52879A:  ADD             R1, PC; _ZTV23CTaskSimpleSlideToCoord_ptr
52879C:  LDR             R1, [R1]; `vtable for'CTaskSimpleSlideToCoord ...
52879E:  ADDS            R1, #8
5287A0:  STR             R1, [R0]
5287A2:  LDR             R1, [R5,#8]
5287A4:  LDRB.W          R2, [R0,#0x78]
5287A8:  VLDR            D16, [R5]
5287AC:  STRD.W          R1, R9, [R0,#0x6C]
5287B0:  MOV.W           R1, #0xFFFFFFFF
5287B4:  STR.W           R8, [R0,#0x74]
5287B8:  STR             R1, [R0,#0x7C]
5287BA:  ORR.W           R1, R2, #3
5287BE:  STRB.W          R1, [R0,#0x78]
5287C2:  VSTR            D16, [R0,#0x64]
5287C6:  ADD             SP, SP, #0x18
5287C8:  POP.W           {R8,R9,R11}
5287CC:  POP             {R4-R7,PC}
