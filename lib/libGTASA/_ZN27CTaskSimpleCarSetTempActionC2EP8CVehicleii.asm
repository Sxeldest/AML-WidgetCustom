; =========================================================
; Game Engine Function: _ZN27CTaskSimpleCarSetTempActionC2EP8CVehicleii
; Address            : 0x4FCEB4 - 0x4FCF40
; =========================================================

4FCEB4:  PUSH            {R4-R7,LR}
4FCEB6:  ADD             R7, SP, #0xC
4FCEB8:  PUSH.W          {R8,R9,R11}
4FCEBC:  MOV             R8, R3
4FCEBE:  MOV             R9, R2
4FCEC0:  MOV             R5, R1
4FCEC2:  MOV             R4, R0
4FCEC4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FCEC8:  LDR             R1, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4FCED8)
4FCECA:  VMOV.I32        Q8, #0
4FCECE:  ADD.W           R0, R4, #0xC
4FCED2:  MOVS            R6, #0
4FCED4:  ADD             R1, PC; _ZTV19CTaskSimpleCarDrive_ptr
4FCED6:  STRH            R6, [R4,#0x1C]
4FCED8:  STR.W           R6, [R4,#0x56]
4FCEDC:  MOVS            R2, #2
4FCEDE:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDrive ...
4FCEE0:  CMP             R5, #0
4FCEE2:  STR.W           R6, [R4,#0x52]
4FCEE6:  STRD.W          R6, R6, [R4,#0x4C]
4FCEEA:  ADD.W           R1, R1, #8
4FCEEE:  VST1.32         {D16-D17}, [R0]
4FCEF2:  LDRB.W          R0, [R4,#0x5C]
4FCEF6:  BFI.W           R0, R2, #2, #4
4FCEFA:  STRB.W          R0, [R4,#0x5C]
4FCEFE:  STR             R1, [R4]
4FCF00:  MOV             R1, R4
4FCF02:  STR.W           R5, [R1,#8]!; CEntity **
4FCF06:  BEQ             loc_4FCF12
4FCF08:  MOV             R0, R5; this
4FCF0A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FCF0E:  LDRB.W          R0, [R4,#0x5C]
4FCF12:  LDR             R1, =(_ZTV27CTaskSimpleCarSetTempAction_ptr - 0x4FCF22)
4FCF14:  MOV.W           R2, #0xFFFFFFFF
4FCF18:  AND.W           R0, R0, #0xFC
4FCF1C:  STR             R2, [R4,#0x20]
4FCF1E:  ADD             R1, PC; _ZTV27CTaskSimpleCarSetTempAction_ptr
4FCF20:  STRB.W          R0, [R4,#0x5C]
4FCF24:  STRD.W          R6, R6, [R4,#0x3C]
4FCF28:  LDR             R0, [R1]; `vtable for'CTaskSimpleCarSetTempAction ...
4FCF2A:  STR             R6, [R4,#0x44]
4FCF2C:  ADDS            R0, #8
4FCF2E:  STR.W           R9, [R4,#0x60]
4FCF32:  STR.W           R8, [R4,#0x64]
4FCF36:  STR             R0, [R4]
4FCF38:  MOV             R0, R4
4FCF3A:  POP.W           {R8,R9,R11}
4FCF3E:  POP             {R4-R7,PC}
