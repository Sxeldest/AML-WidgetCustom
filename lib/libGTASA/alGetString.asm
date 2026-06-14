; =========================================================
; Game Engine Function: alGetString
; Address            : 0x25D78C - 0x25D848
; =========================================================

25D78C:  PUSH            {R4,R5,R7,LR}
25D78E:  ADD             R7, SP, #8
25D790:  MOV             R5, R0
25D792:  BLX             j_GetContextRef
25D796:  MOV             R4, R0
25D798:  CBZ             R4, loc_25D7C0
25D79A:  MOVW            R0, #0xA001
25D79E:  SUBS            R0, R5, R0
25D7A0:  CMP             R0, #4; switch 5 cases
25D7A2:  BLS             loc_25D7C6
25D7A4:  MOVW            R0, #0xB001; jumptable 0025D7C6 default case
25D7A8:  SUBS            R0, R5, R0
25D7AA:  CMP             R0, #3; switch 4 cases
25D7AC:  BHI             def_25D7B2; jumptable 0025D7B2 default case
25D7AE:  LDR             R5, =(aOpenalCommunit - 0x25D7B4); "OpenAL Community"
25D7B0:  ADD             R5, PC; "OpenAL Community"
25D7B2:  TBB.W           [PC,R0]; switch jump
25D7B6:  DCB 0x44; jump table for switch statement
25D7B7:  DCB 2
25D7B8:  DCB 0x14
25D7B9:  DCB 0x17
25D7BA:  LDR             R5, =(a11Alsoft1151 - 0x25D7C0); jumptable 0025D7B2 case 1
25D7BC:  ADD             R5, PC; "1.1 ALSOFT 1.15.1"
25D7BE:  B               loc_25D83E; jumptable 0025D7B2 case 0
25D7C0:  MOVS            R5, #0
25D7C2:  MOV             R0, R5
25D7C4:  POP             {R4,R5,R7,PC}
25D7C6:  TBB.W           [PC,R0]; switch jump
25D7CA:  DCB 3; jump table for switch statement
25D7CB:  DCB 0x10
25D7CC:  DCB 0x13
25D7CD:  DCB 0x16
25D7CE:  DCB 0x19
25D7CF:  ALIGN 2
25D7D0:  LDR             R5, =(aInvalidName - 0x25D7D6); jumptable 0025D7C6 case 0
25D7D2:  ADD             R5, PC; "Invalid Name"
25D7D4:  B               loc_25D83E; jumptable 0025D7B2 case 0
25D7D6:  CBNZ            R5, loc_25D802; jumptable 0025D7B2 default case
25D7D8:  LDR             R5, =(aNoError_0 - 0x25D7DE); "No Error"
25D7DA:  ADD             R5, PC; "No Error"
25D7DC:  B               loc_25D83E; jumptable 0025D7B2 case 0
25D7DE:  LDR             R5, =(aOpenalSoft_1 - 0x25D7E4); jumptable 0025D7B2 case 2
25D7E0:  ADD             R5, PC; "OpenAL Soft"
25D7E2:  B               loc_25D83E; jumptable 0025D7B2 case 0
25D7E4:  LDR.W           R5, [R4,#0x8C]; jumptable 0025D7B2 case 3
25D7E8:  B               loc_25D83E; jumptable 0025D7B2 case 0
25D7EA:  LDR             R5, =(aInvalidEnum_0 - 0x25D7F0); jumptable 0025D7C6 case 1
25D7EC:  ADD             R5, PC; "Invalid Enum"
25D7EE:  B               loc_25D83E; jumptable 0025D7B2 case 0
25D7F0:  LDR             R5, =(aInvalidValue_0 - 0x25D7F6); jumptable 0025D7C6 case 2
25D7F2:  ADD             R5, PC; "Invalid Value"
25D7F4:  B               loc_25D83E; jumptable 0025D7B2 case 0
25D7F6:  LDR             R5, =(aInvalidOperati - 0x25D7FC); jumptable 0025D7C6 case 3
25D7F8:  ADD             R5, PC; "Invalid Operation"
25D7FA:  B               loc_25D83E; jumptable 0025D7B2 case 0
25D7FC:  LDR             R5, =(aOutOfMemory_4 - 0x25D802); jumptable 0025D7C6 case 4
25D7FE:  ADD             R5, PC; "Out of Memory"
25D800:  B               loc_25D83E; jumptable 0025D7B2 case 0
25D802:  LDR             R0, =(TrapALError_ptr - 0x25D808)
25D804:  ADD             R0, PC; TrapALError_ptr
25D806:  LDR             R0, [R0]; TrapALError
25D808:  LDRB            R0, [R0]
25D80A:  CMP             R0, #0
25D80C:  ITT NE
25D80E:  MOVNE           R0, #5; sig
25D810:  BLXNE           raise
25D814:  LDREX.W         R0, [R4,#0x50]
25D818:  CBNZ            R0, loc_25D834
25D81A:  ADD.W           R0, R4, #0x50 ; 'P'
25D81E:  MOVW            R1, #0xA002
25D822:  DMB.W           ISH
25D826:  STREX.W         R2, R1, [R0]
25D82A:  CBZ             R2, loc_25D838
25D82C:  LDREX.W         R2, [R0]
25D830:  CMP             R2, #0
25D832:  BEQ             loc_25D826
25D834:  CLREX.W
25D838:  MOVS            R5, #0
25D83A:  DMB.W           ISH
25D83E:  MOV             R0, R4; jumptable 0025D7B2 case 0
25D840:  BLX             j_ALCcontext_DecRef
25D844:  MOV             R0, R5
25D846:  POP             {R4,R5,R7,PC}
