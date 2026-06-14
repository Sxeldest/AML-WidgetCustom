; =========================================================
; Game Engine Function: sub_21DF50
; Address            : 0x21DF50 - 0x21DF60
; =========================================================

21DF50:  MOV             R12, R0
21DF52:  LDR             R0, [R2,#0x58]
21DF54:  ADD.W           R3, R2, #0x20 ; ' '
21DF58:  MOV             R1, R2
21DF5A:  MOV             R2, R12
21DF5C:  B.W             j_j__Z12_rpMeshWritePK12RpMeshHeaderPKvP8RwStreamPK14RpMaterialList; j__rpMeshWrite(RpMeshHeader const*,void const*,RwStream *,RpMaterialList const*)
