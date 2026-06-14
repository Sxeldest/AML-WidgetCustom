; =========================================================
; Game Engine Function: sub_21D774
; Address            : 0x21D774 - 0x21D7B4
; =========================================================

21D774:  PUSH            {R4,R6,R7,LR}
21D776:  ADD             R7, SP, #8
21D778:  MOV             R4, R0
21D77A:  LDR             R0, =(RwEngineInstance_ptr - 0x21D782)
21D77C:  LDR             R1, =(dword_6BD630 - 0x21D784)
21D77E:  ADD             R0, PC; RwEngineInstance_ptr
21D780:  ADD             R1, PC; dword_6BD630
21D782:  LDR             R0, [R0]; RwEngineInstance
21D784:  LDR             R1, [R1]
21D786:  LDR             R0, [R0]
21D788:  LDR             R0, [R0,R1]
21D78A:  CBZ             R0, loc_21D7A2
21D78C:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
21D790:  LDR             R0, =(RwEngineInstance_ptr - 0x21D79A)
21D792:  MOVS            R2, #0
21D794:  LDR             R1, =(dword_6BD630 - 0x21D79C)
21D796:  ADD             R0, PC; RwEngineInstance_ptr
21D798:  ADD             R1, PC; dword_6BD630
21D79A:  LDR             R0, [R0]; RwEngineInstance
21D79C:  LDR             R1, [R1]
21D79E:  LDR             R0, [R0]
21D7A0:  STR             R2, [R0,R1]
21D7A2:  BLX             j__Z21_rpWorldPipelineClosev; _rpWorldPipelineClose(void)
21D7A6:  LDR             R0, =(dword_6BD634 - 0x21D7AC)
21D7A8:  ADD             R0, PC; dword_6BD634
21D7AA:  LDR             R1, [R0]
21D7AC:  SUBS            R1, #1
21D7AE:  STR             R1, [R0]
21D7B0:  MOV             R0, R4
21D7B2:  POP             {R4,R6,R7,PC}
