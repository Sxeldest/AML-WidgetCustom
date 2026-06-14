; =========================================================
; Game Engine Function: SetMixerFPUMode
; Address            : 0x23ED98 - 0x23EDAE
; =========================================================

23ED98:  PUSH            {R4,R6,R7,LR}
23ED9A:  ADD             R7, SP, #8
23ED9C:  MOV             R4, R0
23ED9E:  BLX             fegetround
23EDA2:  STR             R0, [R4]
23EDA4:  MOVS            R0, #3; rounding_direction
23EDA6:  POP.W           {R4,R6,R7,LR}
23EDAA:  B.W             j_fesetround
