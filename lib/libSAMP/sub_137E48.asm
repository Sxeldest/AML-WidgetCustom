; =========================================================
; Game Engine Function: sub_137E48
; Address            : 0x137E48 - 0x137F60
; =========================================================

137E48:  PUSH            {R4-R7,LR}
137E4A:  ADD             R7, SP, #0xC
137E4C:  PUSH.W          {R8-R10}
137E50:  VPUSH           {D8-D15}
137E54:  SUB             SP, SP, #8
137E56:  MOV             R9, R0
137E58:  LDR             R0, =(off_2349A8 - 0x137E62)
137E5A:  VLDR            S2, [R9,#0x14]
137E5E:  ADD             R0, PC; off_2349A8
137E60:  LDR             R0, [R0]; dword_381BF4
137E62:  LDR             R0, [R0]
137E64:  LDRB.W          R0, [R0,#0x84]
137E68:  CBZ             R0, loc_137E74
137E6A:  VLDR            S4, =0.392
137E6E:  VLDR            S6, =1.127
137E72:  B               loc_137E7C
137E74:  VLDR            S4, =0.4
137E78:  VLDR            S6, =1.118
137E7C:  VLDR            S0, [R9,#0x18]
137E80:  VMUL.F32        S16, S2, S6
137E84:  LDR             R0, =(unk_3141C8 - 0x137E8E)
137E86:  VMUL.F32        S18, S0, S4
137E8A:  ADD             R0, PC; unk_3141C8
137E8C:  LDR             R4, [R0,#(dword_3141D0 - 0x3141C8)]
137E8E:  CMP             R4, #0
137E90:  BEQ             loc_137F46
137E92:  VLDR            S4, =0.12
137E96:  MOVS            R5, #0
137E98:  VLDR            S2, =0.52
137E9C:  MOV             R8, SP
137E9E:  VMUL.F32        S22, S0, S4
137EA2:  LDR             R0, =(word_3141DC - 0x137EB0)
137EA4:  VMUL.F32        S20, S0, S2
137EA8:  VLDR            S28, =-0.07
137EAC:  ADD             R0, PC; word_3141DC
137EAE:  VLDR            S30, =0.9
137EB2:  MOV             R10, R0
137EB4:  LDRB            R0, [R0,#(word_3141DC+1 - 0x3141DC)]
137EB6:  VDUP.32         Q6, D11[0]
137EBA:  MOV             R6, R4
137EBC:  CBZ             R0, loc_137EC4
137EBE:  LDR.W           R0, [R6,#0xC]!
137EC2:  B               loc_137ED4
137EC4:  LDR.W           R0, [R6,#0xC]!
137EC8:  MOV             R2, R10
137ECA:  LDR.W           R2, [R10,#(dword_3141E0 - 0x3141DC)]
137ECE:  LDR             R1, [R0,#0x74]
137ED0:  CMP             R2, R1
137ED2:  BNE             loc_137F42
137ED4:  ADDS            R5, #1
137ED6:  VMOV.F32        S2, S30
137EDA:  ADDS            R0, #0x14
137EDC:  MOV             R1, R8
137EDE:  VMOV            S0, R5
137EE2:  VST1.32         {D12-D13}, [R0]!
137EE6:  VCVT.F32.S32    S0, S0
137EEA:  VSTR            S22, [R0]
137EEE:  VSTR            S22, [R0,#4]
137EF2:  LDR             R0, [R6]
137EF4:  VSTR            S18, [SP,#0x60+var_5C]
137EF8:  VMLA.F32        S2, S0, S28
137EFC:  VLDR            S0, [R9,#0x14]
137F00:  VMUL.F32        S17, S16, S2
137F04:  VSUB.F32        S0, S0, S17
137F08:  VSUB.F32        S0, S0, S22
137F0C:  VSTR            S0, [SP,#0x60+var_60]
137F10:  BL              sub_12BD92
137F14:  VLDR            S0, [R9,#0x14]
137F18:  MOV             R1, R8
137F1A:  LDR             R0, [R6]
137F1C:  VSUB.F32        S0, S0, S17
137F20:  VSTR            S20, [SP,#0x60+var_5C]
137F24:  LDR.W           R0, [R0,#0xA8]
137F28:  VSUB.F32        S0, S0, S22
137F2C:  VSTR            S0, [SP,#0x60+var_60]
137F30:  BL              sub_12BD92
137F34:  MOV             R0, R10
137F36:  LDRB.W          R0, [R10,#(word_3141DC+1 - 0x3141DC)]
137F3A:  LDR             R4, [R4]
137F3C:  CMP             R4, #0
137F3E:  BNE             loc_137EBA
137F40:  B               loc_137F46
137F42:  MOVS            R0, #0
137F44:  B               loc_137F3A
137F46:  LDR             R1, =(aAxl - 0x137F50); "AXL" ...
137F48:  MOVS            R0, #4; prio
137F4A:  LDR             R2, =(aVoicebuttonLay - 0x137F52); "VoiceButton: layout performed!" ...
137F4C:  ADD             R1, PC; "AXL"
137F4E:  ADD             R2, PC; "VoiceButton: layout performed!"
137F50:  BLX             __android_log_print
137F54:  ADD             SP, SP, #8
137F56:  VPOP            {D8-D15}
137F5A:  POP.W           {R8-R10}
137F5E:  POP             {R4-R7,PC}
