; =========================================================
; Game Engine Function: _Z15_rpMeshOptimiseP11RpBuildMeshj
; Address            : 0x21BD4C - 0x21BD9A
; =========================================================

21BD4C:  PUSH            {R4,R5,R7,LR}
21BD4E:  ADD             R7, SP, #8
21BD50:  MOV             R4, R0
21BD52:  CBZ             R4, loc_21BD86
21BD54:  LDR             R0, [R4,#4]
21BD56:  CBZ             R0, loc_21BD8C
21BD58:  LDR             R0, =(unk_683BDC - 0x21BD68)
21BD5A:  ANDS.W          R1, R1, #1
21BD5E:  LDR             R2, =(_Z22_rpTriListMeshGenerateP11RpBuildMeshPv_ptr - 0x21BD6E)
21BD60:  RSB.W           R1, R1, #0
21BD64:  ADD             R0, PC; unk_683BDC
21BD66:  LDRD.W          R3, R0, [R0,#(off_683BF0 - 0x683BDC)]; RpBuildMeshGenerateDefaultTriStrip(RpBuildMesh *,void *)
21BD6A:  ADD             R2, PC; _Z22_rpTriListMeshGenerateP11RpBuildMeshPv_ptr
21BD6C:  AND.W           R1, R1, R0
21BD70:  MOV             R0, R4
21BD72:  IT EQ
21BD74:  LDREQ           R3, [R2]; _rpTriListMeshGenerate(RpBuildMesh *,void *)
21BD76:  BLX             R3
21BD78:  MOV             R5, R0
21BD7A:  CBZ             R5, loc_21BD86
21BD7C:  MOV             R0, R4
21BD7E:  BLX             j__Z19_rpBuildMeshDestroyP11RpBuildMesh; _rpBuildMeshDestroy(RpBuildMesh *)
21BD82:  MOV             R0, R5
21BD84:  POP             {R4,R5,R7,PC}
21BD86:  MOVS            R5, #0
21BD88:  MOV             R0, R5
21BD8A:  POP             {R4,R5,R7,PC}
21BD8C:  MOV             R0, R4
21BD8E:  BLX             j__Z19_rpBuildMeshDestroyP11RpBuildMesh; _rpBuildMeshDestroy(RpBuildMesh *)
21BD92:  LDR             R5, =(unk_683BDC - 0x21BD98)
21BD94:  ADD             R5, PC; unk_683BDC
21BD96:  MOV             R0, R5
21BD98:  POP             {R4,R5,R7,PC}
