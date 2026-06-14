; =========================================================
; Game Engine Function: _ZN8CVehicle23ActivateBombWhenEnteredEv
; Address            : 0x58557C - 0x5855D6
; =========================================================

58557C:  PUSH            {R4,R6,R7,LR}
58557E:  ADD             R7, SP, #8
585580:  LDR.W           R2, [R0,#0x464]
585584:  ADDW            R4, R0, #0x42C
585588:  LDR.W           R1, [R0,#0x42C]
58558C:  LDR.W           R3, [R0,#0x430]
585590:  CBZ             R2, loc_5855CC
585592:  LSLS            R2, R3, #0x1A
585594:  BMI             loc_5855C2
585596:  LDRB.W          R2, [R0,#0x4B2]
58559A:  AND.W           R2, R2, #7
58559E:  CMP             R2, #5
5855A0:  BNE             loc_5855C2
5855A2:  MOV.W           R2, #0x3E8
5855A6:  STRH.W          R2, [R0,#0x4EE]
5855AA:  LDR.W           R2, [R0,#0x4DC]
5855AE:  STR.W           R2, [R0,#0x4F0]
5855B2:  CBZ             R2, loc_5855C2
5855B4:  ADD.W           R1, R0, #0x4F0; CEntity **
5855B8:  MOV             R0, R2; this
5855BA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5855BE:  LDRD.W          R1, R3, [R4]
5855C2:  ORR.W           R0, R3, #0x20 ; ' '
5855C6:  STRD.W          R1, R0, [R4]
5855CA:  POP             {R4,R6,R7,PC}
5855CC:  BIC.W           R0, R3, #0x20 ; ' '
5855D0:  STRD.W          R1, R0, [R4]
5855D4:  POP             {R4,R6,R7,PC}
