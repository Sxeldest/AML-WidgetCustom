; =========================================================
; Game Engine Function: _Z25_rpWorldSectorNativeWriteP8RwStreamPK13RpWorldSector
; Address            : 0x220E70 - 0x220E80
; =========================================================

220E70:  PUSH            {R4,R6,R7,LR}
220E72:  ADD             R7, SP, #8
220E74:  MOV             R4, R0
220E76:  MOV             R0, R1
220E78:  BLX             j__Z21RpWorldSectorGetWorldPK13RpWorldSector; RpWorldSectorGetWorld(RpWorldSector const*)
220E7C:  MOV             R0, R4
220E7E:  POP             {R4,R6,R7,PC}
