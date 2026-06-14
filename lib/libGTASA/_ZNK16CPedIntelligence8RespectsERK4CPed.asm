; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence8RespectsERK4CPed
; Address            : 0x4BCE04 - 0x4BCE28
; =========================================================

4BCE04:  PUSH            {R4,R5,R7,LR}
4BCE06:  ADD             R7, SP, #8
4BCE08:  LDR             R0, [R0]
4BCE0A:  MOV             R4, R1
4BCE0C:  MOVS            R1, #0; int
4BCE0E:  ADDW            R0, R0, #0x4EC; this
4BCE12:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4BCE16:  MOV             R5, R0
4BCE18:  LDR.W           R0, [R4,#0x59C]; this
4BCE1C:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4BCE20:  ANDS            R0, R5
4BCE22:  IT NE
4BCE24:  MOVNE           R0, #1
4BCE26:  POP             {R4,R5,R7,PC}
