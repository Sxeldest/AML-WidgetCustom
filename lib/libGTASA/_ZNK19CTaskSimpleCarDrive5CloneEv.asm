; =========================================================
; Game Engine Function: _ZNK19CTaskSimpleCarDrive5CloneEv
; Address            : 0x4FEB24 - 0x4FEBB8
; =========================================================

4FEB24:  PUSH            {R4-R7,LR}
4FEB26:  ADD             R7, SP, #0xC
4FEB28:  PUSH.W          {R8}
4FEB2C:  MOV             R8, R0
4FEB2E:  MOVS            R0, #dword_60; this
4FEB30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FEB34:  MOV             R5, R0
4FEB36:  LDR.W           R6, [R8,#8]
4FEB3A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FEB3E:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4FEB4C)
4FEB40:  VMOV.I32        Q8, #0
4FEB44:  MOVS            R4, #0
4FEB46:  CMP             R6, #0
4FEB48:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4FEB4A:  LDR             R1, [R0]; `vtable for'CTaskSimpleCarDrive ...
4FEB4C:  ADD.W           R0, R5, #0xC
4FEB50:  VST1.32         {D16-D17}, [R0]
4FEB54:  ADD.W           R1, R1, #8
4FEB58:  STRH            R4, [R5,#0x1C]
4FEB5A:  STR.W           R4, [R5,#0x56]
4FEB5E:  STR.W           R4, [R5,#0x52]
4FEB62:  STRD.W          R4, R4, [R5,#0x4C]
4FEB66:  LDRB.W          R0, [R5,#0x5C]
4FEB6A:  STR             R1, [R5]
4FEB6C:  MOV.W           R1, #2
4FEB70:  BFI.W           R0, R1, #2, #4
4FEB74:  MOV             R1, R5
4FEB76:  STRB.W          R0, [R5,#0x5C]
4FEB7A:  STR.W           R6, [R1,#8]!; CEntity **
4FEB7E:  BEQ             loc_4FEB8A
4FEB80:  MOV             R0, R6; this
4FEB82:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FEB86:  LDRB.W          R0, [R5,#0x5C]
4FEB8A:  MOV.W           R1, #0xFFFFFFFF
4FEB8E:  STR             R1, [R5,#0x20]
4FEB90:  AND.W           R1, R0, #0xFC
4FEB94:  STRB.W          R1, [R5,#0x5C]
4FEB98:  AND.W           R0, R0, #0xF8
4FEB9C:  STRD.W          R4, R4, [R5,#0x3C]
4FEBA0:  STR             R4, [R5,#0x44]
4FEBA2:  LDRB.W          R1, [R8,#0x5C]
4FEBA6:  AND.W           R1, R1, #4
4FEBAA:  ORRS            R0, R1
4FEBAC:  STRB.W          R0, [R5,#0x5C]
4FEBB0:  MOV             R0, R5
4FEBB2:  POP.W           {R8}
4FEBB6:  POP             {R4-R7,PC}
