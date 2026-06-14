; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwimC2EPK7CVectorP4CPed
; Address            : 0x53A020 - 0x53A0A0
; =========================================================

53A020:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleSwim::CTaskSimpleSwim(CVector const*, CPed *)'
53A022:  ADD             R7, SP, #0xC
53A024:  PUSH.W          {R11}
53A028:  MOV             R5, R2
53A02A:  MOV             R6, R1
53A02C:  MOV             R4, R0
53A02E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
53A032:  ADR             R1, dword_53A0A0
53A034:  ADD.W           R2, R4, #0x10
53A038:  VLD1.64         {D16-D17}, [R1@128]
53A03C:  MOVS            R1, #0
53A03E:  VMOV.I32        Q9, #0
53A042:  CMP             R6, #0
53A044:  LDR             R0, =(_ZTV15CTaskSimpleSwim_ptr - 0x53A056)
53A046:  STRD.W          R1, R1, [R4,#0x58]
53A04A:  VST1.32         {D16-D17}, [R2]
53A04E:  ADD.W           R2, R4, #0x30 ; '0'
53A052:  ADD             R0, PC; _ZTV15CTaskSimpleSwim_ptr
53A054:  VST1.32         {D18-D19}, [R2]
53A058:  ADD.W           R2, R4, #0x24 ; '$'
53A05C:  LDR             R0, [R0]; `vtable for'CTaskSimpleSwim ...
53A05E:  VST1.32         {D18-D19}, [R2]
53A062:  ADD.W           R0, R0, #8
53A066:  STR             R1, [R4,#8]
53A068:  MOV.W           R1, #0xBF
53A06C:  STR             R1, [R4,#0xC]
53A06E:  MOV             R1, R4
53A070:  STR             R0, [R4]
53A072:  STR.W           R5, [R1,#0x20]!; CEntity **
53A076:  ITTTT NE
53A078:  VLDRNE          D16, [R6]
53A07C:  LDRNE           R0, [R6,#8]
53A07E:  STRNE           R0, [R4,#0x1C]
53A080:  VSTRNE          D16, [R4,#0x14]
53A084:  CMP             R5, #0
53A086:  ITT NE
53A088:  MOVNE           R0, R5; this
53A08A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53A08E:  MOVS            R0, #0
53A090:  STRB.W          R0, [R4,#0x64]
53A094:  STR             R0, [R4,#0x60]
53A096:  STR             R0, [R4,#0x54]
53A098:  MOV             R0, R4
53A09A:  POP.W           {R11}
53A09E:  POP             {R4-R7,PC}
