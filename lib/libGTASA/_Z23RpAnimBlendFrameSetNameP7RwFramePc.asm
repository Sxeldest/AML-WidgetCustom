; =========================================================
; Game Engine Function: _Z23RpAnimBlendFrameSetNameP7RwFramePc
; Address            : 0x390254 - 0x390262
; =========================================================

390254:  PUSH            {R4,R6,R7,LR}
390256:  ADD             R7, SP, #8
390258:  MOV             R4, R0
39025A:  BLX             j__Z16SetFrameNodeNameP7RwFramePKc; SetFrameNodeName(RwFrame *,char const*)
39025E:  MOV             R0, R4
390260:  POP             {R4,R6,R7,PC}
