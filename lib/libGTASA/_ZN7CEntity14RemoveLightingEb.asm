; =========================================================
; Game Engine Function: _ZN7CEntity14RemoveLightingEb
; Address            : 0x4104CC - 0x4104E6
; =========================================================

4104CC:  CMP             R1, #1
4104CE:  IT NE
4104D0:  BXNE            LR
4104D2:  PUSH            {R7,LR}
4104D4:  MOV             R7, SP
4104D6:  BLX             j__Z17SetAmbientColoursv; SetAmbientColours(void)
4104DA:  BLX             j__Z21DeActivateDirectionalv; DeActivateDirectional(void)
4104DE:  POP.W           {R7,LR}
4104E2:  B.W             sub_1919FC
