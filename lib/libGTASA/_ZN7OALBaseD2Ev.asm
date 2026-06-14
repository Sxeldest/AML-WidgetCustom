; =========================================================
; Game Engine Function: _ZN7OALBaseD2Ev
; Address            : 0x280020 - 0x280038
; =========================================================

280020:  LDR             R1, =(_ZTV7OALBase_ptr - 0x280028)
280022:  LDR             R2, =(_ZN7OALBase11livingCountE_ptr - 0x28002A)
280024:  ADD             R1, PC; _ZTV7OALBase_ptr
280026:  ADD             R2, PC; _ZN7OALBase11livingCountE_ptr
280028:  LDR             R1, [R1]; `vtable for'OALBase ...
28002A:  LDR             R2, [R2]; OALBase::livingCount ...
28002C:  ADDS            R1, #8
28002E:  STR             R1, [R0]
280030:  LDR             R1, [R2]; OALBase::livingCount
280032:  SUBS            R1, #1
280034:  STR             R1, [R2]; OALBase::livingCount
280036:  BX              LR
