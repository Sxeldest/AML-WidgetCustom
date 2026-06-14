; =========================================================
; Game Engine Function: _ZN16CTaskSimpleInAirC2Ebbb
; Address            : 0x52C2E0 - 0x52C342
; =========================================================

52C2E0:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleInAir::CTaskSimpleInAir(bool, bool, bool)'
52C2E2:  ADD             R7, SP, #0xC
52C2E4:  PUSH.W          {R11}
52C2E8:  MOV             R4, R3
52C2EA:  MOV             R5, R2
52C2EC:  MOV             R6, R1
52C2EE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52C2F2:  LDR             R1, =(_ZTV16CTaskSimpleInAir_ptr - 0x52C2FC)
52C2F4:  MOVS            R3, #0
52C2F6:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52C302)
52C2F8:  ADD             R1, PC; _ZTV16CTaskSimpleInAir_ptr
52C2FA:  STR.W           R3, [R0,#0x32]
52C2FE:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52C300:  STR.W           R3, [R0,#0x2E]
52C304:  STRD.W          R3, R3, [R0,#0x28]
52C308:  STR             R3, [R0,#0x38]
52C30A:  STRD.W          R3, R3, [R0,#0x1C]
52C30E:  ORR.W           R3, R6, R5,LSL#1
52C312:  LDRB.W          R6, [R0,#0x24]
52C316:  ORR.W           R3, R3, R4,LSL#2
52C31A:  LDR             R1, [R1]; `vtable for'CTaskSimpleInAir ...
52C31C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
52C31E:  AND.W           R6, R6, #0xF8
52C322:  ORRS            R3, R6
52C324:  STRB.W          R3, [R0,#0x24]
52C328:  ADDS            R1, #8
52C32A:  STR             R1, [R0]
52C32C:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds
52C32E:  MOVS            R2, #1
52C330:  STRB.W          R2, [R0,#0x34]
52C334:  MOV.W           R2, #0x1F4
52C338:  STRD.W          R1, R2, [R0,#0x2C]
52C33C:  POP.W           {R11}
52C340:  POP             {R4-R7,PC}
