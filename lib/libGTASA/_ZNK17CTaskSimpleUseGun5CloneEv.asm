; =========================================================
; Game Engine Function: _ZNK17CTaskSimpleUseGun5CloneEv
; Address            : 0x4E94BC - 0x4E9550
; =========================================================

4E94BC:  PUSH            {R4-R7,LR}
4E94BE:  ADD             R7, SP, #0xC
4E94C0:  PUSH.W          {R8-R11}
4E94C4:  SUB             SP, SP, #0xC
4E94C6:  MOV             R6, R0
4E94C8:  MOVS            R0, #off_3C; this
4E94CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E94CE:  MOV             R4, R0
4E94D0:  LDRH            R0, [R6,#0x34]
4E94D2:  ADD.W           R11, R6, #0x1C
4E94D6:  STR             R0, [SP,#0x28+var_20]
4E94D8:  LDM.W           R11, {R5,R10,R11}
4E94DC:  LDRB.W          R0, [R6,#0x3B]
4E94E0:  LDR.W           R8, [R6,#0x28]
4E94E4:  STR             R0, [SP,#0x28+var_24]
4E94E6:  MOV             R0, R4; this
4E94E8:  LDRB.W          R9, [R6,#0x10]
4E94EC:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E94F0:  MOV.W           R0, #0x100
4E94F4:  MOVS            R6, #0
4E94F6:  STRH            R0, [R4,#8]
4E94F8:  MOVS            R0, #0xFF
4E94FA:  STRB            R6, [R4,#0xE]
4E94FC:  MOV             R1, R4
4E94FE:  STRD.W          R6, R6, [R4,#0x14]
4E9502:  CMP             R5, #0
4E9504:  STR.W           R6, [R4,#0xA]
4E9508:  STRB.W          R9, [R4,#0xF]
4E950C:  STRB            R0, [R4,#0x10]
4E950E:  LDR             R0, =(_ZTV17CTaskSimpleUseGun_ptr - 0x4E9514)
4E9510:  ADD             R0, PC; _ZTV17CTaskSimpleUseGun_ptr
4E9512:  LDR             R0, [R0]; `vtable for'CTaskSimpleUseGun ...
4E9514:  ADD.W           R0, R0, #8
4E9518:  STR             R0, [R4]
4E951A:  STR.W           R5, [R1,#0x1C]!; CEntity **
4E951E:  ITT NE
4E9520:  MOVNE           R0, R5; this
4E9522:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4E9526:  STRD.W          R10, R11, [R4,#0x20]
4E952A:  STRD.W          R8, R6, [R4,#0x28]
4E952E:  STR             R6, [R4,#0x30]
4E9530:  LDR             R0, [SP,#0x28+var_20]
4E9532:  STRH            R0, [R4,#0x34]
4E9534:  MOV.W           R0, #0xFF0000
4E9538:  STR.W           R0, [R4,#0x36]
4E953C:  STRB.W          R6, [R4,#0x3A]
4E9540:  LDR             R0, [SP,#0x28+var_24]
4E9542:  STRB.W          R0, [R4,#0x3B]
4E9546:  MOV             R0, R4
4E9548:  ADD             SP, SP, #0xC
4E954A:  POP.W           {R8-R11}
4E954E:  POP             {R4-R7,PC}
