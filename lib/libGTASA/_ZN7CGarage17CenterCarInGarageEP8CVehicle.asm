; =========================================================
; Game Engine Function: _ZN7CGarage17CenterCarInGarageEP8CVehicle
; Address            : 0x3142F0 - 0x3143FA
; =========================================================

3142F0:  PUSH            {R4-R7,LR}
3142F2:  ADD             R7, SP, #0xC
3142F4:  PUSH.W          {R8,R9,R11}
3142F8:  MOV             R4, R1
3142FA:  MOV             R5, R0
3142FC:  MOV.W           R0, #0xFFFFFFFF; int
314300:  MOVS            R1, #0; bool
314302:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
314306:  MOV             R1, R0; CVehicle *
314308:  MOV             R0, R5; this
31430A:  BLX             j__ZN7CGarage27IsAnyOtherCarTouchingGarageEP8CVehicle; CGarage::IsAnyOtherCarTouchingGarage(CVehicle *)
31430E:  CMP             R0, #0
314310:  BNE             loc_3143F4
314312:  MOV.W           R0, #0xFFFFFFFF; int
314316:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
31431A:  MOV             R1, R0; CPed *
31431C:  MOV             R0, R5; this
31431E:  BLX             j__ZN7CGarage27IsAnyOtherPedTouchingGarageEP4CPed; CGarage::IsAnyOtherPedTouchingGarage(CPed *)
314322:  CMP             R0, #0
314324:  BNE             loc_3143F4
314326:  VLDR            S0, [R5,#0x28]
31432A:  VMOV.F32        S8, #0.5
31432E:  VLDR            S2, [R5,#0x2C]
314332:  VLDR            S4, [R5,#0x30]
314336:  VLDR            S6, [R5,#0x34]
31433A:  VADD.F32        S0, S0, S2
31433E:  LDR             R1, [R4,#0x14]
314340:  VADD.F32        S4, S4, S6
314344:  ADD.W           R0, R1, #0x30 ; '0'
314348:  CMP             R1, #0
31434A:  MOV             R1, R0
31434C:  IT EQ
31434E:  ADDEQ           R1, R4, #4
314350:  VMUL.F32        S2, S0, S8
314354:  LDRD.W          R6, R9, [R1]
314358:  LDR.W           R8, [R1,#8]
31435C:  VMUL.F32        S0, S4, S8
314360:  VMOV            S4, R9
314364:  VMOV            S6, R6
314368:  VSUB.F32        S6, S2, S6
31436C:  VSUB.F32        S4, S0, S4
314370:  VMUL.F32        S10, S6, S6
314374:  VMUL.F32        S8, S4, S4
314378:  VADD.F32        S8, S10, S8
31437C:  VLDR            S10, =0.0
314380:  VADD.F32        S8, S8, S10
314384:  VLDR            S10, =0.4
314388:  VSQRT.F32       S8, S8
31438C:  VCMPE.F32       S8, S10
314390:  VMRS            APSR_nzcv, FPSCR
314394:  BGE             loc_31439E
314396:  VSTR            S2, [R0]
31439A:  LDR             R0, [R4,#0x14]
31439C:  B               loc_3143C0
31439E:  VDIV.F32        S0, S10, S8
3143A2:  VMUL.F32        S2, S6, S0
3143A6:  VLDR            S6, [R0]
3143AA:  VMUL.F32        S0, S4, S0
3143AE:  VADD.F32        S2, S2, S6
3143B2:  VSTR            S2, [R0]
3143B6:  LDR             R0, [R4,#0x14]
3143B8:  VLDR            S2, [R0,#0x34]
3143BC:  VADD.F32        S0, S0, S2
3143C0:  MOVW            R2, #0x999A
3143C4:  VSTR            S0, [R0,#0x34]
3143C8:  MOVT            R2, #0x3E99; float
3143CC:  MOV             R0, R5; this
3143CE:  MOV             R1, R4; CEntity *
3143D0:  BLX             j__ZN7CGarage24IsEntityEntirelyInside3DEP7CEntityf; CGarage::IsEntityEntirelyInside3D(CEntity *,float)
3143D4:  CBNZ            R0, loc_3143F4
3143D6:  LDR             R0, [R4,#0x14]
3143D8:  CBZ             R0, loc_3143E8
3143DA:  STR             R6, [R0,#0x30]
3143DC:  LDR             R0, [R4,#0x14]
3143DE:  STR.W           R9, [R0,#0x34]
3143E2:  LDR             R0, [R4,#0x14]
3143E4:  ADDS            R0, #0x38 ; '8'
3143E6:  B               loc_3143F0
3143E8:  ADD.W           R0, R4, #0xC
3143EC:  STRD.W          R6, R9, [R4,#4]
3143F0:  STR.W           R8, [R0]
3143F4:  POP.W           {R8,R9,R11}
3143F8:  POP             {R4-R7,PC}
