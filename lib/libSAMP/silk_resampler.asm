; =========================================================
; Game Engine Function: silk_resampler
; Address            : 0x19302C - 0x193118
; =========================================================

19302C:  PUSH            {R4-R7,LR}
19302E:  ADD             R7, SP, #0xC
193030:  PUSH.W          {R8-R10}
193034:  MOV             R5, R0
193036:  MOV             R9, R2
193038:  MOV             R4, R1
19303A:  LDR.W           R1, [R5,#0x11C]
19303E:  LDR.W           R2, [R5,#0x124]
193042:  ADD.W           R10, R5, #0xA8
193046:  MOV             R8, R3
193048:  SUBS            R6, R1, R2
19304A:  MOV             R1, R9; src
19304C:  ADD.W           R0, R10, R2,LSL#1; dest
193050:  LSLS            R2, R6, #1; n
193052:  BLX             j_memcpy
193056:  LDR.W           R0, [R5,#0x108]
19305A:  CMP             R0, #3
19305C:  BEQ             loc_19308C
19305E:  CMP             R0, #2
193060:  BEQ             loc_1930B2
193062:  CMP             R0, #1
193064:  BNE             loc_1930D8
193066:  LDR.W           R3, [R5,#0x11C]
19306A:  MOV             R0, R5
19306C:  MOV             R1, R4
19306E:  MOV             R2, R10
193070:  BLX             j_silk_resampler_private_up2_HQ_wrapper
193074:  LDRD.W          R0, R1, [R5,#0x11C]
193078:  ADD.W           R2, R9, R6,LSL#1
19307C:  ADD.W           R1, R4, R1,LSL#1
193080:  SUB.W           R3, R8, R0
193084:  MOV             R0, R5
193086:  BLX             j_silk_resampler_private_up2_HQ_wrapper
19308A:  B               loc_1930FC
19308C:  LDR.W           R3, [R5,#0x11C]
193090:  MOV             R0, R5
193092:  MOV             R1, R4
193094:  MOV             R2, R10
193096:  BLX             j_silk_resampler_private_down_FIR
19309A:  LDRD.W          R0, R1, [R5,#0x11C]
19309E:  ADD.W           R2, R9, R6,LSL#1
1930A2:  ADD.W           R1, R4, R1,LSL#1
1930A6:  SUB.W           R3, R8, R0
1930AA:  MOV             R0, R5
1930AC:  BLX             j_silk_resampler_private_down_FIR
1930B0:  B               loc_1930FC
1930B2:  LDR.W           R3, [R5,#0x11C]
1930B6:  MOV             R0, R5
1930B8:  MOV             R1, R4
1930BA:  MOV             R2, R10
1930BC:  BLX             j_silk_resampler_private_IIR_FIR
1930C0:  LDRD.W          R0, R1, [R5,#0x11C]
1930C4:  ADD.W           R2, R9, R6,LSL#1
1930C8:  ADD.W           R1, R4, R1,LSL#1
1930CC:  SUB.W           R3, R8, R0
1930D0:  MOV             R0, R5
1930D2:  BLX             j_silk_resampler_private_IIR_FIR
1930D6:  B               loc_1930FC
1930D8:  LDR.W           R0, [R5,#0x11C]
1930DC:  MOV             R1, R10; src
1930DE:  LSLS            R2, R0, #1; n
1930E0:  MOV             R0, R4; dest
1930E2:  BLX             j_memcpy
1930E6:  LDRD.W          R2, R0, [R5,#0x11C]
1930EA:  ADD.W           R1, R9, R6,LSL#1; src
1930EE:  ADD.W           R0, R4, R0,LSL#1; dest
1930F2:  SUB.W           R2, R8, R2
1930F6:  LSLS            R2, R2, #1; n
1930F8:  BLX             j_memcpy
1930FC:  LDR.W           R0, [R5,#0x124]
193100:  SUB.W           R1, R8, R0
193104:  LSLS            R2, R0, #1; n
193106:  MOV             R0, R10; dest
193108:  ADD.W           R1, R9, R1,LSL#1; src
19310C:  BLX             j_memcpy
193110:  MOVS            R0, #0
193112:  POP.W           {R8-R10}
193116:  POP             {R4-R7,PC}
