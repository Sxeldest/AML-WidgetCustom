; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c13CalcIsVisibleEv
; Address            : 0x448CA4 - 0x448CF0
; =========================================================

448CA4:  PUSH            {R4-R7,LR}
448CA6:  ADD             R7, SP, #0xC
448CA8:  PUSH.W          {R11}
448CAC:  MOV             R4, R0
448CAE:  LDRSB.W         R0, [R4,#0xF]
448CB2:  LDRB.W          R1, [R4,#0x34]
448CB6:  STRB.W          R1, [R4,#0x35]
448CBA:  MOVS            R1, #0
448CBC:  CMP             R0, #1
448CBE:  STRB.W          R1, [R4,#0x34]
448CC2:  BLT             loc_448CDE
448CC4:  ADD.W           R5, R4, #0x10
448CC8:  MOVS            R6, #0
448CCA:  LDR.W           R0, [R5,R6,LSL#2]; this
448CCE:  BLX             j__ZN10Interior_c9IsVisibleEv; Interior_c::IsVisible(void)
448CD2:  CBNZ            R0, loc_448CE4
448CD4:  LDRSB.W         R0, [R4,#0xF]
448CD8:  ADDS            R6, #1
448CDA:  CMP             R6, R0
448CDC:  BLT             loc_448CCA
448CDE:  POP.W           {R11}
448CE2:  POP             {R4-R7,PC}
448CE4:  MOVS            R0, #1
448CE6:  STRB.W          R0, [R4,#0x34]
448CEA:  POP.W           {R11}
448CEE:  POP             {R4-R7,PC}
