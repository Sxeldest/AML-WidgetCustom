; =========================================================
; Game Engine Function: _ZNK26CTaskComplexCarDriveWander8SetUpCarEv
; Address            : 0x4FC060 - 0x4FC0FC
; =========================================================

4FC060:  PUSH            {R4,R5,R7,LR}
4FC062:  ADD             R7, SP, #8
4FC064:  MOV             R4, R0
4FC066:  LDR             R1, =(_ZN8CCarCtrl18bCarIsBeingCreatedE_ptr - 0x4FC070)
4FC068:  LDR             R0, [R4,#0xC]; this
4FC06A:  MOVS            R5, #1
4FC06C:  ADD             R1, PC; _ZN8CCarCtrl18bCarIsBeingCreatedE_ptr
4FC06E:  LDRB.W          R2, [R0,#0x3BD]
4FC072:  STRB            R2, [R4,#0x1D]
4FC074:  LDRB.W          R2, [R0,#0x3BE]
4FC078:  STRB            R2, [R4,#0x1E]
4FC07A:  LDR             R1, [R1]; CCarCtrl::bCarIsBeingCreated ...
4FC07C:  LDRB.W          R2, [R0,#0x3D4]
4FC080:  STRB.W          R5, [R4,#0x20]
4FC084:  STRB            R2, [R4,#0x1F]
4FC086:  LDRB            R1, [R1]; CVehicle *
4FC088:  CBNZ            R1, loc_4FC0D2
4FC08A:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
4FC08E:  LDR             R0, [R4,#0xC]
4FC090:  MOVS            R2, #3
4FC092:  LDRB.W          R1, [R0,#0x3A]
4FC096:  BFI.W           R1, R2, #3, #0x1D
4FC09A:  STRB.W          R1, [R0,#0x3A]
4FC09E:  LDR             R0, [R4,#0xC]
4FC0A0:  STRB.W          R5, [R0,#0x3BE]
4FC0A4:  VLDR            S0, [R4,#0x10]
4FC0A8:  LDR             R0, [R4,#0xC]
4FC0AA:  VCVT.U32.F32    S0, S0
4FC0AE:  VMOV            R1, S0
4FC0B2:  STRB.W          R1, [R0,#0x3D4]
4FC0B6:  LDR             R0, [R4,#0xC]
4FC0B8:  LDRB.W          R1, [R0,#0x3D4]
4FC0BC:  VMOV            S0, R1
4FC0C0:  VCVT.F32.U32    S0, S0
4FC0C4:  VSTR            S0, [R0,#0x3CC]
4FC0C8:  LDR             R0, [R4,#0xC]
4FC0CA:  LDR             R1, [R4,#0x18]
4FC0CC:  STRB.W          R1, [R0,#0x3BD]
4FC0D0:  LDR             R0, [R4,#0xC]
4FC0D2:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FC0E0)
4FC0D4:  LDR.W           R2, [R0,#0x42C]
4FC0D8:  LDR.W           R3, [R0,#0x430]
4FC0DC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FC0DE:  BIC.W           R5, R2, #0x10
4FC0E2:  TST.W           R3, #0x200
4FC0E6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4FC0E8:  IT EQ
4FC0EA:  ORREQ.W         R5, R2, #0x10
4FC0EE:  STR.W           R5, [R0,#0x42C]
4FC0F2:  LDR             R0, [R4,#0xC]
4FC0F4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4FC0F6:  STR.W           R1, [R0,#0x3B0]
4FC0FA:  POP             {R4,R5,R7,PC}
