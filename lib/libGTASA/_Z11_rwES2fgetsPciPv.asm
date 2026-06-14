; =========================================================
; Game Engine Function: _Z11_rwES2fgetsPciPv
; Address            : 0x1E271C - 0x1E277A
; =========================================================

1E271C:  PUSH            {R4-R7,LR}
1E271E:  ADD             R7, SP, #0xC
1E2720:  PUSH.W          {R8-R10}
1E2724:  MOV             R5, R2
1E2726:  MOV             R8, R0
1E2728:  CMP             R1, #2
1E272A:  BLT             loc_1E2772
1E272C:  LDR             R4, =(dword_6BD01C - 0x1E273A)
1E272E:  SUB.W           R9, R1, #1
1E2732:  MOV.W           R10, #0
1E2736:  ADD             R4, PC; dword_6BD01C
1E2738:  ADD.W           R6, R8, R10
1E273C:  MOV             R0, R5; this
1E273E:  MOV             R1, R6; ptr
1E2740:  MOVS            R2, #1; n
1E2742:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
1E2746:  CMP             R0, #0
1E2748:  STR             R0, [R4]
1E274A:  BNE             loc_1E275E
1E274C:  LDRB            R0, [R6]
1E274E:  CMP             R0, #0xD
1E2750:  BEQ             loc_1E273C
1E2752:  ADD.W           R10, R10, #1
1E2756:  CMP             R0, #0xA
1E2758:  BEQ             loc_1E275E
1E275A:  CMP             R10, R9
1E275C:  BLT             loc_1E2738
1E275E:  MOVS            R0, #0
1E2760:  CMP.W           R10, #1
1E2764:  ITT GE
1E2766:  STRBGE.W        R0, [R8,R10]
1E276A:  MOVGE           R0, R8
1E276C:  POP.W           {R8-R10}
1E2770:  POP             {R4-R7,PC}
1E2772:  MOVS            R0, #0
1E2774:  POP.W           {R8-R10}
1E2778:  POP             {R4-R7,PC}
