; =========================================================
; Game Engine Function: sub_E3088
; Address            : 0xE3088 - 0xE3150
; =========================================================

E3088:  PUSH            {R4-R7,LR}
E308A:  ADD             R7, SP, #0xC
E308C:  PUSH.W          {R8-R10}
E3090:  VPUSH           {D8-D11}
E3094:  SUB             SP, SP, #8
E3096:  MOV             R5, R1
E3098:  LDR             R1, =(aAxl - 0xE30A2); "AXL" ...
E309A:  MOV             R8, R2
E309C:  LDR             R2, =(aPlayS - 0xE30A6); "Play: %s" ...
E309E:  ADD             R1, PC; "AXL"
E30A0:  MOV             R9, R3
E30A2:  ADD             R2, PC; "Play: %s"
E30A4:  MOV             R6, R0
E30A6:  MOVS            R0, #4; prio
E30A8:  MOV             R3, R5
E30AA:  BLX             __android_log_print
E30AE:  LDRB            R4, [R6]
E30B0:  CMP             R4, #0
E30B2:  BEQ             loc_E313C
E30B4:  MOV             R0, R6
E30B6:  MOVS            R1, #1
E30B8:  LDR.W           R10, [R7,#arg_8]
E30BC:  VMOV            S22, R9
E30C0:  VLDR            S16, [R7,#arg_4]
E30C4:  VMOV            S20, R8
E30C8:  VLDR            S18, [R7,#arg_0]
E30CC:  BL              sub_E317C
E30D0:  LDR             R6, =(dword_23DAD8 - 0xE30D6)
E30D2:  ADD             R6, PC; dword_23DAD8
E30D4:  LDR             R0, [R6]
E30D6:  CBZ             R0, loc_E30E0
E30D8:  BL              sub_164BE4
E30DC:  MOVS            R0, #0
E30DE:  STR             R0, [R6]
E30E0:  LDR             R6, =(unk_23DAE0 - 0xE30EA)
E30E2:  MOVW            R1, #0x101; n
E30E6:  ADD             R6, PC; unk_23DAE0
E30E8:  MOV             R0, R6; int
E30EA:  BLX             sub_22178C
E30EE:  MOV             R0, R6; dest
E30F0:  MOV             R1, R5; src
E30F2:  MOV.W           R2, #0x100; n
E30F6:  BLX             strncpy
E30FA:  LDR             R0, =(unk_23DBE8 - 0xE3104)
E30FC:  LDR             R1, =(unk_23DBE4 - 0xE3108)
E30FE:  LDR             R3, =(unk_23DBEC - 0xE310C)
E3100:  ADD             R0, PC; unk_23DBE8
E3102:  LDR             R5, =(unk_23DBF0 - 0xE3110)
E3104:  ADD             R1, PC; unk_23DBE4
E3106:  LDR             R6, =(byte_23DBF4 - 0xE3112)
E3108:  ADD             R3, PC; unk_23DBEC
E310A:  LDR             R2, =(byte_23DBF5 - 0xE3114)
E310C:  ADD             R5, PC; unk_23DBF0
E310E:  ADD             R6, PC; byte_23DBF4
E3110:  ADD             R2, PC; byte_23DBF5
E3112:  MOV             LR, R2
E3114:  LDR             R2, =(sub_E2FA4+1 - 0xE3124)
E3116:  VSTR            S22, [R0]
E311A:  MOVS            R0, #0
E311C:  STRB.W          R0, [LR]
E3120:  ADD             R2, PC; sub_E2FA4 ; start_routine
E3122:  ADD             R0, SP, #0x40+newthread; newthread
E3124:  VSTR            S20, [R1]
E3128:  VSTR            S18, [R3]
E312C:  MOVS            R1, #0; attr
E312E:  MOVS            R3, #0; arg
E3130:  VSTR            S16, [R5]
E3134:  STRB.W          R10, [R6]
E3138:  BLX             pthread_create
E313C:  CMP             R4, #0
E313E:  IT NE
E3140:  MOVNE           R4, #1
E3142:  MOV             R0, R4
E3144:  ADD             SP, SP, #8
E3146:  VPOP            {D8-D11}
E314A:  POP.W           {R8-R10}
E314E:  POP             {R4-R7,PC}
