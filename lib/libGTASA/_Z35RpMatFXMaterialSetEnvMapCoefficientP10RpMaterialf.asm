; =========================================================
; Game Engine Function: _Z35RpMatFXMaterialSetEnvMapCoefficientP10RpMaterialf
; Address            : 0x1C7548 - 0x1C756C
; =========================================================

1C7548:  LDR             R2, =(MatFXMaterialDataOffset_ptr - 0x1C7550)
1C754A:  MOVS            R3, #0
1C754C:  ADD             R2, PC; MatFXMaterialDataOffset_ptr
1C754E:  LDR             R2, [R2]; MatFXMaterialDataOffset
1C7550:  LDR             R2, [R2]
1C7552:  LDR             R2, [R0,R2]
1C7554:  LDR.W           R12, [R2,#0x14]
1C7558:  CMP.W           R12, #2
1C755C:  IT NE
1C755E:  MOVNE           R3, #1
1C7560:  ORR.W           R3, R3, R3,LSL#1
1C7564:  ADD.W           R2, R2, R3,LSL#3
1C7568:  STR             R1, [R2,#8]
1C756A:  BX              LR
