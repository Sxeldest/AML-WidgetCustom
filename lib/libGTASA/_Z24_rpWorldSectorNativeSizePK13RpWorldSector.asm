; =========================================================
; Game Engine Function: _Z24_rpWorldSectorNativeSizePK13RpWorldSector
; Address            : 0x220E84 - 0x220E90
; =========================================================

220E84:  PUSH            {R7,LR}
220E86:  MOV             R7, SP
220E88:  BLX             j__Z21RpWorldSectorGetWorldPK13RpWorldSector; RpWorldSectorGetWorld(RpWorldSector const*)
220E8C:  MOVS            R0, #0
220E8E:  POP             {R7,PC}
