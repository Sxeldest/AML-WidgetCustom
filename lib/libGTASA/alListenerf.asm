; =========================================================
; Game Engine Function: alListenerf
; Address            : 0x25516C - 0x25529A
; =========================================================

25516C:  PUSH            {R4-R7,LR}
25516E:  ADD             R7, SP, #0xC
255170:  PUSH.W          {R11}
255174:  MOV             R6, R1
255176:  MOV             R5, R0
255178:  BLX             j_GetContextRef
25517C:  MOV             R4, R0
25517E:  CBZ             R4, loc_2551B8
255180:  MOVS            R0, #:lower16:(elf_hash_chain+0xFE9C)
255182:  VMOV            S0, R6
255186:  MOVT            R0, #:upper16:(elf_hash_chain+0xFE9C)
25518A:  CMP             R5, R0
25518C:  BEQ             loc_2551BE
25518E:  MOVW            R0, #0x100A
255192:  CMP             R5, R0
255194:  BNE             loc_2551E8
255196:  VCMPE.F32       S0, #0.0
25519A:  VMRS            APSR_nzcv, FPSCR
25519E:  BLT             loc_25521E
2551A0:  VABS.F32        S2, S0
2551A4:  VLDR            S4, =+Inf
2551A8:  VCMP.F32        S2, S4
2551AC:  VMRS            APSR_nzcv, FPSCR
2551B0:  BEQ             loc_25521E
2551B2:  LDR             R0, [R4,#4]
2551B4:  ADDS            R0, #0x30 ; '0'
2551B6:  B               loc_2551DE
2551B8:  POP.W           {R11}
2551BC:  POP             {R4-R7,PC}
2551BE:  VCMPE.F32       S0, #0.0
2551C2:  VMRS            APSR_nzcv, FPSCR
2551C6:  BLT             loc_255252
2551C8:  VABS.F32        S2, S0
2551CC:  VLDR            S4, =+Inf
2551D0:  VCMP.F32        S2, S4
2551D4:  VMRS            APSR_nzcv, FPSCR
2551D8:  BEQ             loc_255252
2551DA:  LDR             R0, [R4,#4]
2551DC:  ADDS            R0, #0x34 ; '4'
2551DE:  VSTR            S0, [R0]
2551E2:  MOVS            R0, #1
2551E4:  STR             R0, [R4,#0x54]
2551E6:  B               loc_25528C
2551E8:  LDR             R0, =(TrapALError_ptr - 0x2551EE)
2551EA:  ADD             R0, PC; TrapALError_ptr
2551EC:  LDR             R0, [R0]; TrapALError
2551EE:  LDRB            R0, [R0]
2551F0:  CMP             R0, #0
2551F2:  ITT NE
2551F4:  MOVNE           R0, #5; sig
2551F6:  BLXNE           raise
2551FA:  LDREX.W         R0, [R4,#0x50]
2551FE:  CMP             R0, #0
255200:  BNE             loc_255284
255202:  ADD.W           R0, R4, #0x50 ; 'P'
255206:  MOVW            R1, #0xA002
25520A:  DMB.W           ISH
25520E:  STREX.W         R2, R1, [R0]
255212:  CBZ             R2, loc_255288
255214:  LDREX.W         R2, [R0]
255218:  CMP             R2, #0
25521A:  BEQ             loc_25520E
25521C:  B               loc_255284
25521E:  LDR             R0, =(TrapALError_ptr - 0x255224)
255220:  ADD             R0, PC; TrapALError_ptr
255222:  LDR             R0, [R0]; TrapALError
255224:  LDRB            R0, [R0]
255226:  CMP             R0, #0
255228:  ITT NE
25522A:  MOVNE           R0, #5; sig
25522C:  BLXNE           raise
255230:  LDREX.W         R0, [R4,#0x50]
255234:  CBNZ            R0, loc_255284
255236:  ADD.W           R0, R4, #0x50 ; 'P'
25523A:  MOVW            R1, #0xA003
25523E:  DMB.W           ISH
255242:  STREX.W         R2, R1, [R0]
255246:  CBZ             R2, loc_255288
255248:  LDREX.W         R2, [R0]
25524C:  CMP             R2, #0
25524E:  BEQ             loc_255242
255250:  B               loc_255284
255252:  LDR             R0, =(TrapALError_ptr - 0x255258)
255254:  ADD             R0, PC; TrapALError_ptr
255256:  LDR             R0, [R0]; TrapALError
255258:  LDRB            R0, [R0]
25525A:  CMP             R0, #0
25525C:  ITT NE
25525E:  MOVNE           R0, #5; sig
255260:  BLXNE           raise
255264:  LDREX.W         R0, [R4,#0x50]
255268:  CBNZ            R0, loc_255284
25526A:  ADD.W           R0, R4, #0x50 ; 'P'
25526E:  MOVW            R1, #0xA003
255272:  DMB.W           ISH
255276:  STREX.W         R2, R1, [R0]
25527A:  CBZ             R2, loc_255288
25527C:  LDREX.W         R2, [R0]
255280:  CMP             R2, #0
255282:  BEQ             loc_255276
255284:  CLREX.W
255288:  DMB.W           ISH
25528C:  MOV             R0, R4
25528E:  POP.W           {R11}
255292:  POP.W           {R4-R7,LR}
255296:  B.W             ALCcontext_DecRef
