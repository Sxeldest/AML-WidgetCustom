; =========================================================
; Game Engine Function: _ZN18CTaskComplexFacial17CreateNextSubTaskEP4CPed
; Address            : 0x540EEC - 0x540FCC
; =========================================================

540EEC:  PUSH            {R4-R7,LR}
540EEE:  ADD             R7, SP, #0xC
540EF0:  PUSH.W          {R8}
540EF4:  MOV             R5, R1
540EF6:  MOV             R4, R0
540EF8:  MOV             R0, R5; this
540EFA:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
540EFE:  CBNZ            R0, loc_540F30
540F00:  LDR             R0, [R4,#8]
540F02:  MOVS            R2, #2
540F04:  MOVS            R3, #0
540F06:  MOV.W           R8, #0
540F0A:  LDR             R1, [R0]
540F0C:  LDR             R6, [R1,#0x1C]
540F0E:  MOV             R1, R5
540F10:  BLX             R6
540F12:  CMP             R0, #1
540F14:  BNE             loc_540F30
540F16:  MOVS            R0, #off_18; this
540F18:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540F1C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
540F20:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x540F2A)
540F22:  STRH.W          R8, [R0,#0x10]
540F26:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
540F28:  STRD.W          R8, R8, [R0,#8]
540F2C:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
540F2E:  B               loc_540FBC
540F30:  LDR             R5, [R4,#0x18]
540F32:  ADDS            R0, R5, #1
540F34:  BEQ             loc_540F5E
540F36:  MOV.W           R0, #0xFFFFFFFF
540F3A:  STR             R0, [R4,#0x18]
540F3C:  MOVS            R0, #dword_1C; this
540F3E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540F42:  LDR             R4, [R4,#0x1C]
540F44:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
540F48:  LDR             R1, =(_ZTV17CTaskSimpleFacial_ptr - 0x540F52)
540F4A:  MOVS            R2, #0
540F4C:  STRH            R2, [R0,#0x10]
540F4E:  ADD             R1, PC; _ZTV17CTaskSimpleFacial_ptr
540F50:  LDR             R1, [R1]; `vtable for'CTaskSimpleFacial ...
540F52:  ADDS            R1, #8
540F54:  STR             R1, [R0]
540F56:  STR             R4, [R0,#0x18]
540F58:  STRD.W          R2, R2, [R0,#8]
540F5C:  B               loc_540FC4
540F5E:  LDR             R0, [R4,#8]
540F60:  LDR             R1, [R0]
540F62:  LDR             R1, [R1,#0x14]
540F64:  BLX             R1
540F66:  MOVW            R1, #0x12F; unsigned int
540F6A:  CMP             R0, R1
540F6C:  BNE             loc_540F7E
540F6E:  MOVS            R0, #off_18; this
540F70:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540F74:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
540F78:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x540F7E)
540F7A:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
540F7C:  B               loc_540FB2
540F7E:  LDRB            R0, [R4,#0xC]
540F80:  CBZ             R0, loc_540FA4
540F82:  MOVS            R0, #dword_1C; this
540F84:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540F88:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
540F8C:  LDR             R1, =(_ZTV17CTaskSimpleFacial_ptr - 0x540F9A)
540F8E:  MOVS            R2, #0
540F90:  MOVW            R3, #0x1388
540F94:  STRH            R2, [R0,#0x10]
540F96:  ADD             R1, PC; _ZTV17CTaskSimpleFacial_ptr
540F98:  STR             R3, [R0,#0x18]
540F9A:  STRD.W          R2, R2, [R0,#8]
540F9E:  MOVS            R5, #8
540FA0:  LDR             R1, [R1]; `vtable for'CTaskSimpleFacial ...
540FA2:  B               loc_540FC0
540FA4:  MOVS            R0, #off_18; this
540FA6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540FAA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
540FAE:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x540FB4)
540FB0:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
540FB2:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
540FB4:  MOVS            R2, #0
540FB6:  STRH            R2, [R0,#0x10]
540FB8:  STR             R2, [R0,#8]
540FBA:  STR             R2, [R0,#0xC]
540FBC:  MOVW            R5, #0x1388
540FC0:  ADDS            R1, #8
540FC2:  STR             R1, [R0]
540FC4:  STR             R5, [R0,#0x14]
540FC6:  POP.W           {R8}
540FCA:  POP             {R4-R7,PC}
