; =========================================================
; Game Engine Function: _ZN11CAutomobile8TeleportE7CVectorh
; Address            : 0x558FCE - 0x55907C
; =========================================================

558FCE:  PUSH            {R4-R7,LR}
558FD0:  ADD             R7, SP, #0xC
558FD2:  PUSH.W          {R8}
558FD6:  VPUSH           {D8-D10}
558FDA:  MOV             R8, R3
558FDC:  MOV             R6, R2
558FDE:  MOV             R5, R1
558FE0:  MOV             R4, R0
558FE2:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
558FE6:  LDR             R1, [R4,#0x14]
558FE8:  LDR             R0, [R7,#arg_0]
558FEA:  CBZ             R1, loc_558FF8
558FEC:  STR             R5, [R1,#0x30]
558FEE:  LDR             R1, [R4,#0x14]
558FF0:  STR             R6, [R1,#0x34]
558FF2:  LDR             R1, [R4,#0x14]
558FF4:  ADDS            R1, #0x38 ; '8'
558FF6:  B               loc_559000
558FF8:  ADD.W           R1, R4, #0xC
558FFC:  STRD.W          R5, R6, [R4,#4]
559000:  CMP             R0, #0
559002:  STR.W           R8, [R1]
559006:  BEQ             loc_55904E
559008:  LDR             R0, [R4,#0x14]; this
55900A:  CBZ             R0, loc_55904A
55900C:  MOVS            R1, #0; x
55900E:  MOVS            R2, #0; float
559010:  MOVS            R3, #0; float
559012:  VLDR            S16, [R0,#0x30]
559016:  VLDR            S18, [R0,#0x34]
55901A:  VLDR            S20, [R0,#0x38]
55901E:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
559022:  LDR             R0, [R4,#0x14]
559024:  VLDR            S0, [R0,#0x30]
559028:  VLDR            S2, [R0,#0x34]
55902C:  VLDR            S4, [R0,#0x38]
559030:  VADD.F32        S0, S16, S0
559034:  VADD.F32        S2, S18, S2
559038:  VADD.F32        S4, S20, S4
55903C:  VSTR            S0, [R0,#0x30]
559040:  VSTR            S2, [R0,#0x34]
559044:  VSTR            S4, [R0,#0x38]
559048:  B               loc_55904E
55904A:  MOVS            R0, #0
55904C:  STR             R0, [R4,#0x10]
55904E:  MOVS            R0, #0
559050:  VMOV.I32        Q8, #0
559054:  STRD.W          R0, R0, [R4,#0x58]
559058:  ADD.W           R1, R4, #0x48 ; 'H'
55905C:  LDR             R0, [R4]
55905E:  VST1.32         {D16-D17}, [R1]
559062:  LDR.W           R1, [R0,#0x110]
559066:  MOV             R0, R4
559068:  BLX             R1
55906A:  MOV             R0, R4; this
55906C:  VPOP            {D8-D10}
559070:  POP.W           {R8}
559074:  POP.W           {R4-R7,LR}
559078:  B.W             sub_19B3B8
