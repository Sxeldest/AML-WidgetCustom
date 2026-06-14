; =========================================================
; Game Engine Function: _ZNK26CTaskComplexLeaveCarAndDie5CloneEv
; Address            : 0x4FD150 - 0x4FD1CA
; =========================================================

4FD150:  PUSH            {R4-R7,LR}
4FD152:  ADD             R7, SP, #0xC
4FD154:  PUSH.W          {R8}
4FD158:  MOV             R6, R0
4FD15A:  MOVS            R0, #dword_34; this
4FD15C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FD160:  LDRD.W          R5, R8, [R6,#0xC]
4FD164:  MOV             R4, R0
4FD166:  LDR             R6, [R6,#0x14]
4FD168:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FD16C:  LDR             R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4FD17C)
4FD16E:  MOV.W           R1, #0x100
4FD172:  STRD.W          R8, R6, [R4,#0x10]
4FD176:  MOVS            R2, #0xF
4FD178:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4FD17A:  STRH            R1, [R4,#0x18]
4FD17C:  MOVS            R1, #0
4FD17E:  MOV.W           R3, #0x40800000
4FD182:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4FD184:  MOV.W           R6, #0x3F800000
4FD188:  ADD.W           R12, R4, #0x24 ; '$'
4FD18C:  STRB            R1, [R4,#0x1A]
4FD18E:  STR             R1, [R4,#0x1C]
4FD190:  ADDS            R0, #8
4FD192:  STRB.W          R1, [R4,#0x20]
4FD196:  CMP             R5, #0
4FD198:  STRB.W          R1, [R4,#0x21]
4FD19C:  STM.W           R12, {R2,R3,R6}
4FD1A0:  STRB.W          R1, [R4,#0x30]
4FD1A4:  MOV             R1, R4
4FD1A6:  STR             R0, [R4]
4FD1A8:  STR.W           R5, [R1,#0xC]!; CEntity **
4FD1AC:  ITT NE
4FD1AE:  MOVNE           R0, R5; this
4FD1B0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FD1B4:  LDR             R0, =(_ZTV26CTaskComplexLeaveCarAndDie_ptr - 0x4FD1BE)
4FD1B6:  MOVS            R1, #1
4FD1B8:  STRB            R1, [R4,#0x1A]
4FD1BA:  ADD             R0, PC; _ZTV26CTaskComplexLeaveCarAndDie_ptr
4FD1BC:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCarAndDie ...
4FD1BE:  ADDS            R0, #8
4FD1C0:  STR             R0, [R4]
4FD1C2:  MOV             R0, R4
4FD1C4:  POP.W           {R8}
4FD1C8:  POP             {R4-R7,PC}
