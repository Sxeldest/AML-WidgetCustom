; =========================================================
; Game Engine Function: _ZN21CAnimBlendAssociationC2EP7RpClumpP19CAnimBlendHierarchy
; Address            : 0x389AF0 - 0x389B34
; =========================================================

389AF0:  PUSH            {R4,R6,R7,LR}
389AF2:  ADD             R7, SP, #8
389AF4:  LDR.W           R12, =(_ZTV21CAnimBlendAssociation_ptr - 0x389B04)
389AF8:  ADR             R3, dword_389B40
389AFA:  MOV             R4, R0
389AFC:  VLD1.64         {D16-D17}, [R3@128]
389B00:  ADD             R12, PC; _ZTV21CAnimBlendAssociation_ptr
389B02:  MOVW            R3, #0xFFFF
389B06:  MOVS            R0, #0
389B08:  STRH            R3, [R4,#0xE]
389B0A:  STR             R0, [R4,#0x10]
389B0C:  STR             R0, [R4,#0x28]
389B0E:  STRH            R3, [R4,#0x2C]
389B10:  ADD.W           R3, R4, #0x18
389B14:  LDR.W           R12, [R12]; `vtable for'CAnimBlendAssociation ...
389B18:  STRH            R0, [R4,#0x2E]
389B1A:  STR             R0, [R4,#0x30]
389B1C:  STR             R0, [R4,#4]
389B1E:  VST1.32         {D16-D17}, [R3]
389B22:  STR             R0, [R4,#8]
389B24:  ADD.W           R0, R12, #8
389B28:  STR             R0, [R4]
389B2A:  MOV             R0, R4
389B2C:  BLX             j__ZN21CAnimBlendAssociation4InitEP7RpClumpP19CAnimBlendHierarchy; CAnimBlendAssociation::Init(RpClump *,CAnimBlendHierarchy *)
389B30:  MOV             R0, R4
389B32:  POP             {R4,R6,R7,PC}
