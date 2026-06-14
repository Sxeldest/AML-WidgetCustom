; =========================================================
; Game Engine Function: _Z13RpWorldUnlockP7RpWorld
; Address            : 0x21CB70 - 0x21CC2E
; =========================================================

21CB70:  PUSH            {R4-R7,LR}
21CB72:  ADD             R7, SP, #0xC
21CB74:  PUSH.W          {R8-R11}
21CB78:  SUB             SP, SP, #0x104
21CB7A:  MOV             R8, R0
21CB7C:  ADD.W           R9, SP, #0x120+var_11C
21CB80:  LDR.W           R4, [R8,#0x1C]
21CB84:  MOV.W           R10, #0
21CB88:  LDR             R0, [R4]
21CB8A:  CMP.W           R0, #0xFFFFFFFF
21CB8E:  BLE             loc_21CBA6
21CB90:  LDRD.W          R0, R1, [R4,#8]
21CB94:  ADD.W           R10, R10, #1
21CB98:  STR.W           R1, [R9,R10,LSL#2]
21CB9C:  MOV             R4, R0
21CB9E:  CMP.W           R10, #0xFFFFFFFF
21CBA2:  BGT             loc_21CB88
21CBA4:  B               loc_21CC24
21CBA6:  LDR.W           R0, [R4,#0x80]
21CBAA:  CBNZ            R0, loc_21CC0A
21CBAC:  LDRH.W          R0, [R4,#0x8C]; unsigned int
21CBB0:  LDRH.W          R5, [R4,#0x88]
21CBB4:  LDR.W           R6, [R8,#0x10]
21CBB8:  BLX             j__Z18_rpBuildMeshCreatej; _rpBuildMeshCreate(uint)
21CBBC:  MOV             R11, R0
21CBBE:  CMP.W           R11, #0
21CBC2:  BEQ             loc_21CC20
21CBC4:  LDRH.W          R0, [R4,#0x8C]
21CBC8:  CBZ             R0, loc_21CBF6
21CBCA:  ADD.W           R6, R6, R5,LSL#2
21CBCE:  MOVS            R5, #0
21CBD0:  LDR             R0, [R4,#4]
21CBD2:  LDRH.W          R1, [R0,R5,LSL#3]
21CBD6:  ADD.W           R0, R0, R5,LSL#3
21CBDA:  LDRH            R3, [R0,#4]
21CBDC:  LDRH            R2, [R0,#2]
21CBDE:  LDR.W           R1, [R6,R1,LSL#2]
21CBE2:  LDRH            R0, [R0,#6]
21CBE4:  STR             R0, [SP,#0x120+var_120]
21CBE6:  MOV             R0, R11
21CBE8:  BLX             j__Z23_rpBuildMeshAddTriangleP11RpBuildMeshP10RpMaterialiii; _rpBuildMeshAddTriangle(RpBuildMesh *,RpMaterial *,int,int,int)
21CBEC:  LDRH.W          R0, [R4,#0x8C]
21CBF0:  ADDS            R5, #1
21CBF2:  CMP             R5, R0
21CBF4:  BLT             loc_21CBD0
21CBF6:  LDR.W           R0, [R8,#8]
21CBFA:  AND.W           R1, R0, #1
21CBFE:  MOV             R0, R11
21CC00:  BLX             j__Z15_rpMeshOptimiseP11RpBuildMeshj; _rpMeshOptimise(RpBuildMesh *,uint)
21CC04:  CBZ             R0, loc_21CC1A
21CC06:  STR.W           R0, [R4,#0x80]
21CC0A:  LDR.W           R4, [R9,R10,LSL#2]
21CC0E:  SUB.W           R10, R10, #1
21CC12:  CMP.W           R10, #0xFFFFFFFF
21CC16:  BGT             loc_21CB88
21CC18:  B               loc_21CC24
21CC1A:  MOV             R0, R11
21CC1C:  BLX             j__Z19_rpBuildMeshDestroyP11RpBuildMesh; _rpBuildMeshDestroy(RpBuildMesh *)
21CC20:  MOV.W           R8, #0
21CC24:  MOV             R0, R8
21CC26:  ADD             SP, SP, #0x104
21CC28:  POP.W           {R8-R11}
21CC2C:  POP             {R4-R7,PC}
