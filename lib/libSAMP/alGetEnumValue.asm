; =========================================================
; Game Engine Function: alGetEnumValue
; Address            : 0x1DCDC4 - 0x1DCF1C
; =========================================================

1DCDC4:  PUSH            {R4-R6,R10,R11,LR}
1DCDC8:  ADD             R11, SP, #0x10
1DCDCC:  MOV             R4, R0
1DCDD0:  LDR             R0, =(DisabledEffects_ptr - 0x1DCDDC)
1DCDD4:  LDR             R0, [PC,R0]; DisabledEffects
1DCDD8:  LDRB            R0, [R0]
1DCDDC:  CMP             R0, #0
1DCDE0:  BEQ             loc_1DCDFC
1DCDE4:  LDR             R0, =(aAlEffectEaxrev - 0x1DCDF4); "AL_EFFECT_EAXREVERB" ...
1DCDE8:  MOV             R1, R4; s2
1DCDEC:  ADD             R0, PC, R0; "AL_EFFECT_EAXREVERB"
1DCDF0:  BL              strcmp
1DCDF4:  CMP             R0, #0
1DCDF8:  BEQ             loc_1DCF10
1DCDFC:  LDR             R0, =(DisabledEffects_ptr - 0x1DCE08)
1DCE00:  LDR             R0, [PC,R0]; DisabledEffects
1DCE04:  LDRB            R0, [R0,#(byte_23CAD1 - 0x23CAD0)]
1DCE08:  CMP             R0, #0
1DCE0C:  BEQ             loc_1DCE28
1DCE10:  LDR             R0, =(aAlEffectReverb - 0x1DCE20); "AL_EFFECT_REVERB" ...
1DCE14:  MOV             R1, R4; s2
1DCE18:  ADD             R0, PC, R0; "AL_EFFECT_REVERB"
1DCE1C:  BL              strcmp
1DCE20:  CMP             R0, #0
1DCE24:  BEQ             loc_1DCF10
1DCE28:  LDR             R0, =(DisabledEffects_ptr - 0x1DCE34)
1DCE2C:  LDR             R0, [PC,R0]; DisabledEffects
1DCE30:  LDRB            R0, [R0,#(byte_23CAD2 - 0x23CAD0)]
1DCE34:  CMP             R0, #0
1DCE38:  BEQ             loc_1DCE54
1DCE3C:  LDR             R0, =(aAlEffectEcho - 0x1DCE4C); "AL_EFFECT_ECHO" ...
1DCE40:  MOV             R1, R4; s2
1DCE44:  ADD             R0, PC, R0; "AL_EFFECT_ECHO"
1DCE48:  BL              strcmp
1DCE4C:  CMP             R0, #0
1DCE50:  BEQ             loc_1DCF10
1DCE54:  LDR             R0, =(DisabledEffects_ptr - 0x1DCE60)
1DCE58:  LDR             R0, [PC,R0]; DisabledEffects
1DCE5C:  LDRB            R0, [R0,#(byte_23CAD3 - 0x23CAD0)]
1DCE60:  CMP             R0, #0
1DCE64:  BEQ             loc_1DCE80
1DCE68:  LDR             R0, =(aAlEffectRingMo - 0x1DCE78); "AL_EFFECT_RING_MODULATOR" ...
1DCE6C:  MOV             R1, R4; s2
1DCE70:  ADD             R0, PC, R0; "AL_EFFECT_RING_MODULATOR"
1DCE74:  BL              strcmp
1DCE78:  CMP             R0, #0
1DCE7C:  BEQ             loc_1DCF10
1DCE80:  LDR             R0, =(DisabledEffects_ptr - 0x1DCE8C)
1DCE84:  LDR             R0, [PC,R0]; DisabledEffects
1DCE88:  LDRB            R0, [R0,#(byte_23CAD4 - 0x23CAD0)]
1DCE8C:  CMP             R0, #0
1DCE90:  BEQ             loc_1DCEC8
1DCE94:  LDR             R0, =(aAlEffectDedica - 0x1DCEA4); "AL_EFFECT_DEDICATED_LOW_FREQUENCY_EFFEC"... ...
1DCE98:  MOV             R1, R4; s2
1DCE9C:  ADD             R0, PC, R0; "AL_EFFECT_DEDICATED_LOW_FREQUENCY_EFFEC"...
1DCEA0:  BL              strcmp
1DCEA4:  MOV             R5, #0
1DCEA8:  CMP             R0, #0
1DCEAC:  BEQ             loc_1DCF08
1DCEB0:  LDR             R0, =(aAlEffectDedica_0 - 0x1DCEC0); "AL_EFFECT_DEDICATED_DIALOGUE" ...
1DCEB4:  MOV             R1, R4; s2
1DCEB8:  ADD             R0, PC, R0; "AL_EFFECT_DEDICATED_DIALOGUE"
1DCEBC:  BL              strcmp
1DCEC0:  CMP             R0, #0
1DCEC4:  BEQ             loc_1DCF08
1DCEC8:  LDR             R0, =(off_2308D4 - 0x1DCED8); "AL_INVALID" ...
1DCECC:  MOV             R5, #0
1DCED0:  ADD             R6, PC, R0; off_2308D4
1DCED4:  LDR             R0, [R6,R5,LSL#3]; s1
1DCED8:  MOV             R1, R4; s2
1DCEDC:  BL              strcmp
1DCEE0:  CMP             R0, #0
1DCEE4:  BEQ             loc_1DCEF8
1DCEE8:  ADD             R5, R5, #1
1DCEEC:  CMP             R5, #0xD6
1DCEF0:  BNE             loc_1DCED4
1DCEF4:  MOV             R5, #0xD6
1DCEF8:  LDR             R0, =(off_2308D4 - 0x1DCF04); "AL_INVALID" ...
1DCEFC:  ADD             R0, PC, R0; off_2308D4
1DCF00:  ADD             R0, R0, R5,LSL#3
1DCF04:  LDR             R5, [R0,#4]
1DCF08:  MOV             R0, R5
1DCF0C:  POP             {R4-R6,R10,R11,PC}
1DCF10:  MOV             R5, #0
1DCF14:  MOV             R0, R5
1DCF18:  POP             {R4-R6,R10,R11,PC}
