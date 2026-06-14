; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity22CanPedSayGlobalContextEs
; Address            : 0x39D1F0 - 0x39D2B8
; =========================================================

39D1F0:  PUSH            {R4-R7,LR}
39D1F2:  ADD             R7, SP, #0xC
39D1F4:  PUSH.W          {R11}
39D1F8:  LDRB.W          R2, [R0,#0x90]
39D1FC:  CMP             R2, #0
39D1FE:  BEQ             def_39D252; jumptable 0039D252 default case
39D200:  UBFX.W          R2, R1, #3, #0xD
39D204:  CMP             R2, #0x2C ; ','
39D206:  BHI             def_39D252; jumptable 0039D252 default case
39D208:  LDRSH.W         R12, [R0,#0x92]
39D20C:  UXTH.W          R2, R12
39D210:  CMP             R2, #5
39D212:  BHI             def_39D252; jumptable 0039D252 default case
39D214:  LDR             R2, =(gSpeechContextLookup_ptr - 0x39D220)
39D216:  MOVS            R3, #0
39D218:  MOVW            LR, #0xFFFF
39D21C:  ADD             R2, PC; gSpeechContextLookup_ptr
39D21E:  LDR             R4, [R2]; gSpeechContextLookup
39D220:  SXTH            R2, R3
39D222:  LSLS            R5, R2, #4
39D224:  LDRH            R5, [R4,R5]
39D226:  CMP             R5, LR
39D228:  ITTT NE
39D22A:  ADDNE           R3, #1
39D22C:  UXTHNE          R6, R1
39D22E:  CMPNE           R5, R6
39D230:  BNE             loc_39D220
39D232:  CMP             R5, LR
39D234:  BEQ             def_39D252; jumptable 0039D252 default case
39D236:  LDR             R1, =(gSpeechContextLookup_ptr - 0x39D23C)
39D238:  ADD             R1, PC; gSpeechContextLookup_ptr
39D23A:  LDR             R1, [R1]; gSpeechContextLookup
39D23C:  ADD.W           R1, R1, R2,LSL#4
39D240:  ADD.W           R1, R1, R12,LSL#1
39D244:  LDRSH.W         R1, [R1,#2]
39D248:  CMP             R1, #0
39D24A:  BLT             def_39D252; jumptable 0039D252 default case
39D24C:  CMP.W           R12, #3; switch 4 cases
39D250:  BHI             def_39D252; jumptable 0039D252 default case
39D252:  TBB.W           [PC,R12]; switch jump
39D256:  DCB 2; jump table for switch statement
39D257:  DCB 0x13
39D258:  DCB 0x17
39D259:  DCB 0x21
39D25A:  LDR             R2, =(gGenSpeechLookup_ptr - 0x39D268); jumptable 0039D252 case 0
39D25C:  MOV.W           R3, #0x1A2
39D260:  LDRSH.W         R0, [R0,#0x94]
39D264:  ADD             R2, PC; gGenSpeechLookup_ptr
39D266:  LDR             R2, [R2]; gGenSpeechLookup
39D268:  SMLABB.W        R1, R1, R3, R2
39D26C:  LDRB.W          R0, [R1,R0,LSL#1]
39D270:  CMP             R0, #0xFF
39D272:  BEQ             def_39D252; jumptable 0039D252 default case
39D274:  MOVS            R0, #1
39D276:  POP.W           {R11}
39D27A:  POP             {R4-R7,PC}
39D27C:  LDR             R2, =(gEmgSpeechLookup_ptr - 0x39D284); jumptable 0039D252 case 1
39D27E:  MOVS            R3, #0xB8
39D280:  ADD             R2, PC; gEmgSpeechLookup_ptr
39D282:  B               loc_39D29E
39D284:  LDR             R2, =(gPlySpeechLookup_ptr - 0x39D292); jumptable 0039D252 case 2
39D286:  ADD.W           R1, R1, R1,LSL#2
39D28A:  LDRSH.W         R0, [R0,#0x94]
39D28E:  ADD             R2, PC; gPlySpeechLookup_ptr
39D290:  LDR             R2, [R2]; gPlySpeechLookup
39D292:  ADD.W           R1, R2, R1,LSL#4
39D296:  B               loc_39D2A8
39D298:  LDR             R2, =(gGngSpeechLookup_ptr - 0x39D2A0); jumptable 0039D252 case 3
39D29A:  MOVS            R3, #0xD0
39D29C:  ADD             R2, PC; gGngSpeechLookup_ptr
39D29E:  LDR             R2, [R2]
39D2A0:  LDRSH.W         R0, [R0,#0x94]
39D2A4:  SMLABB.W        R1, R1, R3, R2
39D2A8:  LDRH.W          R0, [R1,R0,LSL#2]
39D2AC:  CMP             R0, LR
39D2AE:  BNE             loc_39D274
39D2B0:  MOVS            R0, #0; jumptable 0039D252 default case
39D2B2:  POP.W           {R11}
39D2B6:  POP             {R4-R7,PC}
