; =========================================================
; Game Engine Function: _ZN15CProjectileInfo10InitialiseEv
; Address            : 0x5D91B4 - 0x5D921C
; =========================================================

5D91B4:  LDR             R0, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5D91C4)
5D91B6:  VMOV.I32        Q8, #0
5D91BA:  MOV.W           R12, #0x10
5D91BE:  MOVS            R3, #0
5D91C0:  ADD             R0, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5D91C2:  LDR             R0, [R0]; CProjectileInfo::ms_apProjectile ...
5D91C4:  ADD.W           R1, R0, #0x70 ; 'p'
5D91C8:  VST1.32         {D16-D17}, [R1]
5D91CC:  ADD.W           R1, R0, #0x60 ; '`'
5D91D0:  VST1.32         {D16-D17}, [R1]
5D91D4:  ADD.W           R1, R0, #0x50 ; 'P'
5D91D8:  VST1.32         {D16-D17}, [R1]
5D91DC:  ADD.W           R1, R0, #0x40 ; '@'
5D91E0:  VST1.32         {D16-D17}, [R1]
5D91E4:  ADD.W           R1, R0, #0x30 ; '0'
5D91E8:  VST1.32         {D16-D17}, [R1]
5D91EC:  ADD.W           R1, R0, #0x20 ; ' '
5D91F0:  VST1.32         {D16-D17}, [R1]
5D91F4:  LDR             R1, =(gaProjectileInfo_ptr - 0x5D91FE)
5D91F6:  VST1.32         {D16-D17}, [R0]!
5D91FA:  ADD             R1, PC; gaProjectileInfo_ptr
5D91FC:  VST1.32         {D16-D17}, [R0]
5D9200:  MOVS            R0, #0
5D9202:  LDR             R1, [R1]; gaProjectileInfo
5D9204:  STR.W           R12, [R1,R3]
5D9208:  ADDS            R2, R1, R3
5D920A:  ADDS            R3, #0x24 ; '$'
5D920C:  CMP.W           R3, #0x480
5D9210:  STR             R0, [R2,#4]
5D9212:  STR             R0, [R2,#0xC]
5D9214:  STRB            R0, [R2,#0x10]
5D9216:  STR             R0, [R2,#0x20]
5D9218:  BNE             loc_5D9204
5D921A:  BX              LR
