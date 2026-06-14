; =========================================================
; Game Engine Function: _ZN29CTaskComplexProstituteSolicit24GetRidOfPlayerProstituteEv
; Address            : 0x51B5DC - 0x51B616
; =========================================================

51B5DC:  PUSH            {R7,LR}
51B5DE:  MOV             R7, SP
51B5E0:  MOV.W           R0, #0xFFFFFFFF; int
51B5E4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
51B5E8:  LDR.W           R0, [R0,#0x444]
51B5EC:  LDR.W           R0, [R0,#0xA4]
51B5F0:  CMP             R0, #0
51B5F2:  IT EQ
51B5F4:  POPEQ           {R7,PC}
51B5F6:  LDR.W           R0, [R0,#0x440]; this
51B5FA:  MOVW            R1, #0x51D; int
51B5FE:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
51B602:  CMP             R0, #0
51B604:  ITTTT NE
51B606:  LDRHNE          R1, [R0,#0x2C]
51B608:  MOVNE           R2, #0
51B60A:  STRHNE          R2, [R0,#0x2A]
51B60C:  ORRNE.W         R1, R1, #4
51B610:  IT NE
51B612:  STRHNE          R1, [R0,#0x2C]
51B614:  POP             {R7,PC}
