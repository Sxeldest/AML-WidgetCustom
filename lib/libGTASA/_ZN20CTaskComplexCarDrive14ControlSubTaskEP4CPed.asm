; =========================================================
; Game Engine Function: _ZN20CTaskComplexCarDrive14ControlSubTaskEP4CPed
; Address            : 0x4FBE98 - 0x4FBF80
; =========================================================

4FBE98:  PUSH            {R4-R7,LR}
4FBE9A:  ADD             R7, SP, #0xC
4FBE9C:  PUSH.W          {R11}
4FBEA0:  MOV             R6, R1
4FBEA2:  MOV             R5, R0
4FBEA4:  LDR.W           R0, [R6,#0x590]
4FBEA8:  LDR             R4, [R5,#8]
4FBEAA:  CMP             R0, #0
4FBEAC:  ITT NE
4FBEAE:  LDRBNE.W        R0, [R6,#0x485]
4FBEB2:  MOVSNE.W        R0, R0,LSL#31
4FBEB6:  BEQ             loc_4FBF78
4FBEB8:  LDR             R0, [R4]
4FBEBA:  LDR             R1, [R0,#0x14]
4FBEBC:  MOV             R0, R4
4FBEBE:  BLX             R1
4FBEC0:  MOVW            R1, #0x396
4FBEC4:  CMP             R0, R1
4FBEC6:  BEQ             loc_4FBEE2
4FBEC8:  MOVW            R1, #0x2C5
4FBECC:  CMP             R0, R1
4FBECE:  BNE             loc_4FBF78
4FBED0:  LDR             R0, [R5]
4FBED2:  MOV             R1, R6
4FBED4:  LDR             R2, [R0,#0x3C]
4FBED6:  MOV             R0, R5
4FBED8:  POP.W           {R11}
4FBEDC:  POP.W           {R4-R7,LR}
4FBEE0:  BX              R2
4FBEE2:  LDR.W           R0, [R6,#0x590]; this
4FBEE6:  CMP             R0, #0
4FBEE8:  ITTT NE
4FBEEA:  ADDWNE          R1, R6, #0x484
4FBEEE:  LDRBNE          R1, [R1,#1]
4FBEF0:  MOVSNE.W        R1, R1,LSL#31
4FBEF4:  BEQ             loc_4FBF78
4FBEF6:  MOV             R6, R5
4FBEF8:  STR.W           R0, [R6,#0xC]!
4FBEFC:  MOV             R1, R6; CEntity **
4FBEFE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBF02:  LDR             R0, [R5]
4FBF04:  LDR             R1, [R0,#0x34]
4FBF06:  MOV             R0, R5
4FBF08:  BLX             R1
4FBF0A:  MOVS            R0, #dword_60; this
4FBF0C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBF10:  MOV             R4, R0
4FBF12:  LDR             R5, [R6]
4FBF14:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FBF18:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4FBF28)
4FBF1A:  VMOV.I32        Q8, #0
4FBF1E:  ADD.W           R1, R4, #0xC
4FBF22:  MOVS            R6, #0
4FBF24:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4FBF26:  CMP             R5, #0
4FBF28:  VST1.32         {D16-D17}, [R1]
4FBF2C:  MOV.W           R1, #2
4FBF30:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDrive ...
4FBF32:  ADD.W           R0, R0, #8
4FBF36:  STR             R0, [R4]
4FBF38:  STRH            R6, [R4,#0x1C]
4FBF3A:  STR.W           R6, [R4,#0x56]
4FBF3E:  STR.W           R6, [R4,#0x52]
4FBF42:  LDRB.W          R0, [R4,#0x5C]
4FBF46:  STRD.W          R6, R6, [R4,#0x4C]
4FBF4A:  BFI.W           R0, R1, #2, #4
4FBF4E:  MOV             R1, R4
4FBF50:  STRB.W          R0, [R4,#0x5C]
4FBF54:  STR.W           R5, [R1,#8]!; CEntity **
4FBF58:  BEQ             loc_4FBF64
4FBF5A:  MOV             R0, R5; this
4FBF5C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBF60:  LDRB.W          R0, [R4,#0x5C]
4FBF64:  MOV.W           R1, #0xFFFFFFFF
4FBF68:  AND.W           R0, R0, #0xFC
4FBF6C:  STR             R1, [R4,#0x20]
4FBF6E:  STRB.W          R0, [R4,#0x5C]
4FBF72:  STRD.W          R6, R6, [R4,#0x3C]
4FBF76:  STR             R6, [R4,#0x44]
4FBF78:  MOV             R0, R4
4FBF7A:  POP.W           {R11}
4FBF7E:  POP             {R4-R7,PC}
