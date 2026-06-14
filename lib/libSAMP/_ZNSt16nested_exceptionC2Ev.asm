; =========================================================
; Game Engine Function: _ZNSt16nested_exceptionC2Ev
; Address            : 0x1ED780 - 0x1ED79A
; =========================================================

1ED780:  PUSH            {R4,R6,R7,LR}
1ED782:  ADD             R7, SP, #8
1ED784:  MOV             R4, R0
1ED786:  LDR             R0, =(_ZTVSt16nested_exception_ptr - 0x1ED78C)
1ED788:  ADD             R0, PC; _ZTVSt16nested_exception_ptr
1ED78A:  LDR             R0, [R0]; `vtable for'std::nested_exception ...
1ED78C:  ADDS            R0, #8
1ED78E:  STR             R0, [R4]
1ED790:  BLX             j___cxa_current_primary_exception
1ED794:  STR             R0, [R4,#4]
1ED796:  MOV             R0, R4
1ED798:  POP             {R4,R6,R7,PC}
