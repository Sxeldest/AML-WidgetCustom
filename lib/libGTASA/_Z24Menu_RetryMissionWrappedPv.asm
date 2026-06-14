; =========================================================
; Game Engine Function: _Z24Menu_RetryMissionWrappedPv
; Address            : 0x29B2FC - 0x29B310
; =========================================================

29B2FC:  PUSH            {R7,LR}
29B2FE:  MOV             R7, SP
29B300:  MOVS            R0, #0; bool
29B302:  MOVS            R1, #0x1E; int
29B304:  BLX             j__Z19Menu_DrawLoadScreenbi; Menu_DrawLoadScreen(bool,int)
29B308:  POP.W           {R7,LR}
29B30C:  B.W             sub_196FA0
