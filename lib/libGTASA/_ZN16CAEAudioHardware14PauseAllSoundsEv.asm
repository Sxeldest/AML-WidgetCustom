; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware14PauseAllSoundsEv
; Address            : 0x3932CA - 0x393304
; =========================================================

3932CA:  PUSH            {R4-R7,LR}
3932CC:  ADD             R7, SP, #0xC
3932CE:  PUSH.W          {R11}
3932D2:  MOV             R4, R0
3932D4:  LDRB            R0, [R4]
3932D6:  CMP             R0, #0
3932D8:  ITT NE
3932DA:  LDRHNE.W        R0, [R4,#0x4A]
3932DE:  CMPNE           R0, #0
3932E0:  BEQ             loc_3932FE
3932E2:  ADDW            R5, R4, #0xBCC
3932E6:  MOVS            R6, #0
3932E8:  LDR.W           R0, [R5,R6,LSL#2]
3932EC:  LDR             R1, [R0]
3932EE:  LDR             R2, [R1,#0x24]
3932F0:  MOVS            R1, #0
3932F2:  BLX             R2
3932F4:  LDRH.W          R0, [R4,#0x4A]
3932F8:  ADDS            R6, #1
3932FA:  CMP             R6, R0
3932FC:  BLT             loc_3932E8
3932FE:  POP.W           {R11}
393302:  POP             {R4-R7,PC}
