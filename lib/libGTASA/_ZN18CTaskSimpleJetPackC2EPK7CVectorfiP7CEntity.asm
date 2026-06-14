; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPackC2EPK7CVectorfiP7CEntity
; Address            : 0x530B5C - 0x530BE8
; =========================================================

530B5C:  PUSH            {R4-R7,LR}
530B5E:  ADD             R7, SP, #0xC
530B60:  PUSH.W          {R8}
530B64:  MOV             R6, R3
530B66:  MOV             R5, R2
530B68:  MOV             R8, R1
530B6A:  MOV             R4, R0
530B6C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
530B70:  MOVS            R2, #0
530B72:  VMOV.I32        Q8, #0
530B76:  ADD.W           R3, R4, #0x50 ; 'P'
530B7A:  STRB            R2, [R4,#0xC]
530B7C:  STR             R2, [R4,#8]
530B7E:  STM             R3!, {R2,R5,R6}
530B80:  ADD.W           R3, R4, #0x40 ; '@'
530B84:  LDR             R1, =(_ZTV18CTaskSimpleJetPack_ptr - 0x530B92)
530B86:  VST1.32         {D16-D17}, [R3]
530B8A:  ADD.W           R3, R4, #0x30 ; '0'
530B8E:  ADD             R1, PC; _ZTV18CTaskSimpleJetPack_ptr
530B90:  VST1.32         {D16-D17}, [R3]
530B94:  ADD.W           R3, R4, #0x20 ; ' '
530B98:  LDR             R1, [R1]; `vtable for'CTaskSimpleJetPack ...
530B9A:  VST1.32         {D16-D17}, [R3]
530B9E:  ADD.W           R3, R4, #0x10
530BA2:  ADDS            R1, #8
530BA4:  LDR             R0, [R7,#arg_0]; this
530BA6:  STR             R2, [R4,#0x5C]
530BA8:  VST1.32         {D16-D17}, [R3]
530BAC:  CMP             R0, #0
530BAE:  STRH.W          R2, [R4,#0xD]
530BB2:  STR             R1, [R4]
530BB4:  MOV             R1, R4
530BB6:  STR.W           R0, [R1,#0x60]!; CEntity **
530BBA:  IT NE
530BBC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
530BC0:  CMP.W           R8, #0
530BC4:  ITTTT NE
530BC6:  ADDNE.W         R0, R4, #0x48 ; 'H'
530BCA:  VLDRNE          D16, [R8]
530BCE:  LDRNE.W         R1, [R8,#8]
530BD2:  STRNE           R1, [R0,#8]
530BD4:  IT NE
530BD6:  VSTRNE          D16, [R0]
530BDA:  MOVS            R0, #0
530BDC:  STRD.W          R0, R0, [R4,#0x64]
530BE0:  MOV             R0, R4
530BE2:  POP.W           {R8}
530BE6:  POP             {R4-R7,PC}
