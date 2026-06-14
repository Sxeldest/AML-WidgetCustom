; =========================================================
; Game Engine Function: _ZN25CWidgetButtonSkipCutscene6UpdateEv
; Address            : 0x2B5C9C - 0x2B5CC4
; =========================================================

2B5C9C:  PUSH            {R4,R6,R7,LR}
2B5C9E:  ADD             R7, SP, #8
2B5CA0:  MOV             R4, R0
2B5CA2:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2B5CA6:  LDR.W           R1, [R4,#0x80]
2B5CAA:  CMP             R0, #2
2B5CAC:  MOV             R0, R4; this
2B5CAE:  ORR.W           R2, R1, #0x800
2B5CB2:  IT EQ
2B5CB4:  BICEQ.W         R2, R1, #0x800
2B5CB8:  STR.W           R2, [R4,#0x80]
2B5CBC:  POP.W           {R4,R6,R7,LR}
2B5CC0:  B.W             j_j__ZN13CWidgetButton6UpdateEv; j_CWidgetButton::Update(void)
