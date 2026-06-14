; =========================================================
; Game Engine Function: _ZN8CCarCtrl12InitSequenceEi
; Address            : 0x2E76DC - 0x2E770C
; =========================================================

2E76DC:  PUSH            {R4,R6,R7,LR}
2E76DE:  ADD             R7, SP, #8
2E76E0:  LDR             R1, =(SequenceElements_ptr - 0x2E76E6)
2E76E2:  ADD             R1, PC; SequenceElements_ptr
2E76E4:  LDR             R4, [R1]; SequenceElements
2E76E6:  STR             R0, [R4]
2E76E8:  BLX             rand
2E76EC:  LDR             R1, [R4]
2E76EE:  BLX             __aeabi_idivmod
2E76F2:  LDR             R0, =(SequenceRandomOffset_ptr - 0x2E76FA)
2E76F4:  LDR             R2, =(bSequenceOtherWay_ptr - 0x2E76FC)
2E76F6:  ADD             R0, PC; SequenceRandomOffset_ptr
2E76F8:  ADD             R2, PC; bSequenceOtherWay_ptr
2E76FA:  LDR             R0, [R0]; SequenceRandomOffset
2E76FC:  LDR             R4, [R2]; bSequenceOtherWay
2E76FE:  STR             R1, [R0]
2E7700:  BLX             rand
2E7704:  UBFX.W          R0, R0, #4, #1
2E7708:  STRB            R0, [R4]
2E770A:  POP             {R4,R6,R7,PC}
