; =========================================================
; Game Engine Function: sub_180874
; Address            : 0x180874 - 0x18095A
; =========================================================

180874:  PUSH            {R4-R7,LR}
180876:  ADD             R7, SP, #0xC
180878:  PUSH.W          {R8-R11}
18087C:  SUB             SP, SP, #0x24
18087E:  LDR             R5, =(byte_381C18 - 0x18088A)
180880:  MOV             R8, R2
180882:  MOV             R11, R3
180884:  MOV             R4, R1
180886:  ADD             R5, PC; byte_381C18
180888:  MOV             R6, R0
18088A:  LDRD.W          R1, R0, [R7,#arg_4]
18088E:  LDRB            R2, [R5]
180890:  STRD.W          R1, R0, [SP,#0x40+var_24]
180894:  CBNZ            R2, loc_1808A4
180896:  LDR             R0, =(unk_381C14 - 0x18089E)
180898:  MOVS            R1, #0; mutexattr
18089A:  ADD             R0, PC; unk_381C14 ; mutex
18089C:  BLX             pthread_mutex_init
1808A0:  MOVS            R0, #1
1808A2:  STRB            R0, [R5]
1808A4:  LDR             R0, =(unk_381C14 - 0x1808AA)
1808A6:  ADD             R0, PC; unk_381C14 ; mutex
1808A8:  BLX             EnterCriticalSection_0
1808AC:  LDR             R0, [R4]
1808AE:  ADDS            R0, #7
1808B0:  CMP             R0, #7
1808B2:  BLS             loc_1808BE
1808B4:  LDR.W           R0, [R6,#0x340]
1808B8:  CBZ             R0, loc_1808BE
1808BA:  LDRB            R0, [R6,#4]
1808BC:  CBZ             R0, loc_1808D2
1808BE:  LDR             R0, =(unk_381C14 - 0x1808C4)
1808C0:  ADD             R0, PC; unk_381C14 ; mutex
1808C2:  BLX             LeaveCriticalSection_0
1808C6:  MOVS            R4, #0
1808C8:  MOV             R0, R4
1808CA:  ADD             SP, SP, #0x24 ; '$'
1808CC:  POP.W           {R8-R11}
1808D0:  POP             {R4-R7,PC}
1808D2:  LDR.W           R10, [R7,#arg_C]
1808D6:  LDR.W           R9, [R7,#arg_0]
1808DA:  CMP.W           R10, #0
1808DE:  BEQ             loc_18090C
1808E0:  LDRD.W          R0, R3, [SP,#0x40+var_24]
1808E4:  ADD.W           R12, SP, #0x40+var_38
1808E8:  LDR             R2, [R4]
1808EA:  MOVS            R5, #0
1808EC:  LDR             R1, [R4,#0xC]
1808EE:  STM.W           R12, {R0,R3,R10}
1808F2:  MOV             R0, R6
1808F4:  MOV             R3, R8
1808F6:  STRD.W          R11, R9, [SP,#0x40+var_40]
1808FA:  STR             R5, [SP,#0x40+var_2C]
1808FC:  BL              sub_180774
180900:  LDR             R0, =(unk_381C14 - 0x180906)
180902:  ADD             R0, PC; unk_381C14 ; mutex
180904:  BLX             LeaveCriticalSection_0
180908:  MOVS            R4, #1
18090A:  B               loc_1808C8
18090C:  LDR             R1, =(unk_BE944 - 0x180914)
18090E:  ADD             R0, SP, #0x40+var_24
180910:  ADD             R1, PC; unk_BE944
180912:  BL              sub_17E580
180916:  CMP             R0, #0
180918:  BNE             loc_1808BE
18091A:  LDR.W           R0, [R6,#0x800]
18091E:  CMP             R0, #0
180920:  BEQ             loc_1808E0
180922:  LDR             R0, [R6]
180924:  LDRD.W          R1, R2, [SP,#0x40+var_24]
180928:  LDR             R3, [R0,#0x60]
18092A:  MOV             R0, R6
18092C:  BLX             R3
18092E:  ADDS            R0, #1
180930:  BNE             loc_1808E0
180932:  LDR.W           R0, [R6,#0x800]
180936:  LDR             R2, [R4]
180938:  LDR             R1, [R4,#0xC]
18093A:  LDR             R3, [R0]
18093C:  LDRD.W          R6, R5, [SP,#0x40+var_24]
180940:  LDR             R4, [R3]
180942:  MOV             R3, R8
180944:  STRD.W          R11, R9, [SP,#0x40+var_40]
180948:  STRD.W          R6, R5, [SP,#0x40+var_38]
18094C:  BLX             R4
18094E:  MOV             R4, R0
180950:  LDR             R0, =(unk_381C14 - 0x180956)
180952:  ADD             R0, PC; unk_381C14 ; mutex
180954:  BLX             LeaveCriticalSection_0
180958:  B               loc_1808C8
