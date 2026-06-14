; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline39SetCustomEnvMapPipeMaterialDataDefaultsEP28CustomEnvMapPipeMaterialData
; Address            : 0x2CCAD8 - 0x2CCAEA
; =========================================================

2CCAD8:  MOVS            R1, #0xFF
2CCADA:  STRB            R1, [R0,#4]
2CCADC:  MOV.W           R1, #0x8080808
2CCAE0:  STR             R1, [R0]
2CCAE2:  MOVS            R1, #0
2CCAE4:  STR             R1, [R0,#8]
2CCAE6:  STRH            R1, [R0,#6]
2CCAE8:  BX              LR
