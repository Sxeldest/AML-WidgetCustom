; =========================================================
; Game Engine Function: sub_21DF68
; Address            : 0x21DF68 - 0x21DF8E
; =========================================================

21DF68:  PUSH            {R4,R5,R7,LR}
21DF6A:  ADD             R7, SP, #8
21DF6C:  MOV             R4, R2
21DF6E:  MOV             R5, R0
21DF70:  MOV             R0, R4
21DF72:  BLX             j__Z21RpWorldSectorGetWorldPK13RpWorldSector; RpWorldSectorGetWorld(RpWorldSector const*)
21DF76:  MOV             R1, R0
21DF78:  ADD.W           R2, R1, #0x10
21DF7C:  MOV             R0, R5
21DF7E:  BLX             j__Z11_rpMeshReadP8RwStreamPKvPK14RpMaterialList; _rpMeshRead(RwStream *,void const*,RpMaterialList const*)
21DF82:  CMP             R0, #0
21DF84:  STR.W           R0, [R4,#0x80]
21DF88:  IT NE
21DF8A:  MOVNE           R0, R5
21DF8C:  POP             {R4,R5,R7,PC}
