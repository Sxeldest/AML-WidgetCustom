; =========================================================
; Game Engine Function: _Z25_rwObjectHasFrameSetFramePvP7RwFrame
; Address            : 0x1DCFE4 - 0x1DD016
; =========================================================

1DCFE4:  LDR             R2, [R0,#4]
1DCFE6:  CMP             R2, #0
1DCFE8:  ITTTT NE
1DCFEA:  LDRDNE.W        R2, R3, [R0,#8]
1DCFEE:  STRNE           R2, [R3]
1DCFF0:  LDRDNE.W        R2, R3, [R0,#8]
1DCFF4:  STRNE           R3, [R2,#4]
1DCFF6:  CMP             R1, #0
1DCFF8:  STR             R1, [R0,#4]
1DCFFA:  IT EQ
1DCFFC:  BXEQ            LR
1DCFFE:  MOV             R2, R1
1DD000:  LDR.W           R3, [R2,#0x90]!
1DD004:  STR.W           R3, [R0,#8]!
1DD008:  STR             R2, [R0,#4]
1DD00A:  LDR             R3, [R2]
1DD00C:  STR             R0, [R3,#4]
1DD00E:  STR             R0, [R2]
1DD010:  MOV             R0, R1
1DD012:  B.W             j_j__Z20RwFrameUpdateObjectsP7RwFrame; j_RwFrameUpdateObjects(RwFrame *)
