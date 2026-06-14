; =========================================================
; Game Engine Function: _ZN14COnscreenTimer17AddCounterCounterEjjPct
; Address            : 0x315116 - 0x315158
; =========================================================

315116:  PUSH            {R4,R5,R7,LR}
315118:  ADD             R7, SP, #8
31511A:  LDR             R4, [R7,#arg_0]
31511C:  ADD.W           R4, R4, R4,LSL#4
315120:  ADD.W           R5, R0, R4,LSL#2
315124:  MOV             R0, R5
315126:  LDR.W           R4, [R0,#0x40]!
31512A:  CMP             R4, #0
31512C:  IT NE
31512E:  POPNE           {R4,R5,R7,PC}
315130:  STR             R1, [R0]
315132:  ADD.W           R0, R5, #0x48 ; 'H'; char *
315136:  CMP             R3, #0
315138:  STR             R2, [R5,#0x44]
31513A:  BEQ             loc_315146
31513C:  MOV             R1, R3; char *
31513E:  MOVS            R2, #0xA; size_t
315140:  BLX             strncpy
315144:  B               loc_31514A
315146:  MOVS            R1, #0
315148:  STRB            R1, [R0]
31514A:  MOVS            R0, #1
31514C:  STRB.W          R0, [R5,#0x7F]
315150:  MOVS            R0, #2
315152:  STRH.W          R0, [R5,#0x52]
315156:  POP             {R4,R5,R7,PC}
