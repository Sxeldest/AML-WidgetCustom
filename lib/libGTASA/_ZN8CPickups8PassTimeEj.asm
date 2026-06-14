; =========================================================
; Game Engine Function: _ZN8CPickups8PassTimeEj
; Address            : 0x321634 - 0x321678
; =========================================================

321634:  PUSH            {R4,R6,R7,LR}
321636:  ADD             R7, SP, #8
321638:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x321642)
32163A:  MOV.W           R12, #0
32163E:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
321640:  LDR             R2, [R1]; CPickups::aPickUps ...
321642:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x321648)
321644:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
321646:  LDR.W           LR, [R1]; CPickups::aPickUps ...
32164A:  MOVS            R1, #0
32164C:  B               loc_321658
32164E:  ADDS            R1, #0x20 ; ' '
321650:  CMP.W           R1, #0x4D80
321654:  IT EQ
321656:  POPEQ           {R4,R6,R7,PC}
321658:  ADDS            R3, R2, R1
32165A:  LDRB            R3, [R3,#0x1C]
32165C:  ORR.W           R3, R3, #0x10
321660:  CMP             R3, #0x10
321662:  BEQ             loc_32164E
321664:  ADD.W           R3, LR, R1
321668:  LDR             R4, [R3,#0xC]
32166A:  CMP             R4, R0
32166C:  ITEE LS
32166E:  STRLS.W         R12, [R3,#0xC]
321672:  SUBHI           R4, R4, R0
321674:  STRHI           R4, [R3,#0xC]
321676:  B               loc_32164E
