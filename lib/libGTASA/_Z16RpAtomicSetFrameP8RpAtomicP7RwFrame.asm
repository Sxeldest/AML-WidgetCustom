; =========================================================
; Game Engine Function: _Z16RpAtomicSetFrameP8RpAtomicP7RwFrame
; Address            : 0x214254 - 0x21426A
; =========================================================

214254:  PUSH            {R4,R6,R7,LR}
214256:  ADD             R7, SP, #8
214258:  MOV             R4, R0
21425A:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
21425E:  LDRB            R0, [R4,#3]
214260:  ORR.W           R0, R0, #1
214264:  STRB            R0, [R4,#3]
214266:  MOV             R0, R4
214268:  POP             {R4,R6,R7,PC}
