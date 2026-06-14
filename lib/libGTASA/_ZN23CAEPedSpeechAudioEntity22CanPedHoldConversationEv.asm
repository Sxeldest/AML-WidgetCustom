; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity22CanPedHoldConversationEv
; Address            : 0x39D128 - 0x39D1D8
; =========================================================

39D128:  PUSH            {R4,R6,R7,LR}
39D12A:  ADD             R7, SP, #8
39D12C:  LDRB.W          R1, [R0,#0x90]
39D130:  CMP             R1, #0
39D132:  BEQ             def_39D17A; jumptable 0039D17A default case
39D134:  LDRSH.W         R12, [R0,#0x92]
39D138:  CMP.W           R12, #5
39D13C:  BHI             def_39D17A; jumptable 0039D17A default case
39D13E:  LDR             R1, =(gSpeechContextLookup_ptr - 0x39D14A)
39D140:  MOVS            R2, #0
39D142:  MOVW            LR, #0xFFFF
39D146:  ADD             R1, PC; gSpeechContextLookup_ptr
39D148:  LDR             R3, [R1]; gSpeechContextLookup
39D14A:  SXTH            R1, R2
39D14C:  LSLS            R4, R1, #4
39D14E:  LDRH            R4, [R3,R4]
39D150:  CMP             R4, LR
39D152:  BEQ             def_39D17A; jumptable 0039D17A default case
39D154:  ADDS            R2, #1
39D156:  CMP             R4, #0xA9
39D158:  BNE             loc_39D14A
39D15A:  LDR             R2, =(gSpeechContextLookup_ptr - 0x39D160)
39D15C:  ADD             R2, PC; gSpeechContextLookup_ptr
39D15E:  LDR             R2, [R2]; gSpeechContextLookup
39D160:  ADD.W           R1, R2, R1,LSL#4
39D164:  ADD.W           R1, R1, R12,LSL#1
39D168:  LDRSH.W         R2, [R1,#2]
39D16C:  CMP             R2, #0
39D16E:  BLT             def_39D17A; jumptable 0039D17A default case
39D170:  CMP.W           R12, #3; switch 4 cases
39D174:  BHI             def_39D17A; jumptable 0039D17A default case
39D176:  MOVW            R3, #0xFFFF
39D17A:  TBB.W           [PC,R12]; switch jump
39D17E:  DCB 2; jump table for switch statement
39D17F:  DCB 0x1F
39D180:  DCB 0x11
39D181:  DCB 0x1B
39D182:  LDR             R1, =(gGenSpeechLookup_ptr - 0x39D190); jumptable 0039D17A case 0
39D184:  MOV.W           R3, #0x1A2
39D188:  LDRSH.W         R0, [R0,#0x94]
39D18C:  ADD             R1, PC; gGenSpeechLookup_ptr
39D18E:  LDR             R1, [R1]; gGenSpeechLookup
39D190:  SMLABB.W        R1, R2, R3, R1
39D194:  LDRB.W          R0, [R1,R0,LSL#1]
39D198:  CMP             R0, #0xFF
39D19A:  BEQ             def_39D17A; jumptable 0039D17A default case
39D19C:  MOVS            R0, #1
39D19E:  POP             {R4,R6,R7,PC}
39D1A0:  LDR             R1, =(gPlySpeechLookup_ptr - 0x39D1AE); jumptable 0039D17A case 2
39D1A2:  ADD.W           R2, R2, R2,LSL#2
39D1A6:  LDRSH.W         R0, [R0,#0x94]
39D1AA:  ADD             R1, PC; gPlySpeechLookup_ptr
39D1AC:  LDR             R1, [R1]; gPlySpeechLookup
39D1AE:  ADD.W           R1, R1, R2,LSL#4
39D1B2:  B               loc_39D1CC
39D1B4:  LDR             R1, =(gGngSpeechLookup_ptr - 0x39D1BC); jumptable 0039D17A case 3
39D1B6:  MOVS            R4, #0xD0
39D1B8:  ADD             R1, PC; gGngSpeechLookup_ptr
39D1BA:  B               loc_39D1C2
39D1BC:  LDR             R1, =(gEmgSpeechLookup_ptr - 0x39D1C4); jumptable 0039D17A case 1
39D1BE:  MOVS            R4, #0xB8
39D1C0:  ADD             R1, PC; gEmgSpeechLookup_ptr
39D1C2:  LDR             R1, [R1]
39D1C4:  LDRSH.W         R0, [R0,#0x94]
39D1C8:  SMLABB.W        R1, R2, R4, R1
39D1CC:  LDRH.W          R0, [R1,R0,LSL#2]
39D1D0:  CMP             R0, R3
39D1D2:  BNE             loc_39D19C
39D1D4:  MOVS            R0, #0; jumptable 0039D17A default case
39D1D6:  POP             {R4,R6,R7,PC}
