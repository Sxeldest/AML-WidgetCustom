; =========================================================
; Game Engine Function: _Z16RpGeometryUnlockP10RpGeometry
; Address            : 0x215950 - 0x2159E0
; =========================================================

215950:  PUSH            {R4-R7,LR}
215952:  ADD             R7, SP, #0xC
215954:  PUSH.W          {R8-R10}
215958:  SUB             SP, SP, #8
21595A:  MOV             R10, R0
21595C:  LDR.W           R0, [R10,#0x58]
215960:  CBNZ            R0, loc_2159D6
215962:  LDR.W           R0, [R10,#0x10]; unsigned int
215966:  BLX             j__Z18_rpBuildMeshCreatej; _rpBuildMeshCreate(uint)
21596A:  MOV             R9, R0
21596C:  CMP.W           R9, #0
215970:  BEQ             loc_2159D2
215972:  LDR.W           R0, [R10,#0x10]
215976:  CMP             R0, #1
215978:  BLT             loc_2159B6
21597A:  ADD.W           R8, R10, #0x20 ; ' '
21597E:  MOVS            R6, #0
215980:  LDR.W           R4, [R10,#0x2C]
215984:  ADD.W           R5, R4, R6,LSL#3
215988:  LDRSH.W         R1, [R5,#6]
21598C:  ADDS            R0, R1, #1
21598E:  BEQ             loc_21599A
215990:  MOV             R0, R8
215992:  BLX             j__Z26_rpMaterialListGetMaterialPK14RpMaterialListi; _rpMaterialListGetMaterial(RpMaterialList const*,int)
215996:  MOV             R1, R0
215998:  B               loc_21599C
21599A:  MOVS            R1, #0
21599C:  LDRH.W          R2, [R4,R6,LSL#3]
2159A0:  LDRH            R3, [R5,#2]
2159A2:  LDRH            R0, [R5,#4]
2159A4:  STR             R0, [SP,#0x20+var_20]
2159A6:  MOV             R0, R9
2159A8:  BLX             j__Z23_rpBuildMeshAddTriangleP11RpBuildMeshP10RpMaterialiii; _rpBuildMeshAddTriangle(RpBuildMesh *,RpMaterial *,int,int,int)
2159AC:  LDR.W           R0, [R10,#0x10]
2159B0:  ADDS            R6, #1
2159B2:  CMP             R6, R0
2159B4:  BLT             loc_215980
2159B6:  LDR.W           R0, [R10,#8]
2159BA:  AND.W           R1, R0, #1
2159BE:  MOV             R0, R9
2159C0:  BLX             j__Z15_rpMeshOptimiseP11RpBuildMeshj; _rpMeshOptimise(RpBuildMesh *,uint)
2159C4:  CBZ             R0, loc_2159CC
2159C6:  STR.W           R0, [R10,#0x58]
2159CA:  B               loc_2159D6
2159CC:  MOV             R0, R9
2159CE:  BLX             j__Z19_rpBuildMeshDestroyP11RpBuildMesh; _rpBuildMeshDestroy(RpBuildMesh *)
2159D2:  MOV.W           R10, #0
2159D6:  MOV             R0, R10
2159D8:  ADD             SP, SP, #8
2159DA:  POP.W           {R8-R10}
2159DE:  POP             {R4-R7,PC}
