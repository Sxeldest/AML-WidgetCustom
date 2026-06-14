; =========================================================
; Game Engine Function: _ZN12COctTreeBaseC2Ev
; Address            : 0x45C95C - 0x45C988
; =========================================================

45C95C:  LDR             R1, =(_ZTV12COctTreeBase_ptr - 0x45C96A); Alternative name is 'COctTreeBase::COctTreeBase(void)'
45C95E:  MOVS            R2, #0
45C960:  MOV.W           R3, #0xFFFFFFFF
45C964:  STR             R2, [R0,#4]
45C966:  ADD             R1, PC; _ZTV12COctTreeBase_ptr
45C968:  STRD.W          R2, R2, [R0,#0x1C]
45C96C:  STR             R2, [R0,#0x24]
45C96E:  LDR             R1, [R1]; `vtable for'COctTreeBase ...
45C970:  STR.W           R3, [R0,#0x16]
45C974:  STR.W           R3, [R0,#0x12]
45C978:  ADDS            R1, #8
45C97A:  STR.W           R3, [R0,#0xE]
45C97E:  STR.W           R3, [R0,#0xA]
45C982:  STRB            R2, [R0,#8]
45C984:  STR             R1, [R0]
45C986:  BX              LR
