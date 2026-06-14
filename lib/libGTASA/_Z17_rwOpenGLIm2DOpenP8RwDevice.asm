; =========================================================
; Game Engine Function: _Z17_rwOpenGLIm2DOpenP8RwDevice
; Address            : 0x1AD940 - 0x1AD98E
; =========================================================

1AD940:  PUSH            {R4,R6,R7,LR}
1AD942:  ADD             R7, SP, #8
1AD944:  LDR             R1, =(dword_6B31D0 - 0x1AD952)
1AD946:  VMOV.I32        Q9, #0
1AD94A:  LDR             R2, =(unk_6B31D8 - 0x1AD958)
1AD94C:  ADR             R3, dword_1AD990
1AD94E:  ADD             R1, PC; dword_6B31D0
1AD950:  VLD1.64         {D16-D17}, [R3@128]
1AD954:  ADD             R2, PC; unk_6B31D8
1AD956:  STR             R0, [R1]
1AD958:  ADD.W           R1, R2, #0xC
1AD95C:  VST1.64         {D18-D19}, [R2]
1AD960:  VST1.32         {D18-D19}, [R1]
1AD964:  ADDS            R1, R2, #4
1AD966:  LDR.W           R12, =(sub_1AD9EC+1 - 0x1AD974)
1AD96A:  LDR             R3, =(sub_1AD9B8+1 - 0x1AD978)
1AD96C:  LDR.W           LR, =(sub_1AD7F0+1 - 0x1AD980)
1AD970:  ADD             R12, PC; sub_1AD9EC
1AD972:  LDR             R4, =(sub_1AD88C+1 - 0x1AD982)
1AD974:  ADD             R3, PC; sub_1AD9B8
1AD976:  VST1.32         {D16-D17}, [R1]
1AD97A:  MOVS            R1, #6
1AD97C:  ADD             LR, PC; sub_1AD7F0
1AD97E:  ADD             R4, PC; sub_1AD88C
1AD980:  STR             R1, [R2,#(dword_6B31EC - 0x6B31D8)]
1AD982:  ADD.W           R1, R0, #0x18
1AD986:  STM.W           R1, {R3,R12,LR}
1AD98A:  STR             R4, [R0,#0x24]
1AD98C:  POP             {R4,R6,R7,PC}
