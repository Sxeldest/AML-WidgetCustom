; =========================================================
; Game Engine Function: sub_21DF8E
; Address            : 0x21DF8E - 0x21DFB0
; =========================================================

21DF8E:  PUSH            {R4,R5,R7,LR}
21DF90:  ADD             R7, SP, #8
21DF92:  MOV             R4, R2
21DF94:  MOV             R5, R0
21DF96:  MOV             R0, R4
21DF98:  BLX             j__Z21RpWorldSectorGetWorldPK13RpWorldSector; RpWorldSectorGetWorld(RpWorldSector const*)
21DF9C:  MOV             R1, R0
21DF9E:  LDR.W           R0, [R4,#0x80]
21DFA2:  ADD.W           R3, R1, #0x10
21DFA6:  MOV             R2, R5
21DFA8:  POP.W           {R4,R5,R7,LR}
21DFAC:  B.W             j_j__Z12_rpMeshWritePK12RpMeshHeaderPKvP8RwStreamPK14RpMaterialList; j__rpMeshWrite(RpMeshHeader const*,void const*,RwStream *,RpMaterialList const*)
