; =========================================================
; Game Engine Function: _ZN16CPedIntelligenceC2EP4CPed
; Address            : 0x4BFFB8 - 0x4C01A8
; =========================================================

4BFFB8:  PUSH            {R4-R7,LR}; Alternative name is 'CPedIntelligence::CPedIntelligence(CPed *)'
4BFFBA:  ADD             R7, SP, #0xC
4BFFBC:  PUSH.W          {R8}
4BFFC0:  MOV             R4, R0
4BFFC2:  ADDS            R0, R4, #4; this
4BFFC4:  MOV             R5, R1
4BFFC6:  STR             R5, [R4]
4BFFC8:  BLX             j__ZN12CTaskManagerC2EP4CPed; CTaskManager::CTaskManager(CPed *)
4BFFCC:  ADD.W           R0, R4, #0x34 ; '4'; this
4BFFD0:  MOV             R1, R5; CPed *
4BFFD2:  BLX             j__ZN13CEventHandlerC2EP4CPed; CEventHandler::CEventHandler(CPed *)
4BFFD6:  ADD.W           R0, R4, #0x68 ; 'h'; this
4BFFDA:  MOV             R1, R5; CPed *
4BFFDC:  BLX             j__ZN11CEventGroupC2EP4CPed; CEventGroup::CEventGroup(CPed *)
4BFFE0:  LDR             R2, =(_ZTV11CPedScanner_ptr - 0x4BFFEC)
4BFFE2:  VMOV.I32        Q8, #0
4BFFE6:  LDR             R3, =(_ZTV15CVehicleScanner_ptr - 0x4BFFF0)
4BFFE8:  ADD             R2, PC; _ZTV11CPedScanner_ptr
4BFFEA:  LDR             R1, =(_ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr - 0x4BFFF8)
4BFFEC:  ADD             R3, PC; _ZTV15CVehicleScanner_ptr
4BFFEE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4C0002)
4BFFF0:  LDR.W           LR, [R2]; `vtable for'CPedScanner ...
4BFFF4:  ADD             R1, PC; _ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr
4BFFF6:  LDR             R2, [R3]; `vtable for'CVehicleScanner ...
4BFFF8:  ADD.W           R3, R4, #0xD8
4BFFFC:  LDR             R6, [R1]; CPedAttractorManager::ms_fSearchDistance ...
4BFFFE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4C0000:  VST1.32         {D16-D17}, [R3]
4C0004:  ADD.W           R3, R4, #0x128
4C0008:  MOVS            R1, #0
4C000A:  VST1.32         {D16-D17}, [R3]
4C000E:  ADD.W           R3, R4, #0x114
4C0012:  MOVT            R1, #0x41F0
4C0016:  VST1.32         {D16-D17}, [R3]
4C001A:  ADD.W           R3, R4, #0x108
4C001E:  VST1.32         {D16-D17}, [R3]
4C0022:  ADD.W           R3, R4, #0xF8
4C0026:  VST1.32         {D16-D17}, [R3]
4C002A:  ADD.W           R3, R4, #0xE8
4C002E:  VST1.32         {D16-D17}, [R3]
4C0032:  ADD.W           R3, R4, #0x164
4C0036:  VST1.32         {D16-D17}, [R3]
4C003A:  ADD.W           R3, R4, #0x158
4C003E:  VST1.32         {D16-D17}, [R3]
4C0042:  ADD.W           R3, R4, #0x148
4C0046:  VST1.32         {D16-D17}, [R3]
4C004A:  ADD.W           R3, R4, #0x138
4C004E:  VLDR            S0, [R6]
4C0052:  MOVS            R6, #0
4C0054:  LDR.W           R12, [R0]; CTimer::m_snTimeInMilliseconds ...
4C0058:  MOVT            R6, #0x4170
4C005C:  VST1.32         {D16-D17}, [R3]
4C0060:  MOV.W           R3, #0xFFFFFFFF
4C0064:  MOVS            R0, #3
4C0066:  VMUL.F32        S0, S0, S0
4C006A:  STRD.W          R3, R3, [R4,#0xB4]
4C006E:  STRD.W          R6, R6, [R4,#0xBC]
4C0072:  STRD.W          R0, R6, [R4,#0xC4]
4C0076:  MOVS            R0, #0xFF
4C0078:  STR.W           R1, [R4,#0xCC]
4C007C:  MOVS            R6, #0
4C007E:  STRH.W          R0, [R4,#0xD0]
4C0082:  ADD.W           R0, R2, #8
4C0086:  STRB.W          R6, [R4,#0xD2]
4C008A:  ADD.W           R2, R4, #0x1C0
4C008E:  STR.W           R0, [R4,#0xD4]
4C0092:  MOVS            R0, #0x10
4C0094:  STR.W           R0, [R4,#0xDC]
4C0098:  MOVS            R1, #1
4C009A:  STR.W           R0, [R4,#0x12C]
4C009E:  ADD.W           R0, LR, #8
4C00A2:  STRB.W          R6, [R4,#0x174]
4C00A6:  STR.W           R0, [R4,#0x124]
4C00AA:  MOVS            R0, #0
4C00AC:  STRH.W          R6, [R4,#0x180]
4C00B0:  MOVT            R0, #0x41C8
4C00B4:  STRD.W          R6, R6, [R4,#0x178]
4C00B8:  STRB.W          R6, [R4,#0x18C]
4C00BC:  LDR.W           R8, [R12]; CTimer::m_snTimeInMilliseconds
4C00C0:  STRB.W          R1, [R4,#0x180]
4C00C4:  STRD.W          R8, R6, [R4,#0x178]
4C00C8:  STRH.W          R6, [R4,#0x19C]
4C00CC:  STRD.W          R6, R6, [R4,#0x194]
4C00D0:  STRH.W          R6, [R4,#0x1A8]
4C00D4:  STRD.W          R6, R6, [R4,#0x1A0]
4C00D8:  STRB.W          R1, [R4,#0x1AC]
4C00DC:  STRD.W          R6, R6, [R4,#0x1B0]
4C00E0:  STRH.W          R6, [R4,#0x1B8]
4C00E4:  STR.W           R6, [R4,#0x1BC]
4C00E8:  VST1.32         {D16-D17}, [R2]
4C00EC:  ADD.W           R2, R4, #0x1D0
4C00F0:  VST1.32         {D16-D17}, [R2]
4C00F4:  ADD.W           R2, R4, #0x1F8
4C00F8:  VST1.32         {D16-D17}, [R2]
4C00FC:  VSTR            S0, [R4,#0x224]
4C0100:  STRD.W          R0, R0, [R4,#0x228]
4C0104:  VSTR            S0, [R4,#0x230]
4C0108:  STRD.W          R6, R6, [R4,#0x1E0]
4C010C:  STRD.W          R6, R6, [R4,#0x1E8]
4C0110:  STRD.W          R6, R6, [R4,#0x1F0]
4C0114:  STRD.W          R6, R6, [R4,#0x208]
4C0118:  STRD.W          R6, R0, [R4,#0x210]
4C011C:  STRD.W          R0, R0, [R4,#0x218]
4C0120:  STR.W           R0, [R4,#0x220]
4C0124:  STRD.W          R0, R0, [R4,#0x234]
4C0128:  STRH.W          R6, [R4,#0x244]
4C012C:  STRD.W          R6, R6, [R4,#0x23C]
4C0130:  STRH.W          R1, [R4,#0x248]
4C0134:  STRB.W          R6, [R4,#0x24A]
4C0138:  STRH.W          R6, [R4,#0x254]
4C013C:  STRD.W          R6, R6, [R4,#0x24C]
4C0140:  STRH.W          R6, [R4,#0x260]
4C0144:  STRD.W          R6, R6, [R4,#0x258]
4C0148:  BLX             rand
4C014C:  UXTH            R0, R0
4C014E:  VLDR            S2, =0.000015259
4C0152:  VMOV            S0, R0
4C0156:  VCVT.F32.S32    S0, S0
4C015A:  STRB.W          R6, [R4,#0x264]
4C015E:  STR.W           R6, [R4,#0x278]
4C0162:  VMUL.F32        S0, S0, S2
4C0166:  VLDR            S2, =3000.0
4C016A:  VMUL.F32        S0, S0, S2
4C016E:  VCVT.S32.F32    S0, S0
4C0172:  STR.W           R6, [R4,#0x274]
4C0176:  STR.W           R6, [R4,#0x27C]
4C017A:  VMOV            R0, S0
4C017E:  ADD             R0, R8
4C0180:  STR.W           R0, [R4,#0x190]
4C0184:  LDR.W           R0, [R5,#0x59C]
4C0188:  SUBS            R0, #7
4C018A:  CMP             R0, #0xA
4C018C:  ITTT CC
4C018E:  MOVCC           R0, #0
4C0190:  MOVTCC          R0, #0x4220
4C0194:  STRDCC.W        R0, R0, [R4,#0xBC]
4C0198:  STRD.W          R6, R6, [R4,#0x28C]
4C019C:  STR.W           R6, [R4,#0x294]
4C01A0:  MOV             R0, R4
4C01A2:  POP.W           {R8}
4C01A6:  POP             {R4-R7,PC}
