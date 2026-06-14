; =========================================================
; Game Engine Function: _ZN4CHud13SetBigMessageEPtt
; Address            : 0x437094 - 0x43715E
; =========================================================

437094:  LDR             R2, =(BigMessageInUse_ptr - 0x43709A)
437096:  ADD             R2, PC; BigMessageInUse_ptr
437098:  LDR             R2, [R2]; BigMessageInUse
43709A:  ADD.W           R2, R2, R1,LSL#2
43709E:  VLDR            S0, [R2]
4370A2:  VCMP.F32        S0, #0.0
4370A6:  VMRS            APSR_nzcv, FPSCR
4370AA:  IT NE
4370AC:  BXNE            LR
4370AE:  PUSH            {R4-R7,LR}
4370B0:  ADD             R7, SP, #0x14+var_8
4370B2:  PUSH.W          {R8}
4370B6:  CMP             R1, #5
4370B8:  BNE             loc_43710C
4370BA:  LDR             R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x4370C6)
4370BC:  MOV.W           LR, #0
4370C0:  LDR             R3, =(LastBigMessage_ptr - 0x4370CA)
4370C2:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
4370C4:  LDR             R5, =(OddJob2OffTimer_ptr - 0x4370CE)
4370C6:  ADD             R3, PC; LastBigMessage_ptr
4370C8:  LDR             R2, [R2]; CHud::m_BigMessage ...
4370CA:  ADD             R5, PC; OddJob2OffTimer_ptr
4370CC:  LDR             R3, [R3]; LastBigMessage
4370CE:  ADD.W           R12, R2, R1,LSL#8
4370D2:  LDR             R2, =(OddJob2On_ptr - 0x4370DE)
4370D4:  LDR             R5, [R5]; OddJob2OffTimer
4370D6:  ADD.W           R3, R3, R1,LSL#8
4370DA:  ADD             R2, PC; OddJob2On_ptr
4370DC:  LDR.W           R8, [R2]; OddJob2On
4370E0:  MOVS            R2, #0
4370E2:  LDRH            R6, [R0]
4370E4:  CBZ             R6, loc_43712E
4370E6:  LDRH            R4, [R3]
4370E8:  ADDS            R2, #1
4370EA:  CMP             R6, R4
4370EC:  ITTT NE
4370EE:  STRHNE.W        LR, [R8]
4370F2:  STRNE.W         LR, [R5]
4370F6:  LDRHNE          R6, [R0]
4370F8:  STRH.W          R6, [R12],#2
4370FC:  LDRH.W          R4, [R0],#2
437100:  STRH.W          R4, [R3],#2
437104:  UXTH            R4, R2
437106:  CMP             R4, #0x80
437108:  BCC             loc_4370E2
43710A:  B               loc_43712E
43710C:  LDR             R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x437114)
43710E:  MOVS            R5, #0
437110:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
437112:  LDR             R2, [R2]; CHud::m_BigMessage ...
437114:  ADD.W           R3, R2, R1,LSL#8
437118:  MOVS            R2, #0
43711A:  LDRH            R6, [R0,R5]
43711C:  CBZ             R6, loc_43712A
43711E:  ADDS            R2, #1
437120:  STRH            R6, [R3,R5]
437122:  ADDS            R5, #2
437124:  UXTH            R6, R2
437126:  CMP             R6, #0x80
437128:  BCC             loc_43711A
43712A:  MOVS            R3, #0
43712C:  STRH            R3, [R0]
43712E:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x43713E)
437130:  MOVW            R6, #:lower16:(elf_hash_chain+0xFE96)
437134:  LDR             R3, =(LastBigMessage_ptr - 0x437144)
437136:  MOVT            R6, #:upper16:(elf_hash_chain+0xFE96)
43713A:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
43713C:  AND.W           R2, R6, R2,LSL#1
437140:  ADD             R3, PC; LastBigMessage_ptr
437142:  MOVS            R6, #0
437144:  LDR             R0, [R0]; CHud::m_BigMessage ...
437146:  LDR             R3, [R3]; LastBigMessage
437148:  ADD.W           R0, R0, R1,LSL#8
43714C:  STRH            R6, [R0,R2]
43714E:  ADD.W           R0, R3, R1,LSL#8
437152:  STRH            R6, [R0,R2]
437154:  POP.W           {R8}
437158:  POP.W           {R4-R7,LR}
43715C:  BX              LR
