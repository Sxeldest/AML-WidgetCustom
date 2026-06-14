; =========================================================
; Game Engine Function: _ZN22CRealTimeShadowManagerC2Ev
; Address            : 0x5B81E4 - 0x5B8206
; =========================================================

5B81E4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CRealTimeShadowManager::CRealTimeShadowManager(void)'
5B81E6:  ADD             R7, SP, #8
5B81E8:  MOVS            R1, #0
5B81EA:  MOV             R4, R0
5B81EC:  STRB.W          R1, [R0],#4
5B81F0:  MOVS            R1, #0xA1
5B81F2:  BLX.W           j___aeabi_memclr8_0
5B81F6:  VMOV.I32        Q8, #0
5B81FA:  ADD.W           R0, R4, #0xA8
5B81FE:  VST1.32         {D16-D17}, [R0]
5B8202:  MOV             R0, R4
5B8204:  POP             {R4,R6,R7,PC}
