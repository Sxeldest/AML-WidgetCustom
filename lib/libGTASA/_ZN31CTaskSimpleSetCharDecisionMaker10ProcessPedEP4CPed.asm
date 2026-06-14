; =========================================================
; Game Engine Function: _ZN31CTaskSimpleSetCharDecisionMaker10ProcessPedEP4CPed
; Address            : 0x4F150C - 0x4F1520
; =========================================================

4F150C:  PUSH            {R7,LR}
4F150E:  MOV             R7, SP
4F1510:  LDR             R2, [R0,#8]
4F1512:  LDR.W           R0, [R1,#0x440]; this
4F1516:  MOV             R1, R2; int
4F1518:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
4F151C:  MOVS            R0, #1
4F151E:  POP             {R7,PC}
