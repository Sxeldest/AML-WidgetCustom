; =========================================================
; Game Engine Function: _ZN10TouchSense14stopAllEffectsEv
; Address            : 0x270CAC - 0x270CFC
; =========================================================

270CAC:  PUSH            {R4,R6,R7,LR}
270CAE:  ADD             R7, SP, #8
270CB0:  SUB             SP, SP, #8
270CB2:  MOV             R4, R0
270CB4:  LDR             R0, =(UseTouchSense_ptr - 0x270CBA)
270CB6:  ADD             R0, PC; UseTouchSense_ptr
270CB8:  LDR             R0, [R0]; UseTouchSense
270CBA:  LDRB            R0, [R0]
270CBC:  CBZ             R0, loc_270CF8
270CBE:  LDR             R0, [R4]
270CC0:  CMP             R0, #1
270CC2:  BLT             loc_270CF8
270CC4:  LDR             R1, [R4,#0x2C]
270CC6:  ADDS            R0, R1, #1
270CC8:  BEQ             loc_270CD6
270CCA:  LDR             R0, [R4,#0x24]
270CCC:  BLX             ImmVibeStopPlayingEffect
270CD0:  MOV.W           R0, #0xFFFFFFFF
270CD4:  STR             R0, [R4,#0x2C]
270CD6:  LDR             R1, [R4,#0x28]
270CD8:  ADDS            R0, R1, #1
270CDA:  BEQ             loc_270CF8
270CDC:  LDR             R0, [R4,#0x24]
270CDE:  ADD             R2, SP, #0x10+var_C
270CE0:  BLX             ImmVibeGetEffectState
270CE4:  LDR             R0, [SP,#0x10+var_C]
270CE6:  CMP             R0, #1
270CE8:  ITT EQ
270CEA:  LDRDEQ.W        R0, R1, [R4,#0x24]
270CEE:  BLXEQ           ImmVibeStopPlayingEffect
270CF2:  MOV.W           R0, #0xFFFFFFFF
270CF6:  STR             R0, [R4,#0x28]
270CF8:  ADD             SP, SP, #8
270CFA:  POP             {R4,R6,R7,PC}
