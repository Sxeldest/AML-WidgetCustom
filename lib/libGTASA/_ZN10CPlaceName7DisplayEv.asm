; =========================================================
; Game Engine Function: _ZN10CPlaceName7DisplayEv
; Address            : 0x421288 - 0x4212A6
; =========================================================

421288:  LDR             R0, [R0]; this
42128A:  CBZ             R0, loc_42129E
42128C:  PUSH            {R7,LR}
42128E:  MOV             R7, SP
421290:  BLX             j__ZN5CZone17GetTranslatedNameEv; CZone::GetTranslatedName(void)
421294:  POP.W           {R7,LR}
421298:  MOVS            R1, #0; unsigned __int16 *
42129A:  B.W             sub_18A8B8
42129E:  MOVS            R0, #0; this
4212A0:  MOVS            R1, #0; unsigned __int16 *
4212A2:  B.W             sub_18A8B8
