; =========================================================
; Game Engine Function: _ZN11CProjectileC2Ei
; Address            : 0x457268 - 0x4572D2
; =========================================================

457268:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CProjectile::CProjectile(int)'
45726A:  ADD             R7, SP, #8
45726C:  MOV             R5, R1
45726E:  MOV             R4, R0
457270:  BLX             j__ZN7CObjectC2Ev; CObject::CObject(void)
457274:  LDR.W           R12, =(_ZTV11CProjectile_ptr - 0x45728C)
457278:  MOV.W           R1, #0x3F800000
45727C:  STRD.W          R1, R1, [R4,#0x90]
457280:  MOVW            R1, #0xFF58
457284:  MOVW            R0, #0xB718
457288:  ADD             R12, PC; _ZTV11CProjectile_ptr
45728A:  MOVT            R1, #0x3F7F
45728E:  MOV.W           R2, #0x3F400000
457292:  MOVT            R0, #0x3A51
457296:  LDR             R3, [R4,#0x1C]
457298:  STRD.W          R1, R2, [R4,#0x9C]
45729C:  STR.W           R0, [R4,#0xA4]
4572A0:  ORR.W           R1, R3, #0x80000000
4572A4:  LDR.W           R0, [R12]; `vtable for'CProjectile ...
4572A8:  STR             R1, [R4,#0x1C]
4572AA:  MOVS            R1, #0; bool
4572AC:  ADDS            R0, #8
4572AE:  STR             R0, [R4]
4572B0:  MOV             R0, R4; this
4572B2:  BLX             j__ZN7CObject11SetIsStaticEb; CObject::SetIsStatic(bool)
4572B6:  LDR             R1, [R4,#0x44]
4572B8:  LDR             R0, [R4]
4572BA:  ORR.W           R1, R1, #0x800000
4572BE:  STR             R1, [R4,#0x44]
4572C0:  MOV             R1, R5
4572C2:  LDR             R2, [R0,#0x18]
4572C4:  MOV             R0, R4
4572C6:  BLX             R2
4572C8:  MOVS            R0, #5
4572CA:  STRB.W          R0, [R4,#0x140]
4572CE:  MOV             R0, R4
4572D0:  POP             {R4,R5,R7,PC}
