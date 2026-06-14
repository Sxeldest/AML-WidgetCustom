; =========================================================
; Game Engine Function: _ZN7OALBaseD0Ev
; Address            : 0x280040 - 0x28005A
; =========================================================

280040:  LDR             R1, =(_ZTV7OALBase_ptr - 0x280048)
280042:  LDR             R2, =(_ZN7OALBase11livingCountE_ptr - 0x28004A)
280044:  ADD             R1, PC; _ZTV7OALBase_ptr
280046:  ADD             R2, PC; _ZN7OALBase11livingCountE_ptr
280048:  LDR             R1, [R1]; `vtable for'OALBase ...
28004A:  LDR             R2, [R2]; OALBase::livingCount ...
28004C:  ADDS            R1, #8
28004E:  STR             R1, [R0]
280050:  LDR             R1, [R2]; OALBase::livingCount
280052:  SUBS            R1, #1
280054:  STR             R1, [R2]; OALBase::livingCount
280056:  B.W             j__ZdlPv; operator delete(void *)
