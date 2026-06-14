; =========================================================
; Game Engine Function: _Z16RpLightSetRadiusP7RpLightf
; Address            : 0x2167B0 - 0x2167C6
; =========================================================

2167B0:  PUSH            {R4,R6,R7,LR}
2167B2:  ADD             R7, SP, #8
2167B4:  MOV             R4, R0
2167B6:  LDR             R0, [R4,#4]
2167B8:  STR             R1, [R4,#0x14]
2167BA:  CMP             R0, #0
2167BC:  IT NE
2167BE:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
2167C2:  MOV             R0, R4
2167C4:  POP             {R4,R6,R7,PC}
