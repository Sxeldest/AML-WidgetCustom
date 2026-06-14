; =========================================================
; Game Engine Function: silk_resampler
; Address            : 0xB4E08 - 0xB4EF4
; =========================================================

B4E08:  PUSH            {R4-R7,LR}
B4E0A:  ADD             R7, SP, #0xC
B4E0C:  PUSH.W          {R8-R10}
B4E10:  MOV             R5, R0
B4E12:  MOV             R9, R2
B4E14:  MOV             R4, R1
B4E16:  LDR.W           R1, [R5,#0x11C]
B4E1A:  LDR.W           R2, [R5,#0x124]
B4E1E:  ADD.W           R10, R5, #0xA8
B4E22:  MOV             R8, R3
B4E24:  SUBS            R6, R1, R2
B4E26:  MOV             R1, R9; src
B4E28:  ADD.W           R0, R10, R2,LSL#1; dest
B4E2C:  LSLS            R2, R6, #1; n
B4E2E:  BLX             j_memcpy
B4E32:  LDR.W           R0, [R5,#0x108]
B4E36:  CMP             R0, #3
B4E38:  BEQ             loc_B4E68
B4E3A:  CMP             R0, #2
B4E3C:  BEQ             loc_B4E8E
B4E3E:  CMP             R0, #1
B4E40:  BNE             loc_B4EB4
B4E42:  LDR.W           R3, [R5,#0x11C]
B4E46:  MOV             R0, R5
B4E48:  MOV             R1, R4
B4E4A:  MOV             R2, R10
B4E4C:  BLX             j_silk_resampler_private_up2_HQ_wrapper
B4E50:  LDRD.W          R0, R1, [R5,#0x11C]
B4E54:  ADD.W           R2, R9, R6,LSL#1
B4E58:  ADD.W           R1, R4, R1,LSL#1
B4E5C:  SUB.W           R3, R8, R0
B4E60:  MOV             R0, R5
B4E62:  BLX             j_silk_resampler_private_up2_HQ_wrapper
B4E66:  B               loc_B4ED8
B4E68:  LDR.W           R3, [R5,#0x11C]
B4E6C:  MOV             R0, R5
B4E6E:  MOV             R1, R4
B4E70:  MOV             R2, R10
B4E72:  BLX             j_silk_resampler_private_down_FIR
B4E76:  LDRD.W          R0, R1, [R5,#0x11C]
B4E7A:  ADD.W           R2, R9, R6,LSL#1
B4E7E:  ADD.W           R1, R4, R1,LSL#1
B4E82:  SUB.W           R3, R8, R0
B4E86:  MOV             R0, R5
B4E88:  BLX             j_silk_resampler_private_down_FIR
B4E8C:  B               loc_B4ED8
B4E8E:  LDR.W           R3, [R5,#0x11C]
B4E92:  MOV             R0, R5
B4E94:  MOV             R1, R4
B4E96:  MOV             R2, R10
B4E98:  BLX             j_silk_resampler_private_IIR_FIR
B4E9C:  LDRD.W          R0, R1, [R5,#0x11C]
B4EA0:  ADD.W           R2, R9, R6,LSL#1
B4EA4:  ADD.W           R1, R4, R1,LSL#1
B4EA8:  SUB.W           R3, R8, R0
B4EAC:  MOV             R0, R5
B4EAE:  BLX             j_silk_resampler_private_IIR_FIR
B4EB2:  B               loc_B4ED8
B4EB4:  LDR.W           R0, [R5,#0x11C]
B4EB8:  MOV             R1, R10; src
B4EBA:  LSLS            R2, R0, #1; n
B4EBC:  MOV             R0, R4; dest
B4EBE:  BLX             j_memcpy
B4EC2:  LDRD.W          R2, R0, [R5,#0x11C]
B4EC6:  ADD.W           R1, R9, R6,LSL#1; src
B4ECA:  ADD.W           R0, R4, R0,LSL#1; dest
B4ECE:  SUB.W           R2, R8, R2
B4ED2:  LSLS            R2, R2, #1; n
B4ED4:  BLX             j_memcpy
B4ED8:  LDR.W           R0, [R5,#0x124]
B4EDC:  SUB.W           R1, R8, R0
B4EE0:  LSLS            R2, R0, #1; n
B4EE2:  MOV             R0, R10; dest
B4EE4:  ADD.W           R1, R9, R1,LSL#1; src
B4EE8:  BLX             j_memcpy
B4EEC:  MOVS            R0, #0
B4EEE:  POP.W           {R8-R10}
B4EF2:  POP             {R4-R7,PC}
