; =========================================================
; Game Engine Function: sub_1A40E0
; Address            : 0x1A40E0 - 0x1A4104
; =========================================================

1A40E0:  PUSH            {R4,R6,R7,LR}
1A40E2:  ADD             R7, SP, #8
1A40E4:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimationsE_ptr - 0x1A40F6)
1A40E6:  MOVW            R4, #0x15A0
1A40EA:  MOVW            R1, #0xEA48
1A40EE:  MOVT            R4, #0xFFFF
1A40F2:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimationsE_ptr
1A40F4:  LDR             R0, [R0]; CAnimManager::ms_aAnimations ...
1A40F6:  ADD             R0, R1; this
1A40F8:  BLX             j__ZN19CAnimBlendHierarchyD2Ev; CAnimBlendHierarchy::~CAnimBlendHierarchy()
1A40FC:  SUBS            R0, #0x18
1A40FE:  ADDS            R4, #0x18
1A4100:  BNE             loc_1A40F8
1A4102:  POP             {R4,R6,R7,PC}
