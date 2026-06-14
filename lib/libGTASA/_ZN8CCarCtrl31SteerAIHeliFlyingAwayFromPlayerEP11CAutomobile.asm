; =========================================================
; Game Engine Function: _ZN8CCarCtrl31SteerAIHeliFlyingAwayFromPlayerEP11CAutomobile
; Address            : 0x2F6B7C - 0x2F6BFE
; =========================================================

2F6B7C:  PUSH            {R4,R5,R7,LR}
2F6B7E:  ADD             R7, SP, #8
2F6B80:  VPUSH           {D8-D9}
2F6B84:  SUB             SP, SP, #0x18; bool
2F6B86:  MOV             R4, R0
2F6B88:  ADD             R0, SP, #0x30+var_24; int
2F6B8A:  MOV.W           R1, #0xFFFFFFFF
2F6B8E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2F6B92:  LDR             R0, [R4,#0x14]
2F6B94:  ADDS            R5, R4, #4
2F6B96:  VLDR            S16, [SP,#0x30+var_24]
2F6B9A:  CMP             R0, #0
2F6B9C:  MOV             R1, R5
2F6B9E:  IT NE
2F6BA0:  ADDNE.W         R1, R0, #0x30 ; '0'
2F6BA4:  MOV             R0, SP; int
2F6BA6:  VLDR            S18, [R1]
2F6BAA:  MOV.W           R1, #0xFFFFFFFF
2F6BAE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2F6BB2:  LDR             R0, [R4,#0x14]
2F6BB4:  VSUB.F32        S4, S16, S18
2F6BB8:  VLDR            S0, [SP,#0x30+var_2C]
2F6BBC:  CMP             R0, #0
2F6BBE:  IT NE
2F6BC0:  ADDNE.W         R5, R0, #0x30 ; '0'
2F6BC4:  VLDR            S2, [R5,#4]
2F6BC8:  VSUB.F32        S0, S0, S2
2F6BCC:  VMOV            R0, S4; this
2F6BD0:  VMOV            R1, S0; float
2F6BD4:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F6BD8:  VMOV            S2, R0
2F6BDC:  VLDR            S0, =3.1416
2F6BE0:  MOVS            R2, #0
2F6BE2:  MOV             R0, R4; this
2F6BE4:  VADD.F32        S0, S2, S0
2F6BE8:  MOVT            R2, #0x447A; float
2F6BEC:  MOVS            R3, #0; float
2F6BEE:  VMOV            R1, S0; CHeli *
2F6BF2:  BLX             j__ZN8CCarCtrl27FlyAIHeliInCertainDirectionEP5CHeliffb; CCarCtrl::FlyAIHeliInCertainDirection(CHeli *,float,float,bool)
2F6BF6:  ADD             SP, SP, #0x18
2F6BF8:  VPOP            {D8-D9}
2F6BFC:  POP             {R4,R5,R7,PC}
