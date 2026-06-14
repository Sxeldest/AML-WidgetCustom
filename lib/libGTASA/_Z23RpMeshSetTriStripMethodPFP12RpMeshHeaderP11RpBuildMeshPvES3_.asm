; =========================================================
; Game Engine Function: _Z23RpMeshSetTriStripMethodPFP12RpMeshHeaderP11RpBuildMeshPvES3_
; Address            : 0x21B934 - 0x21B94E
; =========================================================

21B934:  LDR             R3, =(unk_683BDC - 0x21B942)
21B936:  CMP             R0, #0
21B938:  LDR             R2, =(_Z34RpBuildMeshGenerateDefaultTriStripP11RpBuildMeshPv_ptr - 0x21B944)
21B93A:  IT EQ
21B93C:  MOVEQ           R1, R0
21B93E:  ADD             R3, PC; unk_683BDC
21B940:  ADD             R2, PC; _Z34RpBuildMeshGenerateDefaultTriStripP11RpBuildMeshPv_ptr
21B942:  STR             R1, [R3,#(dword_683BF4 - 0x683BDC)]
21B944:  IT EQ
21B946:  LDREQ           R0, [R2]; RpBuildMeshGenerateDefaultTriStrip(RpBuildMesh *,void *)
21B948:  STR             R0, [R3,#(off_683BF0 - 0x683BDC)]; RpBuildMeshGenerateDefaultTriStrip(RpBuildMesh *,void *)
21B94A:  MOVS            R0, #1
21B94C:  BX              LR
