; =========================================================
; Game Engine Function: _Z23RpMeshGetTriStripMethodPPFP12RpMeshHeaderP11RpBuildMeshPvEPS3_
; Address            : 0x21B958 - 0x21B970
; =========================================================

21B958:  CBZ             R0, loc_21B962
21B95A:  LDR             R2, =(unk_683BDC - 0x21B960)
21B95C:  ADD             R2, PC; unk_683BDC
21B95E:  LDR             R2, [R2,#(off_683BF0 - 0x683BDC)]; RpBuildMeshGenerateDefaultTriStrip(RpBuildMesh *,void *)
21B960:  STR             R2, [R0]
21B962:  CBZ             R1, loc_21B96C
21B964:  LDR             R0, =(unk_683BDC - 0x21B96A)
21B966:  ADD             R0, PC; unk_683BDC
21B968:  LDR             R0, [R0,#(dword_683BF4 - 0x683BDC)]
21B96A:  STR             R0, [R1]
21B96C:  MOVS            R0, #1
21B96E:  BX              LR
