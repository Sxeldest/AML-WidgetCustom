; =========================================================
; Game Engine Function: _ZN28CPedDamageResponseCalculator16IsBleedingWeaponEP4CPed
; Address            : 0x372138 - 0x372162
; =========================================================

372138:  PUSH            {R4,R6,R7,LR}
37213A:  ADD             R7, SP, #8
37213C:  MOV             R4, R0
37213E:  MOV             R0, R1; this
372140:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
372144:  CBNZ            R0, loc_37215E
372146:  LDR             R0, [R4,#0xC]
372148:  SUBS            R0, #4
37214A:  CMP             R0, #5
37214C:  BHI             loc_37215E
37214E:  AND.W           R0, R0, #0x3F ; '?'
372152:  MOVS            R1, #0x31 ; '1'
372154:  LSR.W           R0, R1, R0
372158:  AND.W           R0, R0, #1
37215C:  POP             {R4,R6,R7,PC}
37215E:  MOVS            R0, #0
372160:  POP             {R4,R6,R7,PC}
