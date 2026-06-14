; =========================================================
; Game Engine Function: _ZN15CPedClothesDesc18SetTextureAndModelEPKcS1_i
; Address            : 0x4573B8 - 0x45741C
; =========================================================

4573B8:  PUSH            {R4-R7,LR}
4573BA:  ADD             R7, SP, #0xC
4573BC:  PUSH.W          {R8}
4573C0:  MOV             R4, R3
4573C2:  MOV             R5, R2
4573C4:  MOV             R8, R0
4573C6:  CBZ             R1, loc_4573DE
4573C8:  MOV             R0, R1; this
4573CA:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4573CE:  MOV             R6, R0
4573D0:  CBZ             R5, loc_4573E4
4573D2:  MOV             R0, R5; this
4573D4:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4573D8:  CMP             R4, #0x12
4573DA:  BCC             loc_4573EA
4573DC:  B               loc_4573F8
4573DE:  MOVS            R6, #0
4573E0:  CMP             R5, #0
4573E2:  BNE             loc_4573D2
4573E4:  MOVS            R0, #0
4573E6:  CMP             R4, #0x12
4573E8:  BCS             loc_4573F8
4573EA:  MOV             R1, #0x3E00F
4573F2:  LSRS            R1, R4
4573F4:  LSLS            R1, R1, #0x1F
4573F6:  BNE             loc_457404
4573F8:  ADD.W           R0, R8, R4,LSL#2
4573FC:  STR             R6, [R0,#0x28]
4573FE:  POP.W           {R8}
457402:  POP             {R4-R7,PC}
457404:  LDR             R1, =(dword_619090 - 0x45740E)
457406:  ADD.W           R2, R8, R4,LSL#2
45740A:  ADD             R1, PC; dword_619090
45740C:  STR             R6, [R2,#0x28]
45740E:  LDR.W           R1, [R1,R4,LSL#2]
457412:  STR.W           R0, [R8,R1,LSL#2]
457416:  POP.W           {R8}
45741A:  POP             {R4-R7,PC}
