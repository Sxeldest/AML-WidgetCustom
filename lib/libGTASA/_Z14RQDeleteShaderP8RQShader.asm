; =========================================================
; Game Engine Function: _Z14RQDeleteShaderP8RQShader
; Address            : 0x1CD920 - 0x1CD9C0
; =========================================================

1CD920:  PUSH            {R4,R6,R7,LR}
1CD922:  ADD             R7, SP, #8
1CD924:  LDR             R1, =(renderQueue_ptr - 0x1CD92C)
1CD926:  MOVS            R4, #0x12
1CD928:  ADD             R1, PC; renderQueue_ptr
1CD92A:  LDR             R1, [R1]; renderQueue
1CD92C:  LDR             R2, [R1]
1CD92E:  LDR.W           R3, [R2,#0x274]
1CD932:  STR.W           R4, [R2,#0x278]
1CD936:  STR             R4, [R3]
1CD938:  LDR.W           R3, [R2,#0x274]
1CD93C:  ADDS            R3, #4
1CD93E:  STR.W           R3, [R2,#0x274]
1CD942:  LDR             R2, [R1]
1CD944:  LDR.W           R3, [R2,#0x274]
1CD948:  STR             R0, [R3]
1CD94A:  LDR.W           R0, [R2,#0x274]
1CD94E:  ADDS            R0, #4
1CD950:  STR.W           R0, [R2,#0x274]
1CD954:  LDR             R4, [R1]
1CD956:  LDRB.W          R0, [R4,#0x259]
1CD95A:  CMP             R0, #0
1CD95C:  ITT NE
1CD95E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CD962:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1CD966:  LDRD.W          R1, R2, [R4,#0x270]
1CD96A:  ADD.W           R0, R4, #0x270
1CD96E:  DMB.W           ISH
1CD972:  SUBS            R1, R2, R1
1CD974:  LDREX.W         R2, [R0]
1CD978:  ADD             R2, R1
1CD97A:  STREX.W         R3, R2, [R0]
1CD97E:  CMP             R3, #0
1CD980:  BNE             loc_1CD974
1CD982:  DMB.W           ISH
1CD986:  LDRB.W          R0, [R4,#0x259]
1CD98A:  CMP             R0, #0
1CD98C:  ITT NE
1CD98E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1CD992:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1CD996:  LDRB.W          R0, [R4,#0x258]
1CD99A:  CMP             R0, #0
1CD99C:  ITT EQ
1CD99E:  MOVEQ           R0, R4; this
1CD9A0:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1CD9A4:  LDR.W           R1, [R4,#0x270]
1CD9A8:  LDR.W           R0, [R4,#0x264]
1CD9AC:  ADD.W           R1, R1, #0x400
1CD9B0:  CMP             R1, R0
1CD9B2:  IT LS
1CD9B4:  POPLS           {R4,R6,R7,PC}
1CD9B6:  MOV             R0, R4; this
1CD9B8:  POP.W           {R4,R6,R7,LR}
1CD9BC:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
