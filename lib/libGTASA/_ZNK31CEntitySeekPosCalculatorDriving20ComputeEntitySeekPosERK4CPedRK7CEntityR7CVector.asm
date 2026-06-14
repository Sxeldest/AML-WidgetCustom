; =========================================================
; Game Engine Function: _ZNK31CEntitySeekPosCalculatorDriving20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector
; Address            : 0x544574 - 0x54458C
; =========================================================

544574:  LDR             R0, [R2,#0x14]
544576:  ADD.W           R12, R0, #0x30 ; '0'
54457A:  CMP             R0, #0
54457C:  IT EQ
54457E:  ADDEQ.W         R12, R2, #4
544582:  MOV             R0, R1
544584:  MOV             R1, R12
544586:  MOV             R2, R3
544588:  B.W             sub_19DD74
