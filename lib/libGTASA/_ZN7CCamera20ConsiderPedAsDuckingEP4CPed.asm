; =========================================================
; Game Engine Function: _ZN7CCamera20ConsiderPedAsDuckingEP4CPed
; Address            : 0x3E1AC2 - 0x3E1AF2
; =========================================================

3E1AC2:  PUSH            {R4,R6,R7,LR}
3E1AC4:  ADD             R7, SP, #8
3E1AC6:  MOV             R4, R1
3E1AC8:  MOVS            R1, #1; bool
3E1ACA:  LDR.W           R0, [R4,#0x440]; this
3E1ACE:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
3E1AD2:  MOV             R1, R0
3E1AD4:  CBZ             R1, loc_3E1AEE
3E1AD6:  LDRB.W          R0, [R4,#0x487]
3E1ADA:  LSLS            R0, R0, #0x1D
3E1ADC:  MOV.W           R0, #0
3E1AE0:  IT PL
3E1AE2:  POPPL           {R4,R6,R7,PC}
3E1AE4:  LDRB            R1, [R1,#0x19]
3E1AE6:  CMP             R1, #0
3E1AE8:  IT EQ
3E1AEA:  MOVEQ           R0, #1
3E1AEC:  POP             {R4,R6,R7,PC}
3E1AEE:  MOVS            R0, #0
3E1AF0:  POP             {R4,R6,R7,PC}
