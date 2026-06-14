; =========================================================
; Game Engine Function: _ZN18CTaskComplexFacialC2Ev
; Address            : 0x540E64 - 0x540EB8
; =========================================================

540E64:  PUSH            {R4,R6,R7,LR}
540E66:  ADD             R7, SP, #8
540E68:  MOV             R4, R0
540E6A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
540E6E:  LDR             R0, =(_ZTV18CTaskComplexFacial_ptr - 0x540E7A)
540E70:  MOV.W           R1, #0xFFFFFFFF
540E74:  STR             R1, [R4,#0x10]
540E76:  ADD             R0, PC; _ZTV18CTaskComplexFacial_ptr
540E78:  STR             R1, [R4,#0x18]
540E7A:  LDR             R0, [R0]; `vtable for'CTaskComplexFacial ...
540E7C:  ADDS            R0, #8
540E7E:  STR             R0, [R4]
540E80:  BLX             rand
540E84:  UXTH            R0, R0
540E86:  VLDR            S2, =0.000015259
540E8A:  VMOV            S0, R0
540E8E:  MOVS            R0, #0
540E90:  VCVT.F32.S32    S0, S0
540E94:  VMUL.F32        S0, S0, S2
540E98:  VLDR            S2, =100.0
540E9C:  VMUL.F32        S0, S0, S2
540EA0:  VCVT.S32.F32    S0, S0
540EA4:  STRH.W          R0, [R4,#0xD]
540EA8:  VMOV            R1, S0
540EAC:  CMP             R1, #0x46 ; 'F'
540EAE:  IT GT
540EB0:  MOVGT           R0, #1
540EB2:  STRB            R0, [R4,#0xC]
540EB4:  MOV             R0, R4
540EB6:  POP             {R4,R6,R7,PC}
