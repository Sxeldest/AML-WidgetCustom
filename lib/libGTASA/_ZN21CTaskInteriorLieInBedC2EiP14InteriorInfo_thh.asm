; =========================================================
; Game Engine Function: _ZN21CTaskInteriorLieInBedC2EiP14InteriorInfo_thh
; Address            : 0x52A254 - 0x52A2A2
; =========================================================

52A254:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskInteriorLieInBed::CTaskInteriorLieInBed(int, InteriorInfo_t *, unsigned char, unsigned char)'
52A256:  ADD             R7, SP, #0xC
52A258:  PUSH.W          {R11}
52A25C:  MOV             R4, R3
52A25E:  MOV             R5, R2
52A260:  MOV             R6, R1
52A262:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52A266:  LDR             R1, =(_ZTV21CTaskInteriorLieInBed_ptr - 0x52A272)
52A268:  MOVS            R3, #0
52A26A:  LDR             R2, [R7,#arg_0]
52A26C:  CMP             R4, #0
52A26E:  ADD             R1, PC; _ZTV21CTaskInteriorLieInBed_ptr
52A270:  STRH            R3, [R0,#0x24]
52A272:  STRD.W          R6, R5, [R0,#8]
52A276:  STRB            R2, [R0,#0x11]
52A278:  MOV.W           R2, #0xFFFFFFFF
52A27C:  LDR             R1, [R1]; `vtable for'CTaskInteriorLieInBed ...
52A27E:  STR             R3, [R0,#0x14]
52A280:  STR             R2, [R0,#0x18]
52A282:  MOVW            R2, #0x151
52A286:  IT NE
52A288:  MOVNE.W         R2, #0x154
52A28C:  ADDS            R1, #8
52A28E:  STR             R2, [R0,#0x2C]
52A290:  STRH            R3, [R0,#0x28]
52A292:  STRB.W          R3, [R0,#0x2A]
52A296:  STRD.W          R3, R3, [R0,#0x1C]
52A29A:  STR             R1, [R0]
52A29C:  POP.W           {R11}
52A2A0:  POP             {R4-R7,PC}
