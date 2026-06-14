; =========================================================
; Game Engine Function: _ZN13CEventHandler32ComputeCreatePartnerTaskResponseEP6CEventP5CTaskS3_
; Address            : 0x382B78 - 0x382BE2
; =========================================================

382B78:  PUSH            {R4,R5,R7,LR}
382B7A:  ADD             R7, SP, #8
382B7C:  SUB             SP, SP, #0x18
382B7E:  MOV             R5, R1
382B80:  MOV             R4, R0
382B82:  LDR             R0, [R5,#0x10]
382B84:  CBZ             R0, loc_382BB8
382B86:  LDR             R0, [R5,#0xC]
382B88:  CBZ             R0, loc_382BBC
382B8A:  SUBS            R0, #1
382B8C:  CMP             R0, #5
382B8E:  BHI             loc_382BDE
382B90:  MOVS            R0, #dword_78; this
382B92:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382B96:  LDRD.W          R1, R2, [R5,#0xC]
382B9A:  LDRB            R3, [R5,#0x14]
382B9C:  VLDR            S0, [R5,#0x18]
382BA0:  MOVS            R5, #0
382BA2:  SUBS            R1, #1
382BA4:  STRD.W          R1, R5, [SP,#0x20+var_1C]
382BA8:  ADR             R1, aComppartnertas; "CompPartnerTaskResp"
382BAA:  STRD.W          R5, R5, [SP,#0x20+var_14]
382BAE:  VSTR            S0, [SP,#0x20+var_20]
382BB2:  BLX             j__ZN24CTaskComplexPartnerGreetC2EPcP4CPedhfi7CVector; CTaskComplexPartnerGreet::CTaskComplexPartnerGreet(char *,CPed *,uchar,float,int,CVector)
382BB6:  B               loc_382BDC
382BB8:  MOVS            R0, #0
382BBA:  B               loc_382BDC
382BBC:  MOVS            R0, #dword_74; this
382BBE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382BC2:  LDR             R2, [R5,#0x10]
382BC4:  MOVS            R1, #0
382BC6:  LDRB            R3, [R5,#0x14]
382BC8:  VLDR            S0, [R5,#0x18]
382BCC:  STRD.W          R1, R1, [SP,#0x20+var_1C]
382BD0:  STR             R1, [SP,#0x20+var_14]
382BD2:  ADR             R1, aComppartnertas; "CompPartnerTaskResp"
382BD4:  VSTR            S0, [SP,#0x20+var_20]
382BD8:  BLX             j__ZN23CTaskComplexPartnerDealC2EPcP4CPedhf7CVector; CTaskComplexPartnerDeal::CTaskComplexPartnerDeal(char *,CPed *,uchar,float,CVector)
382BDC:  STR             R0, [R4,#0x24]
382BDE:  ADD             SP, SP, #0x18
382BE0:  POP             {R4,R5,R7,PC}
