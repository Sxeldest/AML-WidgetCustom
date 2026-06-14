; =========================================================
; Game Engine Function: _Z19emu_SetAltRTGradingRK8RQVectorS1_S1_
; Address            : 0x1BC960 - 0x1BC99A
; =========================================================

1BC960:  PUSH            {R7,LR}
1BC962:  MOV             R7, SP
1BC964:  LDR             R3, =(usingGrading_ptr - 0x1BC96E)
1BC966:  LDR.W           R12, =(unk_67A130 - 0x1BC970)
1BC96A:  ADD             R3, PC; usingGrading_ptr
1BC96C:  ADD             R12, PC; unk_67A130
1BC96E:  LDR.W           LR, [R3]; usingGrading
1BC972:  MOVS            R3, #1
1BC974:  STRB.W          R3, [LR]
1BC978:  VLD1.32         {D16-D17}, [R0]
1BC97C:  LDR             R0, =(unk_67A140 - 0x1BC986)
1BC97E:  VST1.64         {D16-D17}, [R12]
1BC982:  ADD             R0, PC; unk_67A140
1BC984:  VLD1.32         {D16-D17}, [R1]
1BC988:  LDR             R1, =(unk_67A150 - 0x1BC992)
1BC98A:  VST1.64         {D16-D17}, [R0]
1BC98E:  ADD             R1, PC; unk_67A150
1BC990:  VLD1.32         {D16-D17}, [R2]
1BC994:  VST1.64         {D16-D17}, [R1]
1BC998:  POP             {R7,PC}
