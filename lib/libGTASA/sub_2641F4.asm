; =========================================================
; Game Engine Function: sub_2641F4
; Address            : 0x2641F4 - 0x2642EA
; =========================================================

2641F4:  PUSH            {R4,R6,R7,LR}
2641F6:  ADD             R7, SP, #8
2641F8:  VMOV            S0, R3
2641FC:  MOV             R4, R1
2641FE:  CMP             R2, #2
264200:  BEQ             loc_26425C
264202:  CMP             R2, #1
264204:  BNE             loc_2642AE
264206:  VCMPE.F32       S0, #0.0
26420A:  VMRS            APSR_nzcv, FPSCR
26420E:  BLT             loc_264224
264210:  VLDR            S2, =8000.0
264214:  VCMPE.F32       S0, S2
264218:  VMRS            APSR_nzcv, FPSCR
26421C:  ITT LE
26421E:  VSTRLE          S0, [R0,#0x84]
264222:  POPLE           {R4,R6,R7,PC}
264224:  LDR             R0, =(TrapALError_ptr - 0x26422A)
264226:  ADD             R0, PC; TrapALError_ptr
264228:  LDR             R0, [R0]; TrapALError
26422A:  LDRB            R0, [R0]
26422C:  CMP             R0, #0
26422E:  ITT NE
264230:  MOVNE           R0, #5; sig
264232:  BLXNE           raise
264236:  LDREX.W         R0, [R4,#0x50]
26423A:  CMP             R0, #0
26423C:  BNE             loc_2642E0
26423E:  ADD.W           R0, R4, #0x50 ; 'P'
264242:  MOVW            R1, #0xA003
264246:  DMB.W           ISH
26424A:  STREX.W         R2, R1, [R0]
26424E:  CMP             R2, #0
264250:  BEQ             loc_2642E4
264252:  LDREX.W         R2, [R0]
264256:  CMP             R2, #0
264258:  BEQ             loc_26424A
26425A:  B               loc_2642E0
26425C:  VCMPE.F32       S0, #0.0
264260:  VMRS            APSR_nzcv, FPSCR
264264:  BLT             loc_26427A
264266:  VLDR            S2, =24000.0
26426A:  VCMPE.F32       S0, S2
26426E:  VMRS            APSR_nzcv, FPSCR
264272:  ITT LE
264274:  VSTRLE          S0, [R0,#0x88]
264278:  POPLE           {R4,R6,R7,PC}
26427A:  LDR             R0, =(TrapALError_ptr - 0x264280)
26427C:  ADD             R0, PC; TrapALError_ptr
26427E:  LDR             R0, [R0]; TrapALError
264280:  LDRB            R0, [R0]
264282:  CMP             R0, #0
264284:  ITT NE
264286:  MOVNE           R0, #5; sig
264288:  BLXNE           raise
26428C:  LDREX.W         R0, [R4,#0x50]
264290:  CBNZ            R0, loc_2642E0
264292:  ADD.W           R0, R4, #0x50 ; 'P'
264296:  MOVW            R1, #0xA003
26429A:  DMB.W           ISH
26429E:  STREX.W         R2, R1, [R0]
2642A2:  CBZ             R2, loc_2642E4
2642A4:  LDREX.W         R2, [R0]
2642A8:  CMP             R2, #0
2642AA:  BEQ             loc_26429E
2642AC:  B               loc_2642E0
2642AE:  LDR             R0, =(TrapALError_ptr - 0x2642B4)
2642B0:  ADD             R0, PC; TrapALError_ptr
2642B2:  LDR             R0, [R0]; TrapALError
2642B4:  LDRB            R0, [R0]
2642B6:  CMP             R0, #0
2642B8:  ITT NE
2642BA:  MOVNE           R0, #5; sig
2642BC:  BLXNE           raise
2642C0:  LDREX.W         R0, [R4,#0x50]
2642C4:  CBNZ            R0, loc_2642E0
2642C6:  ADD.W           R0, R4, #0x50 ; 'P'
2642CA:  MOVW            R1, #0xA002
2642CE:  DMB.W           ISH
2642D2:  STREX.W         R2, R1, [R0]
2642D6:  CBZ             R2, loc_2642E4
2642D8:  LDREX.W         R2, [R0]
2642DC:  CMP             R2, #0
2642DE:  BEQ             loc_2642D2
2642E0:  CLREX.W
2642E4:  DMB.W           ISH
2642E8:  POP             {R4,R6,R7,PC}
