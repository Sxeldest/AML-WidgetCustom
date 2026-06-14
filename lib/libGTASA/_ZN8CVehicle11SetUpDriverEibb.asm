; =========================================================
; Game Engine Function: _ZN8CVehicle11SetUpDriverEibb
; Address            : 0x584854 - 0x58488E
; =========================================================

584854:  PUSH            {R4,R6,R7,LR}; bool
584856:  ADD             R7, SP, #8
584858:  SUB             SP, SP, #8
58485A:  MOV             R4, R0
58485C:  MOV             R12, R1
58485E:  LDR.W           R0, [R4,#0x464]
584862:  CBZ             R0, loc_584868
584864:  ADD             SP, SP, #8
584866:  POP             {R4,R6,R7,PC}
584868:  LDRB.W          R0, [R4,#0x4A8]
58486C:  CMP             R0, #1
58486E:  BNE             loc_584888
584870:  STRD.W          R2, R3, [SP,#0x10+var_10]; CPopulation *
584874:  MOV             R0, R4; this
584876:  MOVS            R1, #(stderr+1); CVehicle *
584878:  MOV             R2, R12; bool
58487A:  MOVS            R3, #0; int
58487C:  BLX             j__ZN11CPopulation11AddPedInCarEP8CVehiclebiibb; CPopulation::AddPedInCar(CVehicle *,bool,int,int,bool,bool)
584880:  LDR.W           R0, [R4,#0x464]
584884:  ADD             SP, SP, #8
584886:  POP             {R4,R6,R7,PC}
584888:  MOVS            R0, #0
58488A:  ADD             SP, SP, #8
58488C:  POP             {R4,R6,R7,PC}
