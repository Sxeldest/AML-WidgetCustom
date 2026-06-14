; =========================================================
; Game Engine Function: _ZN16CStreamedScripts37GetStreamedScriptWithThisStartAddressEPh
; Address            : 0x3354DC - 0x33550A
; =========================================================

3354DC:  PUSH            {R7,LR}
3354DE:  MOV             R7, SP
3354E0:  MOV.W           R12, #0
3354E4:  MOVS            R3, #0
3354E6:  MOV.W           R2, R12,LSL#5
3354EA:  LDR.W           LR, [R0,R2]
3354EE:  MOVS            R2, #0
3354F0:  CMP             LR, R1
3354F2:  IT NE
3354F4:  MOVNE           R2, #1
3354F6:  ADD             R3, R2
3354F8:  UXTH.W          R12, R3
3354FC:  CMP.W           R12, #0x51 ; 'Q'
335500:  BHI             loc_335506
335502:  CMP             LR, R1
335504:  BNE             loc_3354E6
335506:  MOV             R0, R12
335508:  POP             {R7,PC}
