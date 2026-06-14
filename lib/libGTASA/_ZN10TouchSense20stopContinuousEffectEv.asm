; =========================================================
; Game Engine Function: _ZN10TouchSense20stopContinuousEffectEv
; Address            : 0x270BAC - 0x270BD4
; =========================================================

270BAC:  PUSH            {R4,R6,R7,LR}
270BAE:  ADD             R7, SP, #8
270BB0:  MOV             R4, R0
270BB2:  LDR             R0, =(UseTouchSense_ptr - 0x270BB8)
270BB4:  ADD             R0, PC; UseTouchSense_ptr
270BB6:  LDR             R0, [R0]; UseTouchSense
270BB8:  LDRB            R0, [R0]
270BBA:  CMP             R0, #0
270BBC:  ITT NE
270BBE:  LDRNE           R1, [R4,#0x2C]
270BC0:  ADDSNE.W        R0, R1, #1
270BC4:  BEQ             locret_270BD2
270BC6:  LDR             R0, [R4,#0x24]
270BC8:  BLX             ImmVibeStopPlayingEffect
270BCC:  MOV.W           R0, #0xFFFFFFFF
270BD0:  STR             R0, [R4,#0x2C]
270BD2:  POP             {R4,R6,R7,PC}
