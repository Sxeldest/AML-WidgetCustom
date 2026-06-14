; =========================================================
; Game Engine Function: _ZN27CTaskComplexFallAndStayDownC2Ei
; Address            : 0x52BC68 - 0x52BC8E
; =========================================================

52BC68:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexFallAndStayDown::CTaskComplexFallAndStayDown(int)'
52BC6A:  ADD             R7, SP, #8
52BC6C:  MOV             R4, R1
52BC6E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52BC72:  LDR             R1, =(_ZTV27CTaskComplexFallAndStayDown_ptr - 0x52BC7A)
52BC74:  CMP             R4, #3
52BC76:  ADD             R1, PC; _ZTV27CTaskComplexFallAndStayDown_ptr
52BC78:  LDR             R1, [R1]; `vtable for'CTaskComplexFallAndStayDown ...
52BC7A:  ADD.W           R1, R1, #8
52BC7E:  STR             R1, [R0]
52BC80:  ITT LS
52BC82:  ADDLS.W         R1, R4, #0x18
52BC86:  STRLS           R1, [R0,#0xC]
52BC88:  MOVS            R1, #0
52BC8A:  STR             R1, [R0,#0x10]
52BC8C:  POP             {R4,R6,R7,PC}
