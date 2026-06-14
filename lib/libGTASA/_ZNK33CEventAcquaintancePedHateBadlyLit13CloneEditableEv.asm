; =========================================================
; Game Engine Function: _ZNK33CEventAcquaintancePedHateBadlyLit13CloneEditableEv
; Address            : 0x37814C - 0x37822A
; =========================================================

37814C:  PUSH            {R4-R7,LR}
37814E:  ADD             R7, SP, #0xC
378150:  PUSH.W          {R8}
378154:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37815C)
378156:  MOVS            R3, #0
378158:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37815A:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37815C:  LDR             R1, [R1]; CPools::ms_pEventPool
37815E:  LDRD.W          R2, R4, [R1,#8]
378162:  ADDS            R4, #1
378164:  STR             R4, [R1,#0xC]
378166:  CMP             R4, R2
378168:  BNE             loc_378174
37816A:  MOVS            R4, #0
37816C:  LSLS            R3, R3, #0x1F
37816E:  STR             R4, [R1,#0xC]
378170:  BNE             loc_3781A4
378172:  MOVS            R3, #1
378174:  LDR             R6, [R1,#4]
378176:  LDRSB           R5, [R6,R4]
378178:  CMP.W           R5, #0xFFFFFFFF
37817C:  BGT             loc_378162
37817E:  AND.W           R2, R5, #0x7F
378182:  STRB            R2, [R6,R4]
378184:  LDR             R2, [R1,#4]
378186:  LDR             R3, [R1,#0xC]
378188:  LDRB            R6, [R2,R3]
37818A:  AND.W           R5, R6, #0x80
37818E:  ADDS            R6, #1
378190:  AND.W           R6, R6, #0x7F
378194:  ORRS            R6, R5
378196:  STRB            R6, [R2,R3]
378198:  LDR             R2, [R1]
37819A:  LDR             R1, [R1,#0xC]
37819C:  ADD.W           R1, R1, R1,LSL#4
3781A0:  ADD.W           R4, R2, R1,LSL#2
3781A4:  LDR             R1, =(_ZTV21CEventAcquaintancePed_ptr - 0x3781B4)
3781A6:  MOVS            R2, #0
3781A8:  LDRD.W          R5, R8, [R0,#0x10]
3781AC:  ADD.W           R6, R0, #0x18
3781B0:  ADD             R1, PC; _ZTV21CEventAcquaintancePed_ptr
3781B2:  STR             R2, [R4,#4]
3781B4:  MOVW            R2, #0x100
3781B8:  CMP             R5, #0
3781BA:  LDR             R1, [R1]; `vtable for'CEventAcquaintancePed ...
3781BC:  MOVT            R2, #0xC8
3781C0:  STR             R2, [R4,#8]
3781C2:  MOVW            R2, #0xFFFF
3781C6:  ADD.W           R1, R1, #8
3781CA:  STRH            R2, [R4,#0xC]
3781CC:  STR             R1, [R4]
3781CE:  MOV             R1, R4
3781D0:  STR.W           R5, [R1,#0x10]!; CEntity **
3781D4:  ITT NE
3781D6:  MOVNE           R0, R5; this
3781D8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3781DC:  LDR             R0, =(_ZTV33CEventAcquaintancePedHateBadlyLit_ptr - 0x3781E6)
3781DE:  STR.W           R8, [R4,#0x14]
3781E2:  ADD             R0, PC; _ZTV33CEventAcquaintancePedHateBadlyLit_ptr
3781E4:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHateBadlyLit ...
3781E6:  ADDS            R0, #8
3781E8:  STR             R0, [R4]
3781EA:  VLDR            D16, [R6]
3781EE:  LDR             R0, [R6,#8]
3781F0:  STR             R0, [R4,#0x20]
3781F2:  ADDS.W          R0, R8, #1
3781F6:  VSTR            D16, [R4,#0x18]
3781FA:  BNE             loc_378222
3781FC:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x378206)
3781FE:  ADD.W           R0, R4, #0x18
378202:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
378204:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
378206:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
378208:  STR             R1, [R4,#0x14]
37820A:  LDR             R1, [R5,#0x14]
37820C:  ADD.W           R2, R1, #0x30 ; '0'
378210:  CMP             R1, #0
378212:  IT EQ
378214:  ADDEQ           R2, R5, #4
378216:  VLDR            D16, [R2]
37821A:  LDR             R1, [R2,#8]
37821C:  STR             R1, [R0,#8]
37821E:  VSTR            D16, [R0]
378222:  MOV             R0, R4
378224:  POP.W           {R8}
378228:  POP             {R4-R7,PC}
