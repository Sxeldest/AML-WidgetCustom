; =========================================================
; Game Engine Function: _ZN16CTaskSimpleGetUpC2Ev
; Address            : 0x52AFE8 - 0x52B002
; =========================================================

52AFE8:  PUSH            {R7,LR}; Alternative name is 'CTaskSimpleGetUp::CTaskSimpleGetUp(void)'
52AFEA:  MOV             R7, SP
52AFEC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52AFF0:  LDR             R1, =(_ZTV16CTaskSimpleGetUp_ptr - 0x52AFFA)
52AFF2:  MOVS            R2, #0
52AFF4:  STRH            R2, [R0,#8]
52AFF6:  ADD             R1, PC; _ZTV16CTaskSimpleGetUp_ptr
52AFF8:  STR             R2, [R0,#0xC]
52AFFA:  LDR             R1, [R1]; `vtable for'CTaskSimpleGetUp ...
52AFFC:  ADDS            R1, #8
52AFFE:  STR             R1, [R0]
52B000:  POP             {R7,PC}
