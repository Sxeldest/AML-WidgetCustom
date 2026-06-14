; =========================================================
; Game Engine Function: sub_21DF34
; Address            : 0x21DF34 - 0x21DF50
; =========================================================

21DF34:  PUSH            {R4,R5,R7,LR}
21DF36:  ADD             R7, SP, #8
21DF38:  MOV             R4, R2
21DF3A:  ADD.W           R2, R4, #0x20 ; ' '
21DF3E:  MOV             R1, R4
21DF40:  MOV             R5, R0
21DF42:  BLX             j__Z11_rpMeshReadP8RwStreamPKvPK14RpMaterialList; _rpMeshRead(RwStream *,void const*,RpMaterialList const*)
21DF46:  CMP             R0, #0
21DF48:  STR             R0, [R4,#0x58]
21DF4A:  IT NE
21DF4C:  MOVNE           R0, R5
21DF4E:  POP             {R4,R5,R7,PC}
