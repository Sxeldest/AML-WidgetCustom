; =========================================================
; Game Engine Function: _ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb
; Address            : 0x371AD4 - 0x371AE8
; =========================================================

371AD4:  PUSH            {R7,LR}; Alternative name is 'CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*, float, eWeaponType, ePedPieceTypes, bool)'
371AD6:  MOV             R7, SP
371AD8:  LDRD.W          LR, R12, [R7,#8+arg_0]
371ADC:  STM.W           R0, {R1,R2,LR}
371AE0:  STR             R3, [R0,#0xC]
371AE2:  STRB.W          R12, [R0,#0x10]
371AE6:  POP             {R7,PC}
