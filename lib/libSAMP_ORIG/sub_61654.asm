; =========================================================
; Game Engine Function: sub_61654
; Address            : 0x61654 - 0x6168E
; =========================================================

61654:  PUSH            {R7,LR}
61656:  MOV             R7, SP
61658:  LDR             R1, =(off_117650 - 0x6165E)
6165A:  ADD             R1, PC; off_117650
6165C:  LDR             R1, [R1]
6165E:  BLX             R1
61660:  LDR             R1, =(off_114B10 - 0x61666)
61662:  ADD             R1, PC; off_114B10
61664:  LDR             R1, [R1]; dword_1A442C
61666:  LDR             R1, [R1]
61668:  CBZ             R1, loc_6168A
6166A:  LDR             R1, =(byte_117654 - 0x61670)
6166C:  ADD             R1, PC; byte_117654
6166E:  CBZ             R0, loc_61682
61670:  LDRB            R2, [R1]
61672:  CBNZ            R2, loc_61682
61674:  LDR             R2, =(off_114B14 - 0x6167A)
61676:  ADD             R2, PC; off_114B14
61678:  LDR             R2, [R2]; byte_1A44F4
6167A:  LDRB            R3, [R2]
6167C:  EOR.W           R3, R3, #1
61680:  STRB            R3, [R2]
61682:  CMP             R0, #0
61684:  IT NE
61686:  MOVNE           R0, #1
61688:  STRB            R0, [R1]
6168A:  MOVS            R0, #0
6168C:  POP             {R7,PC}
