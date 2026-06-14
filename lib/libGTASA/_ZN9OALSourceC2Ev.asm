; =========================================================
; Game Engine Function: _ZN9OALSourceC2Ev
; Address            : 0x27F914 - 0x27F962
; =========================================================

27F914:  LDR             R1, =(_ZN7OALBase11livingCountE_ptr - 0x27F922)
27F916:  MOVS            R3, #1
27F918:  LDR             R2, =(_ZTV7OALBase_ptr - 0x27F928)
27F91A:  VMOV.I32        Q8, #0
27F91E:  ADD             R1, PC; _ZN7OALBase11livingCountE_ptr
27F920:  LDR.W           R12, =(_ZTV9OALSource_ptr - 0x27F92C)
27F924:  ADD             R2, PC; _ZTV7OALBase_ptr
27F926:  LDR             R1, [R1]; OALBase::livingCount ...
27F928:  ADD             R12, PC; _ZTV9OALSource_ptr
27F92A:  LDR             R2, [R2]; `vtable for'OALBase ...
27F92C:  LDR.W           R12, [R12]; `vtable for'OALSource ...
27F930:  ADDS            R2, #8
27F932:  STRD.W          R2, R3, [R0]
27F936:  LDR             R2, [R1]; OALBase::livingCount
27F938:  ADD.W           R3, R0, #0x14
27F93C:  ADDS            R2, #1
27F93E:  STR             R2, [R1]; OALBase::livingCount
27F940:  ADD.W           R1, R0, #8
27F944:  VST1.32         {D16-D17}, [R3]
27F948:  MOVS            R2, #0
27F94A:  VST1.32         {D16-D17}, [R1]
27F94E:  ADD.W           R1, R12, #8
27F952:  STR             R1, [R0]
27F954:  MOV.W           R1, #0x3F800000
27F958:  STRD.W          R1, R2, [R0,#0x24]
27F95C:  STRB.W          R2, [R0,#0x2C]
27F960:  BX              LR
