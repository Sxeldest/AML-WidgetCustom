; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy10MoveMemoryEv
; Address            : 0x38A812 - 0x38A89E
; =========================================================

38A812:  PUSH            {R4-R7,LR}
38A814:  ADD             R7, SP, #0xC
38A816:  PUSH.W          {R8}
38A81A:  MOV             R8, R0
38A81C:  LDR.W           R0, [R8,#4]; this
38A820:  CBZ             R0, loc_38A892
38A822:  LDRB            R1, [R0,#4]
38A824:  LSLS            R1, R1, #0x1C; void *
38A826:  BMI             loc_38A85C
38A828:  LDRSH.W         R1, [R8,#8]
38A82C:  CMP             R1, #1
38A82E:  BLT             loc_38A892
38A830:  BLX             j__ZN18CAnimBlendSequence10MoveMemoryEv; CAnimBlendSequence::MoveMemory(void)
38A834:  MOV             R5, R0
38A836:  LDRSH.W         R0, [R8,#8]
38A83A:  CMP             R0, #2
38A83C:  BLT             loc_38A894
38A83E:  MOVS            R6, #1
38A840:  MOVS            R4, #0xC
38A842:  LDR.W           R0, [R8,#4]
38A846:  ADD             R0, R4; this
38A848:  BLX             j__ZN18CAnimBlendSequence10MoveMemoryEv; CAnimBlendSequence::MoveMemory(void)
38A84C:  ORRS            R5, R0
38A84E:  LDRSH.W         R0, [R8,#8]
38A852:  ADDS            R6, #1
38A854:  ADDS            R4, #0xC
38A856:  CMP             R6, R0
38A858:  BLT             loc_38A842
38A85A:  B               loc_38A894
38A85C:  LDR             R5, [R0,#8]
38A85E:  CBZ             R5, loc_38A892
38A860:  MOV             R0, R5; this
38A862:  BLX             j__ZN10CMemoryMgr10MoveMemoryEPv; CMemoryMgr::MoveMemory(void *)
38A866:  CMP             R5, R0
38A868:  BEQ             loc_38A892
38A86A:  LDRSH.W         R1, [R8,#8]
38A86E:  CMP             R1, #1
38A870:  BLT             loc_38A88E
38A872:  SUBS            R0, R0, R5
38A874:  MOVS            R1, #0
38A876:  MOVS            R2, #8
38A878:  LDR.W           R3, [R8,#4]
38A87C:  ADDS            R1, #1
38A87E:  LDR             R6, [R3,R2]
38A880:  ADD             R6, R0
38A882:  STR             R6, [R3,R2]
38A884:  ADDS            R2, #0xC
38A886:  LDRSH.W         R3, [R8,#8]
38A88A:  CMP             R1, R3
38A88C:  BLT             loc_38A878
38A88E:  MOVS            R5, #1
38A890:  B               loc_38A894
38A892:  MOVS            R5, #0
38A894:  AND.W           R0, R5, #1
38A898:  POP.W           {R8}
38A89C:  POP             {R4-R7,PC}
