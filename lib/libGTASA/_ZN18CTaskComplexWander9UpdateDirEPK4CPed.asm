; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander9UpdateDirEPK4CPed
; Address            : 0x52182C - 0x521910
; =========================================================

52182C:  PUSH            {R4,R5,R7,LR}
52182E:  ADD             R7, SP, #8
521830:  SUB             SP, SP, #0x18
521832:  MOV             R4, R0
521834:  MOVW            R2, #0xFFFF
521838:  LDRH            R0, [R4,#0x1C]
52183A:  CMP             R0, R2
52183C:  BEQ             loc_521880
52183E:  LDR             R2, =(ThePaths_ptr - 0x521846)
521840:  LDR             R0, [R4,#0x1C]
521842:  ADD             R2, PC; ThePaths_ptr
521844:  LDR             R2, [R2]; ThePaths
521846:  UXTH            R3, R0
521848:  ADD.W           R2, R2, R3,LSL#2
52184C:  LDR.W           R2, [R2,#0x804]
521850:  CBZ             R2, loc_521880
521852:  LSRS            R3, R0, #0x10
521854:  LSLS            R3, R3, #3
521856:  SUB.W           R0, R3, R0,LSR#16
52185A:  ADD.W           R0, R2, R0,LSL#2
52185E:  LDRH            R0, [R0,#0x18]
521860:  AND.W           R0, R0, #0xF
521864:  CMP             R0, #3
521866:  BCC             loc_521880
521868:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x521870)
52186A:  LDR             R3, [R4,#0x20]
52186C:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
52186E:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
521870:  LDR             R2, [R0]; CTimer::m_FrameCounter
521872:  CMP             R2, R3
521874:  ITT NE
521876:  LDRBNE.W        R0, [R4,#0x24]
52187A:  MOVSNE.W        R0, R0,LSL#31
52187E:  BNE             loc_521884
521880:  ADD             SP, SP, #0x18
521882:  POP             {R4,R5,R7,PC}
521884:  LDRB            R0, [R4,#0x10]
521886:  STR             R2, [R4,#0x20]
521888:  ADD.W           R2, R2, R2,LSL#1
52188C:  LDRH            R3, [R1,#0x24]
52188E:  ADD             R2, R3
521890:  MOV             R3, #0x51EB851F
521898:  UMULL.W         R3, R5, R2, R3
52189C:  LSRS            R3, R5, #5
52189E:  MOVS            R5, #0x64 ; 'd'
5218A0:  MLS.W           R2, R3, R5, R2
5218A4:  CMP             R2, #0x5A ; 'Z'
5218A6:  BLS             loc_5218AC
5218A8:  MOVS            R2, #6
5218AA:  B               loc_5218B2
5218AC:  CMP             R2, #0x51 ; 'Q'
5218AE:  BCC             loc_521880
5218B0:  MOVS            R2, #2
5218B2:  ADD             R2, R0
5218B4:  AND.W           R5, R2, #7
5218B8:  CMP             R5, R0
5218BA:  BEQ             loc_521880
5218BC:  LDR             R0, [R4,#0x18]
5218BE:  ADD             R2, SP, #0x20+var_14
5218C0:  STR             R0, [SP,#0x20+var_10]
5218C2:  ADD             R3, SP, #0x20+var_10
5218C4:  LDR             R0, [R4,#0x1C]
5218C6:  STR             R0, [SP,#0x20+var_14]
5218C8:  LDR             R0, [R4]
5218CA:  LDR.W           R12, [R0,#0x40]
5218CE:  SUB.W           R0, R7, #-var_9
5218D2:  STRD.W          R2, R0, [SP,#0x20+var_20]
5218D6:  UXTB            R2, R5
5218D8:  MOV             R0, R4
5218DA:  BLX             R12
5218DC:  LDRB            R0, [R4,#0x10]
5218DE:  LDRB.W          R1, [R7,#var_9]
5218E2:  CMP             R1, R0
5218E4:  MOV             R2, R0
5218E6:  IT HI
5218E8:  MOVHI           R2, R1
5218EA:  CMP             R0, R1
5218EC:  IT CS
5218EE:  MOVCS           R0, R1
5218F0:  RSB.W           R0, R0, #8
5218F4:  ADD             R0, R2
5218F6:  ASRS            R1, R0, #0x1F
5218F8:  ADD.W           R1, R0, R1,LSR#29
5218FC:  AND.W           R1, R1, #0xF8
521900:  SUBS            R0, R0, R1
521902:  AND.W           R0, R0, #0xFC
521906:  CMP             R0, #3
521908:  IT LS
52190A:  STRBLS          R5, [R4,#0x10]
52190C:  ADD             SP, SP, #0x18
52190E:  POP             {R4,R5,R7,PC}
