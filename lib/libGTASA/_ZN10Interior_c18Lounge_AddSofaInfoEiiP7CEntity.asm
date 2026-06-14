; =========================================================
; Game Engine Function: _ZN10Interior_c18Lounge_AddSofaInfoEiiP7CEntity
; Address            : 0x44BCE0 - 0x44BE18
; =========================================================

44BCE0:  PUSH            {R4-R7,LR}
44BCE2:  ADD             R7, SP, #0xC
44BCE4:  PUSH.W          {R8}
44BCE8:  VPUSH           {D8}
44BCEC:  SUB             SP, SP, #8
44BCEE:  MOV             R5, R3
44BCF0:  MOV             R4, R0
44BCF2:  CMP             R1, #3; switch 4 cases
44BCF4:  BHI.W           def_44BCFE; jumptable 0044BCFE default case
44BCF8:  ADDS            R0, R1, #2
44BCFA:  AND.W           R6, R0, #3
44BCFE:  TBB.W           [PC,R1]; switch jump
44BD02:  DCB 2; jump table for switch statement
44BD03:  DCB 0x24
44BD04:  DCB 0x3F
44BD05:  DCB 0x5E
44BD06:  VMOV            S2, R2; jumptable 0044BCFE case 0
44BD0A:  MOVS            R1, #1; int
44BD0C:  VMOV.F32        S0, #0.5
44BD10:  VCVT.F32.S32    S2, S2
44BD14:  LDR             R0, [R4,#0x14]
44BD16:  LDRB            R0, [R0,#3]
44BD18:  SUBS            R0, #2
44BD1A:  VMOV            S4, R0
44BD1E:  MOV             R0, R4; this
44BD20:  VADD.F32        S16, S2, S0
44BD24:  VCVT.F32.S32    S4, S4
44BD28:  STRD.W          R6, R5, [SP,#0x20+var_20]; int
44BD2C:  VMOV            R2, S16; float
44BD30:  VMOV            R8, S4
44BD34:  MOV             R3, R8; float
44BD36:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BD3A:  VMOV.F32        S0, #1.0
44BD3E:  STRD.W          R6, R5, [SP,#0x20+var_20]
44BD42:  MOV             R0, R4
44BD44:  MOVS            R1, #1
44BD46:  MOV             R3, R8
44BD48:  B               loc_44BDB4
44BD4A:  VMOV            S2, R2; jumptable 0044BCFE case 1
44BD4E:  MOV             R0, R4; this
44BD50:  VMOV.F32        S0, #0.5
44BD54:  MOVS            R1, #1; int
44BD56:  VCVT.F32.S32    S2, S2
44BD5A:  MOV.W           R2, #0x3F800000; float
44BD5E:  STRD.W          R6, R5, [SP,#0x20+var_20]; int
44BD62:  VADD.F32        S16, S2, S0
44BD66:  VMOV            R3, S16; float
44BD6A:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BD6E:  VMOV.F32        S0, #1.0
44BD72:  STRD.W          R6, R5, [SP,#0x20+var_20]
44BD76:  MOV             R0, R4
44BD78:  MOVS            R1, #1
44BD7A:  MOV.W           R2, #0x3F800000
44BD7E:  B               loc_44BE00
44BD80:  VMOV            S2, R2; jumptable 0044BCFE case 2
44BD84:  MOV             R0, R4; this
44BD86:  VMOV.F32        S0, #0.5
44BD8A:  MOVS            R1, #1; int
44BD8C:  VCVT.F32.S32    S2, S2
44BD90:  MOV.W           R3, #0x3F800000; float
44BD94:  STRD.W          R6, R5, [SP,#0x20+var_20]; int
44BD98:  VADD.F32        S16, S2, S0
44BD9C:  VMOV            R2, S16; float
44BDA0:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BDA4:  VMOV.F32        S0, #1.0
44BDA8:  STRD.W          R6, R5, [SP,#0x20+var_20]
44BDAC:  MOV             R0, R4
44BDAE:  MOVS            R1, #1
44BDB0:  MOV.W           R3, #0x3F800000
44BDB4:  VADD.F32        S0, S16, S0
44BDB8:  VMOV            R2, S0
44BDBC:  B               loc_44BE08
44BDBE:  VMOV            S2, R2; jumptable 0044BCFE case 3
44BDC2:  MOVS            R1, #1; int
44BDC4:  VMOV.F32        S0, #0.5
44BDC8:  VCVT.F32.S32    S2, S2
44BDCC:  LDR             R0, [R4,#0x14]
44BDCE:  LDRB            R0, [R0,#2]
44BDD0:  SUBS            R0, #2
44BDD2:  VMOV            S4, R0
44BDD6:  MOV             R0, R4; this
44BDD8:  VADD.F32        S16, S2, S0
44BDDC:  VCVT.F32.S32    S4, S4
44BDE0:  STRD.W          R6, R5, [SP,#0x20+var_20]; int
44BDE4:  VMOV            R3, S16; float
44BDE8:  VMOV            R8, S4
44BDEC:  MOV             R2, R8; float
44BDEE:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BDF2:  VMOV.F32        S0, #1.0
44BDF6:  MOV             R0, R4; this
44BDF8:  MOVS            R1, #1; int
44BDFA:  MOV             R2, R8; float
44BDFC:  STRD.W          R6, R5, [SP,#0x20+var_20]; int
44BE00:  VADD.F32        S0, S16, S0
44BE04:  VMOV            R3, S0; float
44BE08:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44BE0C:  ADD             SP, SP, #8; jumptable 0044BCFE default case
44BE0E:  VPOP            {D8}
44BE12:  POP.W           {R8}
44BE16:  POP             {R4-R7,PC}
