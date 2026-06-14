; =========================================================
; Game Engine Function: _ZN20CTaskSimpleIKManagerC2Ev
; Address            : 0x4EFAB8 - 0x4EFADC
; =========================================================

4EFAB8:  PUSH            {R7,LR}
4EFABA:  MOV             R7, SP
4EFABC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EFAC0:  LDR             R1, =(_ZTV20CTaskSimpleIKManager_ptr - 0x4EFACE)
4EFAC2:  VMOV.I32        Q8, #0
4EFAC6:  ADD.W           R2, R0, #8
4EFACA:  ADD             R1, PC; _ZTV20CTaskSimpleIKManager_ptr
4EFACC:  VST1.32         {D16-D17}, [R2]
4EFAD0:  MOVS            R2, #0
4EFAD2:  LDR             R1, [R1]; `vtable for'CTaskSimpleIKManager ...
4EFAD4:  STRB            R2, [R0,#0x18]
4EFAD6:  ADDS            R1, #8
4EFAD8:  STR             R1, [R0]
4EFADA:  POP             {R7,PC}
