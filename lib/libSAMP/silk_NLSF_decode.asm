; =========================================================
; Game Engine Function: silk_NLSF_decode
; Address            : 0x1961A4 - 0x1962A8
; =========================================================

1961A4:  PUSH            {R4-R7,LR}
1961A6:  ADD             R7, SP, #0xC
1961A8:  PUSH.W          {R8-R11}
1961AC:  SUB             SP, SP, #0x54
1961AE:  MOV             R11, R0
1961B0:  LDR             R0, =(__stack_chk_guard_ptr - 0x1961BC)
1961B2:  MOV             R9, R1
1961B4:  ADD.W           R8, SP, #0x70+var_30
1961B8:  ADD             R0, PC; __stack_chk_guard_ptr
1961BA:  MOV             R4, R2
1961BC:  MOV             R1, R8
1961BE:  LDR             R0, [R0]; __stack_chk_guard
1961C0:  LDR             R0, [R0]
1961C2:  STR             R0, [SP,#0x70+var_20]
1961C4:  ADD             R0, SP, #0x70+var_50
1961C6:  LDRSB.W         R3, [R9]
1961CA:  BLX             j_silk_NLSF_unpack
1961CE:  MOV             LR, R4
1961D0:  LDRSH.W         R2, [LR,#2]
1961D4:  CMP             R2, #0
1961D6:  BLE             loc_19622A
1961D8:  LDRSH.W         R1, [LR,#4]
1961DC:  MOV             R0, SP
1961DE:  SUB.W           R12, R0, #2
1961E2:  MOVS            R6, #0
1961E4:  MOV             R3, R2
1961E6:  ADD.W           R0, R8, R3
1961EA:  SXTH            R6, R6
1961EC:  LDRB.W          R5, [R0,#-1]
1961F0:  LDRSB.W         R0, [R9,R3]
1961F4:  SMULBB.W        R6, R6, R5
1961F8:  SUBS            R5, R3, #1
1961FA:  CMP             R0, #1
1961FC:  MOV.W           R4, R0,LSL#10
196200:  MOV.W           R6, R6,ASR#8
196204:  BLT             loc_19620A
196206:  SUBS            R4, #0x66 ; 'f'
196208:  B               loc_196212
19620A:  CMP             R0, #0
19620C:  IT NE
19620E:  ORRNE.W         R4, R4, #0x66 ; 'f'
196212:  UXTH            R0, R4
196214:  SMLABT.W        R6, R1, R4, R6
196218:  MULS            R0, R1
19621A:  ADD.W           R6, R6, R0,ASR#16
19621E:  ADDS            R0, R5, #1
196220:  STRH.W          R6, [R12,R3,LSL#1]
196224:  CMP             R0, #1
196226:  MOV             R3, R5
196228:  BGT             loc_1961E6
19622A:  CMP             R2, #1
19622C:  BLT             loc_196284
19622E:  LDRSB.W         R0, [R9]
196232:  MOV             R10, SP
196234:  LDRD.W          R3, R5, [LR,#8]
196238:  MOV.W           R9, #0
19623C:  SMULBB.W        R1, R2, R0
196240:  SMLABB.W        R6, R2, R0, R3
196244:  ADD.W           R4, R5, R1,LSL#1
196248:  MOVW            R5, #0x7FFF
19624C:  LDRSH.W         R0, [R10,R9,LSL#1]
196250:  MOV             R8, LR
196252:  LDRSH.W         R1, [R4,R9,LSL#1]
196256:  LSLS            R0, R0, #0xE
196258:  BLX             sub_220A40
19625C:  LDRB.W          R1, [R6,R9]
196260:  MOV             LR, R8
196262:  ADD.W           R0, R0, R1,LSL#7
196266:  MOVS            R1, #0
196268:  CMP             R0, #0
19626A:  IT LE
19626C:  MOVLE           R0, R1
19626E:  CMP             R0, R5
196270:  IT GE
196272:  MOVGE           R0, R5
196274:  STRH.W          R0, [R11,R9,LSL#1]
196278:  ADD.W           R9, R9, #1
19627C:  LDRSH.W         R2, [LR,#2]
196280:  CMP             R9, R2
196282:  BLT             loc_19624C
196284:  LDR.W           R1, [LR,#0x24]
196288:  MOV             R0, R11
19628A:  BLX             j_silk_NLSF_stabilize
19628E:  LDR             R0, =(__stack_chk_guard_ptr - 0x196296)
196290:  LDR             R1, [SP,#0x70+var_20]
196292:  ADD             R0, PC; __stack_chk_guard_ptr
196294:  LDR             R0, [R0]; __stack_chk_guard
196296:  LDR             R0, [R0]
196298:  SUBS            R0, R0, R1
19629A:  ITTT EQ
19629C:  ADDEQ           SP, SP, #0x54 ; 'T'
19629E:  POPEQ.W         {R8-R11}
1962A2:  POPEQ           {R4-R7,PC}
1962A4:  BLX             __stack_chk_fail
