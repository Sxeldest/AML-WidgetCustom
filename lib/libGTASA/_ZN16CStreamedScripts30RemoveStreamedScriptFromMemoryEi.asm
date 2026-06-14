; =========================================================
; Game Engine Function: _ZN16CStreamedScripts30RemoveStreamedScriptFromMemoryEi
; Address            : 0x3354B8 - 0x3354D4
; =========================================================

3354B8:  PUSH            {R4,R6,R7,LR}
3354BA:  ADD             R7, SP, #8
3354BC:  MOV             R2, R0
3354BE:  LSLS            R0, R1, #5
3354C0:  LDR             R0, [R2,R0]; void *
3354C2:  ADD.W           R4, R2, R1,LSL#5
3354C6:  CMP             R0, #0
3354C8:  IT NE
3354CA:  BLXNE           _ZdaPv; operator delete[](void *)
3354CE:  MOVS            R0, #0
3354D0:  STR             R0, [R4]
3354D2:  POP             {R4,R6,R7,PC}
