; =========================================================
; Game Engine Function: _ZN7CWeapon12StaticUpdateEv
; Address            : 0x5E22F4 - 0x5E2346
; =========================================================

5E22F4:  LDR             R0, =(_ZN7CWeapon18m_nTakePhotoFramesE_ptr - 0x5E22FC)
5E22F6:  LDR             R1, =(_ZN7CWeapon13ms_bTakePhotoE_ptr - 0x5E22FE)
5E22F8:  ADD             R0, PC; _ZN7CWeapon18m_nTakePhotoFramesE_ptr
5E22FA:  ADD             R1, PC; _ZN7CWeapon13ms_bTakePhotoE_ptr
5E22FC:  LDR             R0, [R0]; CWeapon::m_nTakePhotoFrames ...
5E22FE:  LDR             R1, [R1]; CWeapon::ms_bTakePhoto ...
5E2300:  LDR             R0, [R0]; CWeapon::m_nTakePhotoFrames
5E2302:  LDRB            R1, [R1]; CWeapon::ms_bTakePhoto
5E2304:  CBNZ            R1, loc_5E230C
5E2306:  CMP             R0, #1
5E2308:  BGE             loc_5E230C
5E230A:  BX              LR
5E230C:  SUBS            R0, #1
5E230E:  VLDR            S0, =0.0
5E2312:  VMOV            S2, R0
5E2316:  LDR             R0, =(_ZN7CWeapon18m_nTakePhotoFramesE_ptr - 0x5E2320)
5E2318:  VCVT.F32.S32    S2, S2
5E231C:  ADD             R0, PC; _ZN7CWeapon18m_nTakePhotoFramesE_ptr
5E231E:  LDR             R0, [R0]; CWeapon::m_nTakePhotoFrames ...
5E2320:  VMAX.F32        D0, D1, D0
5E2324:  VCVT.S32.F32    S2, S0
5E2328:  VCVT.S32.F32    S0, S0
5E232C:  VSTR            S2, [R0]
5E2330:  VMOV            R0, S0
5E2334:  CMP             R0, #0
5E2336:  IT NE
5E2338:  BXNE            LR
5E233A:  LDR             R0, =(_ZN7CWeapon13ms_bTakePhotoE_ptr - 0x5E2342)
5E233C:  MOVS            R1, #0
5E233E:  ADD             R0, PC; _ZN7CWeapon13ms_bTakePhotoE_ptr
5E2340:  LDR             R0, [R0]; CWeapon::ms_bTakePhoto ...
5E2342:  STRB            R1, [R0]; CWeapon::ms_bTakePhoto
5E2344:  BX              LR
