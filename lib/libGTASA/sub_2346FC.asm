; =========================================================
; Game Engine Function: sub_2346FC
; Address            : 0x2346FC - 0x2347BE
; =========================================================

2346FC:  PUSH            {R4-R7,LR}
2346FE:  ADD             R7, SP, #0xC
234700:  PUSH.W          {R8,R9,R11}
234704:  MOV             R6, R0
234706:  MOV             R4, R2
234708:  LDR             R0, [R6,#4]
23470A:  MOV             R8, R1
23470C:  CBZ             R0, loc_234744
23470E:  LDRD.W          R1, R2, [R0,#4]
234712:  CMP             R2, R1
234714:  BLE             loc_234744
234716:  LDR             R0, [R0]
234718:  SUB.W           R9, R2, R1
23471C:  CMP             R9, R4
23471E:  IT GT
234720:  MOVGT           R9, R4
234722:  ADD             R0, R1; void *
234724:  MOV             R1, R8; void *
234726:  MOV             R2, R9; size_t
234728:  BLX             memcpy_1
23472C:  LDR             R0, [R6,#4]
23472E:  SUB.W           R4, R4, R9
234732:  LDR             R1, [R0,#4]
234734:  ADD             R1, R9
234736:  STR             R1, [R0,#4]
234738:  LDR             R0, [R6,#8]
23473A:  ADD             R0, R9
23473C:  STR             R0, [R6,#8]
23473E:  CMP             R4, #1
234740:  BGE             loc_23474C
234742:  B               loc_2347B2
234744:  MOV.W           R9, #0
234748:  CMP             R4, #1
23474A:  BLT             loc_2347B2
23474C:  MOVS            R0, #0x10; byte_count
23474E:  BLX             malloc
234752:  MOV             R5, R0
234754:  CBZ             R5, loc_234782
234756:  CMP.W           R4, #0x1000
23475A:  MOV             R0, R4
23475C:  IT LE
23475E:  MOVLE.W         R0, #0x1000; byte_count
234762:  STR             R0, [R5,#8]
234764:  BLX             malloc
234768:  CMP             R0, #0
23476A:  STR             R0, [R5]
23476C:  BEQ             loc_23478C
23476E:  MOVS            R1, #0
234770:  STR             R1, [R5,#0xC]
234772:  STR             R4, [R5,#4]
234774:  LDR             R1, [R6,#4]
234776:  CBZ             R1, loc_23479C
234778:  ADD.W           R0, R1, #0xC
23477C:  STR             R5, [R0]
23477E:  LDR             R0, [R5]
234780:  B               loc_2347A0
234782:  MOV             R0, #0xFFFFFFFE
234786:  POP.W           {R8,R9,R11}
23478A:  POP             {R4-R7,PC}
23478C:  MOV             R0, R5; p
23478E:  BLX             free
234792:  MOV             R0, #0xFFFFFFFD
234796:  POP.W           {R8,R9,R11}
23479A:  POP             {R4-R7,PC}
23479C:  LDR             R1, [R6]
23479E:  CBZ             R1, loc_2347BA
2347A0:  LDR             R1, [R6,#8]
2347A2:  MOV             R2, R4; size_t
2347A4:  ADD             R1, R4
2347A6:  STRD.W          R5, R1, [R6,#4]
2347AA:  ADD.W           R1, R8, R9; void *
2347AE:  BLX             memcpy_1
2347B2:  MOVS            R0, #0
2347B4:  POP.W           {R8,R9,R11}
2347B8:  POP             {R4-R7,PC}
2347BA:  MOV             R0, R6
2347BC:  B               loc_23477C
