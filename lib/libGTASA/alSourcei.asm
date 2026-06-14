; =========================================================
; Game Engine Function: alSourcei
; Address            : 0x257890 - 0x2579BA
; =========================================================

257890:  PUSH            {R4-R7,LR}
257892:  ADD             R7, SP, #0xC
257894:  PUSH.W          {R11}
257898:  SUB             SP, SP, #8
25789A:  MOV             R5, R1
25789C:  MOV             R6, R0
25789E:  STR             R2, [SP,#0x18+var_14]
2578A0:  BLX             j_GetContextRef
2578A4:  MOV             R4, R0
2578A6:  CMP             R4, #0
2578A8:  BEQ.W           loc_2579B2
2578AC:  ADD.W           R0, R4, #8
2578B0:  MOV             R1, R6
2578B2:  BLX             j_LookupUIntMapKey
2578B6:  CMP             R0, #0
2578B8:  BEQ             loc_257906
2578BA:  CMP.W           R5, #0xC000
2578BE:  BGE.W           loc_25793C
2578C2:  MOVW            R1, #0x1001
2578C6:  SUBS            R1, R5, R1
2578C8:  CMP             R1, #0x32 ; '2'; switch 51 cases
2578CA:  BHI.W           def_2578CE; jumptable 002578CE default case
2578CE:  TBB.W           [PC,R1]; switch jump
2578D2:  DCB 0x46; jump table for switch statement
2578D3:  DCB 0x46
2578D4:  DCB 0x50
2578D5:  DCB 0x50
2578D6:  DCB 0x50
2578D7:  DCB 0x50
2578D8:  DCB 0x46
2578D9:  DCB 0x50
2578DA:  DCB 0x46
2578DB:  DCB 0x50
2578DC:  DCB 0x50
2578DD:  DCB 0x50
2578DE:  DCB 0x50
2578DF:  DCB 0x50
2578E0:  DCB 0x50
2578E1:  DCB 0x46
2578E2:  DCB 0x50
2578E3:  DCB 0x50
2578E4:  DCB 0x50
2578E5:  DCB 0x50
2578E6:  DCB 0x46
2578E7:  DCB 0x46
2578E8:  DCB 0x50
2578E9:  DCB 0x50
2578EA:  DCB 0x50
2578EB:  DCB 0x50
2578EC:  DCB 0x50
2578ED:  DCB 0x50
2578EE:  DCB 0x50
2578EF:  DCB 0x50
2578F0:  DCB 0x50
2578F1:  DCB 0x46
2578F2:  DCB 0x46
2578F3:  DCB 0x50
2578F4:  DCB 0x46
2578F5:  DCB 0x46
2578F6:  DCB 0x46
2578F7:  DCB 0x46
2578F8:  DCB 0x46
2578F9:  DCB 0x50
2578FA:  DCB 0x50
2578FB:  DCB 0x50
2578FC:  DCB 0x50
2578FD:  DCB 0x50
2578FE:  DCB 0x50
2578FF:  DCB 0x50
257900:  DCB 0x50
257901:  DCB 0x50
257902:  DCB 0x50
257903:  DCB 0x50
257904:  DCB 0x46
257905:  ALIGN 2
257906:  LDR             R0, =(TrapALError_ptr - 0x25790C)
257908:  ADD             R0, PC; TrapALError_ptr
25790A:  LDR             R0, [R0]; TrapALError
25790C:  LDRB            R0, [R0]
25790E:  CMP             R0, #0
257910:  ITT NE
257912:  MOVNE           R0, #5; sig
257914:  BLXNE           raise
257918:  LDREX.W         R0, [R4,#0x50]
25791C:  CMP             R0, #0
25791E:  BNE             loc_2579A4
257920:  ADD.W           R0, R4, #0x50 ; 'P'
257924:  MOVW            R1, #0xA001
257928:  DMB.W           ISH
25792C:  STREX.W         R2, R1, [R0]
257930:  CBZ             R2, loc_2579A8
257932:  LDREX.W         R2, [R0]
257936:  CMP             R2, #0
257938:  BEQ             loc_25792C
25793A:  B               loc_2579A4
25793C:  SUB.W           R1, R5, #0x20000
257940:  SUBS            R1, #5
257942:  CMP             R1, #7
257944:  BHI             loc_257952
257946:  MOVS            R2, #1
257948:  LSL.W           R1, R2, R1
25794C:  TST.W           R1, #0xE1
257950:  BNE             loc_25795E; jumptable 002578CE cases 0,1,6,8,15,20,21,31,32,34-38,50
257952:  CMP.W           R5, #0xC000
257956:  IT NE
257958:  CMPNE.W         R5, #0xD000
25795C:  BNE             loc_257972; jumptable 002578CE cases 2-5,7,9-14,16-19,22-30,33,39-49
25795E:  ADD             R3, SP, #0x18+var_14; jumptable 002578CE cases 0,1,6,8,15,20,21,31,32,34-38,50
257960:  MOV             R1, R4
257962:  MOV             R2, R5
257964:  BL              sub_2579C4
257968:  B               loc_2579AC
25796A:  MOVW            R1, #0x202; jumptable 002578CE default case
25796E:  CMP             R5, R1
257970:  BEQ             loc_25795E; jumptable 002578CE cases 0,1,6,8,15,20,21,31,32,34-38,50
257972:  LDR             R0, =(TrapALError_ptr - 0x257978); jumptable 002578CE cases 2-5,7,9-14,16-19,22-30,33,39-49
257974:  ADD             R0, PC; TrapALError_ptr
257976:  LDR             R0, [R0]; TrapALError
257978:  LDRB            R0, [R0]
25797A:  CMP             R0, #0
25797C:  ITT NE
25797E:  MOVNE           R0, #5; sig
257980:  BLXNE           raise
257984:  LDREX.W         R0, [R4,#0x50]
257988:  CBNZ            R0, loc_2579A4
25798A:  ADD.W           R0, R4, #0x50 ; 'P'
25798E:  MOVW            R1, #0xA002
257992:  DMB.W           ISH
257996:  STREX.W         R2, R1, [R0]
25799A:  CBZ             R2, loc_2579A8
25799C:  LDREX.W         R2, [R0]
2579A0:  CMP             R2, #0
2579A2:  BEQ             loc_257996
2579A4:  CLREX.W
2579A8:  DMB.W           ISH
2579AC:  MOV             R0, R4
2579AE:  BLX             j_ALCcontext_DecRef
2579B2:  ADD             SP, SP, #8
2579B4:  POP.W           {R11}
2579B8:  POP             {R4-R7,PC}
