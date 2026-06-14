; =========================================================
; Game Engine Function: _ZNK16CEventGunAimedAt19ReportCriminalEventEP4CPed
; Address            : 0x3763F8 - 0x376412
; =========================================================

3763F8:  PUSH            {R4,R6,R7,LR}
3763FA:  ADD             R7, SP, #8
3763FC:  MOV             R4, R1
3763FE:  LDR             R1, [R0]
376400:  LDR             R1, [R1,#0x20]
376402:  BLX             R1
376404:  CMP             R0, #1
376406:  ITT EQ
376408:  LDREQ.W         R0, [R4,#0x59C]; this
37640C:  BLXEQ           j__ZN8CPedType39PoliceDontCareAboutCrimesAgainstPedTypeEi; CPedType::PoliceDontCareAboutCrimesAgainstPedType(int)
376410:  POP             {R4,R6,R7,PC}
