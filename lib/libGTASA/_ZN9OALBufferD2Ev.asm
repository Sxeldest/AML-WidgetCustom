; =========================================================
; Game Engine Function: _ZN9OALBufferD2Ev
; Address            : 0x27F840 - 0x27F89A
; =========================================================

27F840:  PUSH            {R4-R7,LR}
27F842:  ADD             R7, SP, #0xC
27F844:  PUSH.W          {R8}
27F848:  MOV             R4, R0
27F84A:  LDR             R0, =(_ZTV9OALBuffer_ptr - 0x27F852)
27F84C:  MOV             R6, R4
27F84E:  ADD             R0, PC; _ZTV9OALBuffer_ptr
27F850:  LDR             R0, [R0]; `vtable for'OALBuffer ...
27F852:  ADDS            R0, #8
27F854:  STR.W           R0, [R6],#8
27F858:  MOVS            R0, #1
27F85A:  MOV             R1, R6
27F85C:  BLX             j_alDeleteBuffers
27F860:  MOV             R5, R4
27F862:  MOV.W           R8, #0
27F866:  LDR.W           R0, [R5,#0xC]!
27F86A:  STR.W           R8, [R6]
27F86E:  CBZ             R0, loc_27F87C
27F870:  MOVS            R0, #1
27F872:  MOV             R1, R5
27F874:  BLX             j_alDeleteBuffers
27F878:  STR.W           R8, [R5]
27F87C:  LDR             R0, =(_ZTV7OALBase_ptr - 0x27F884)
27F87E:  LDR             R1, =(_ZN7OALBase11livingCountE_ptr - 0x27F886)
27F880:  ADD             R0, PC; _ZTV7OALBase_ptr
27F882:  ADD             R1, PC; _ZN7OALBase11livingCountE_ptr
27F884:  LDR             R0, [R0]; `vtable for'OALBase ...
27F886:  LDR             R1, [R1]; OALBase::livingCount ...
27F888:  ADDS            R0, #8
27F88A:  STR             R0, [R4]
27F88C:  LDR             R0, [R1]; OALBase::livingCount
27F88E:  SUBS            R0, #1
27F890:  STR             R0, [R1]; OALBase::livingCount
27F892:  MOV             R0, R4
27F894:  POP.W           {R8}
27F898:  POP             {R4-R7,PC}
