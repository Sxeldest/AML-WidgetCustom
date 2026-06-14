; =========================================================
; Game Engine Function: _ZNSt16nested_exceptionC2Ev
; Address            : 0xE3068 - 0xE3082
; =========================================================

E3068:  PUSH            {R4,R6,R7,LR}; Alternative name is 'std::nested_exception::nested_exception(void)'
E306A:  ADD             R7, SP, #8
E306C:  MOV             R4, R0
E306E:  LDR             R0, =(_ZTVSt16nested_exception_ptr - 0xE3074)
E3070:  ADD             R0, PC; _ZTVSt16nested_exception_ptr
E3072:  LDR             R0, [R0]; `vtable for'std::nested_exception ...
E3074:  ADDS            R0, #8
E3076:  STR             R0, [R4]
E3078:  BLX             j___cxa_current_primary_exception
E307C:  STR             R0, [R4,#4]
E307E:  MOV             R0, R4
E3080:  POP             {R4,R6,R7,PC}
