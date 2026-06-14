; =========================================================
; Game Engine Function: _ZN8CCarCtrl19FindSequenceElementEi
; Address            : 0x2E7718 - 0x2E774E
; =========================================================

2E7718:  PUSH            {R7,LR}
2E771A:  MOV             R7, SP
2E771C:  LDR             R1, =(SequenceRandomOffset_ptr - 0x2E7724)
2E771E:  LDR             R2, =(bSequenceOtherWay_ptr - 0x2E7726)
2E7720:  ADD             R1, PC; SequenceRandomOffset_ptr
2E7722:  ADD             R2, PC; bSequenceOtherWay_ptr
2E7724:  LDR             R1, [R1]; SequenceRandomOffset
2E7726:  LDR             R3, [R2]; bSequenceOtherWay
2E7728:  LDR             R2, [R1]
2E772A:  LDRB            R1, [R3]
2E772C:  CBZ             R1, loc_2E773A
2E772E:  LDR             R1, =(SequenceElements_ptr - 0x2E7736)
2E7730:  ADD             R0, R2
2E7732:  ADD             R1, PC; SequenceElements_ptr
2E7734:  LDR             R1, [R1]; SequenceElements
2E7736:  LDR             R1, [R1]
2E7738:  B               loc_2E7746
2E773A:  LDR             R1, =(SequenceElements_ptr - 0x2E7742)
2E773C:  SUBS            R0, R2, R0
2E773E:  ADD             R1, PC; SequenceElements_ptr
2E7740:  LDR             R1, [R1]; SequenceElements
2E7742:  LDR             R1, [R1]
2E7744:  ADD             R0, R1
2E7746:  BLX             __aeabi_idivmod
2E774A:  MOV             R0, R1
2E774C:  POP             {R7,PC}
