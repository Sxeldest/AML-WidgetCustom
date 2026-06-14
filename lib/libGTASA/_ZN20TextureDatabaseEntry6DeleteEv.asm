; =========================================================
; Game Engine Function: _ZN20TextureDatabaseEntry6DeleteEv
; Address            : 0x1E9030 - 0x1E9072
; =========================================================

1E9030:  PUSH            {R4-R7,LR}
1E9032:  ADD             R7, SP, #0xC
1E9034:  PUSH.W          {R8}
1E9038:  MOV             R4, R0
1E903A:  MOVS            R5, #0
1E903C:  LDR.W           R0, [R4,#0x13]
1E9040:  LDR             R1, [R0,#0x54]
1E9042:  CMP             R1, #1
1E9044:  BNE             loc_1E906A
1E9046:  LDR             R1, =(RasterExtOffset_ptr - 0x1E904E)
1E9048:  LDR             R2, [R0]
1E904A:  ADD             R1, PC; RasterExtOffset_ptr
1E904C:  LDR             R1, [R1]; RasterExtOffset
1E904E:  LDR             R1, [R1]
1E9050:  LDR             R1, [R2,R1]
1E9052:  LDRD.W          R8, R6, [R1,#4]
1E9056:  STR             R5, [R0,#0x54]
1E9058:  LDR.W           R0, [R4,#0x13]
1E905C:  BLX             j__Z17TextureAnnihilateP9RwTexture; TextureAnnihilate(RwTexture *)
1E9060:  MUL.W           R0, R6, R8
1E9064:  STR.W           R5, [R4,#0x13]
1E9068:  MOV             R5, R0
1E906A:  MOV             R0, R5
1E906C:  POP.W           {R8}
1E9070:  POP             {R4-R7,PC}
