; =========================================================
; Game Engine Function: sub_849B4
; Address            : 0x849B4 - 0x849E6
; =========================================================

849B4:  LDR             R1, =(unk_1A6FB0 - 0x849C6)
849B6:  VMOV.I32        Q8, #0
849BA:  MOVW            R2, #0x4E70
849BE:  MOV.W           R0, #0x3F800000
849C2:  ADD             R1, PC; unk_1A6FB0
849C4:  ADD             R2, R1
849C6:  ADD.W           R3, R1, #0x14
849CA:  VST1.32         {D16-D17}, [R1]!
849CE:  CMP             R3, R2
849D0:  STR             R0, [R1]
849D2:  MOV             R1, R3
849D4:  BNE             loc_849C6
849D6:  LDR             R0, =(sub_8428C+1 - 0x849E0)
849D8:  LDR             R1, =(unk_1A6FB0 - 0x849E2)
849DA:  LDR             R2, =(off_110560 - 0x849E4)
849DC:  ADD             R0, PC; sub_8428C
849DE:  ADD             R1, PC; unk_1A6FB0
849E0:  ADD             R2, PC; off_110560
849E2:  B.W             sub_10C188
