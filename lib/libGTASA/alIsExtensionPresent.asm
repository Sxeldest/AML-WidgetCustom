; =========================================================
; Game Engine Function: alIsExtensionPresent
; Address            : 0x2541F4 - 0x2542A8
; =========================================================

2541F4:  PUSH            {R4-R7,LR}
2541F6:  ADD             R7, SP, #0xC
2541F8:  PUSH.W          {R8,R9,R11}
2541FC:  MOV             R5, R0
2541FE:  BLX             j_GetContextRef
254202:  MOV             R8, R0
254204:  CMP.W           R8, #0
254208:  BEQ             loc_254256
25420A:  CBZ             R5, loc_25425A
25420C:  MOV             R0, R5; char *
25420E:  BLX             strlen
254212:  LDR.W           R4, [R8,#0x8C]
254216:  MOV             R9, R0
254218:  CBZ             R4, loc_254294
25421A:  LDRB            R0, [R4]
25421C:  CBZ             R0, loc_254294
25421E:  MOV             R0, R4; char *
254220:  MOV             R1, R5; char *
254222:  MOV             R2, R9; size_t
254224:  BLX             strncasecmp
254228:  CBNZ            R0, loc_254236
25422A:  LDRB.W          R0, [R4,R9]; int
25422E:  CBZ             R0, loc_2542A4
254230:  BLX             isspace
254234:  CBNZ            R0, loc_2542A4
254236:  MOV             R0, R4; s
254238:  MOVS            R1, #0x20 ; ' '; c
25423A:  BLX             strchr
25423E:  MOV             R4, R0
254240:  CBZ             R4, loc_254294
254242:  LDRB.W          R6, [R4,#1]!
254246:  MOV             R0, R6; int
254248:  BLX             isspace
25424C:  CMP             R0, #0
25424E:  BNE             loc_254242
254250:  CMP             R6, #0
254252:  BNE             loc_25421E
254254:  B               loc_254294
254256:  MOVS            R4, #0
254258:  B               loc_25429C
25425A:  LDR             R0, =(TrapALError_ptr - 0x254260)
25425C:  ADD             R0, PC; TrapALError_ptr
25425E:  LDR             R0, [R0]; TrapALError
254260:  LDRB            R0, [R0]
254262:  CMP             R0, #0
254264:  ITT NE
254266:  MOVNE           R0, #5; sig
254268:  BLXNE           raise
25426C:  LDREX.W         R0, [R8,#0x50]
254270:  CBNZ            R0, loc_25428C
254272:  ADD.W           R0, R8, #0x50 ; 'P'
254276:  MOVW            R1, #0xA003
25427A:  DMB.W           ISH
25427E:  STREX.W         R2, R1, [R0]
254282:  CBZ             R2, loc_254290
254284:  LDREX.W         R2, [R0]
254288:  CMP             R2, #0
25428A:  BEQ             loc_25427E
25428C:  CLREX.W
254290:  DMB.W           ISH
254294:  MOVS            R4, #0
254296:  MOV             R0, R8
254298:  BLX             j_ALCcontext_DecRef
25429C:  MOV             R0, R4
25429E:  POP.W           {R8,R9,R11}
2542A2:  POP             {R4-R7,PC}
2542A4:  MOVS            R4, #1
2542A6:  B               loc_254296
