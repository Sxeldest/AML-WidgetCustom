; =========================================================
; Game Engine Function: _ZNK20CPedAttractorManager23FindAssociatedAttractorEPK9C2dEffectPK7CEntityRK6SArrayIP13CPedAttractorE
; Address            : 0x4AB2C6 - 0x4AB2F4
; =========================================================

4AB2C6:  PUSH            {R4,R6,R7,LR}
4AB2C8:  ADD             R7, SP, #8
4AB2CA:  LDR.W           R12, [R3,#4]
4AB2CE:  CMP.W           R12, #1
4AB2D2:  BLT             loc_4AB2F0
4AB2D4:  LDR.W           LR, [R3,#8]
4AB2D8:  MOVS            R3, #0
4AB2DA:  LDR.W           R0, [LR,R3,LSL#2]
4AB2DE:  LDR             R4, [R0,#4]
4AB2E0:  CMP             R4, R1
4AB2E2:  ITT EQ
4AB2E4:  LDREQ           R4, [R0,#8]
4AB2E6:  CMPEQ           R4, R2
4AB2E8:  BEQ             locret_4AB2F2
4AB2EA:  ADDS            R3, #1
4AB2EC:  CMP             R3, R12
4AB2EE:  BLT             loc_4AB2DA
4AB2F0:  MOVS            R0, #0
4AB2F2:  POP             {R4,R6,R7,PC}
