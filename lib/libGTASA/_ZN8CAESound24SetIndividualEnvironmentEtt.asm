; =========================================================
; Game Engine Function: _ZN8CAESound24SetIndividualEnvironmentEtt
; Address            : 0x3A7DA6 - 0x3A7DBC
; =========================================================

3A7DA6:  LDRH.W          R12, [R0,#0x56]
3A7DAA:  CMP             R2, #0
3A7DAC:  BIC.W           R3, R12, R1
3A7DB0:  IT NE
3A7DB2:  ORRNE.W         R3, R12, R1
3A7DB6:  STRH.W          R3, [R0,#0x56]
3A7DBA:  BX              LR
