; =========================================================
; Game Engine Function: sub_12892C
; Address            : 0x12892C - 0x12896C
; =========================================================

12892C:  PUSH            {R7,LR}
12892E:  MOV             R7, SP
128930:  LDR             R0, =(byte_314130 - 0x128936)
128932:  ADD             R0, PC; byte_314130
128934:  LDRB            R0, [R0]
128936:  DMB.W           ISH
12893A:  LSLS            R0, R0, #0x1F
12893C:  IT NE
12893E:  POPNE           {R7,PC}
128940:  LDR             R0, =(byte_314130 - 0x128946)
128942:  ADD             R0, PC; byte_314130 ; __guard *
128944:  BLX             j___cxa_guard_acquire
128948:  CBZ             R0, locret_12896A
12894A:  LDR             R1, =(unk_314118 - 0x128956)
12894C:  MOVS            R3, #0
12894E:  LDR             R0, =(sub_128858+1 - 0x128958)
128950:  LDR             R2, =(off_22A540 - 0x12895A)
128952:  ADD             R1, PC; unk_314118 ; obj
128954:  ADD             R0, PC; sub_128858 ; lpfunc
128956:  ADD             R2, PC; off_22A540 ; lpdso_handle
128958:  STR             R3, [R1,#(dword_314128 - 0x314118)]
12895A:  BLX             __cxa_atexit
12895E:  LDR             R0, =(byte_314130 - 0x128964)
128960:  ADD             R0, PC; byte_314130
128962:  POP.W           {R7,LR}
128966:  B.W             sub_2242B0
12896A:  POP             {R7,PC}
