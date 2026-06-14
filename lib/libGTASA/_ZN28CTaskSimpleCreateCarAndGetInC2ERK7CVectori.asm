; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCreateCarAndGetInC2ERK7CVectori
; Address            : 0x5062E4 - 0x506314
; =========================================================

5062E4:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleCreateCarAndGetIn::CTaskSimpleCreateCarAndGetIn(CVector const&, int)'
5062E6:  ADD             R7, SP, #8
5062E8:  MOV             R4, R2
5062EA:  MOV             R5, R1
5062EC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5062F0:  LDR             R1, =(_ZTV28CTaskSimpleCreateCarAndGetIn_ptr - 0x5062F8)
5062F2:  MOVS            R2, #0
5062F4:  ADD             R1, PC; _ZTV28CTaskSimpleCreateCarAndGetIn_ptr
5062F6:  LDR             R1, [R1]; `vtable for'CTaskSimpleCreateCarAndGetIn ...
5062F8:  ADDS            R1, #8
5062FA:  STR             R1, [R0]
5062FC:  VLDR            D16, [R5]
506300:  LDR             R1, [R5,#8]
506302:  STRD.W          R1, R4, [R0,#0x10]
506306:  STR             R2, [R0,#0x18]
506308:  STRD.W          R2, R2, [R0,#0x28]
50630C:  STRH            R2, [R0,#0x30]
50630E:  VSTR            D16, [R0,#8]
506312:  POP             {R4,R5,R7,PC}
