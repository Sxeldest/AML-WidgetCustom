; =========================================================
; Game Engine Function: _ZN14CStreamingInfo14RemoveFromListEv
; Address            : 0x2CF414 - 0x2CF44C
; =========================================================

2CF414:  PUSH            {R7,LR}
2CF416:  MOV             R7, SP
2CF418:  LDR             R1, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2CF422)
2CF41A:  LDRSH.W         R12, [R0]
2CF41E:  ADD             R1, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2CF420:  LDRH.W          LR, [R0,#2]
2CF424:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase ...
2CF426:  ADD.W           R3, R12, R12,LSL#2
2CF42A:  LDR             R2, [R1]; CStreamingInfo::ms_pArrayBase
2CF42C:  ADD.W           R2, R2, R3,LSL#2
2CF430:  STRH.W          LR, [R2,#2]
2CF434:  LDRSH.W         R2, [R0,#2]
2CF438:  LDR             R1, [R1]; CStreamingInfo::ms_pArrayBase
2CF43A:  LDRH            R3, [R0]
2CF43C:  ADD.W           R2, R2, R2,LSL#2
2CF440:  STRH.W          R3, [R1,R2,LSL#2]
2CF444:  MOV.W           R1, #0xFFFFFFFF
2CF448:  STR             R1, [R0]
2CF44A:  POP             {R7,PC}
