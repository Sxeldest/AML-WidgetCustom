; =========================================================
; Game Engine Function: _ZNK27CTaskComplexFallAndStayDown5CloneEv
; Address            : 0x532B7C - 0x532BA0
; =========================================================

532B7C:  PUSH            {R4,R5,R7,LR}
532B7E:  ADD             R7, SP, #8
532B80:  MOV             R4, R0
532B82:  MOVS            R0, #dword_14; this
532B84:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
532B88:  LDRD.W          R5, R4, [R4,#0xC]
532B8C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
532B90:  LDR             R1, =(_ZTV27CTaskComplexFallAndStayDown_ptr - 0x532B9A)
532B92:  STRD.W          R5, R4, [R0,#0xC]
532B96:  ADD             R1, PC; _ZTV27CTaskComplexFallAndStayDown_ptr
532B98:  LDR             R1, [R1]; `vtable for'CTaskComplexFallAndStayDown ...
532B9A:  ADDS            R1, #8
532B9C:  STR             R1, [R0]
532B9E:  POP             {R4,R5,R7,PC}
