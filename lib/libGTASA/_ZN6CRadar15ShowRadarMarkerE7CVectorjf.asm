; =========================================================
; Game Engine Function: _ZN6CRadar15ShowRadarMarkerE7CVectorjf
; Address            : 0x441398 - 0x441562
; =========================================================

441398:  PUSH            {R4-R7,LR}
44139A:  ADD             R7, SP, #0xC
44139C:  PUSH.W          {R8,R9,R11}
4413A0:  VPUSH           {D8-D12}; unsigned int
4413A4:  SUB             SP, SP, #0x10; float
4413A6:  VMOV.F32        S0, #0.5
4413AA:  MOV             R4, R3
4413AC:  LDR             R3, =(TheCamera_ptr - 0x4413C2)
4413AE:  VMOV            S24, R0
4413B2:  VLDR            S4, [R7,#arg_0]
4413B6:  VMOV            S20, R1
4413BA:  VLDR            S2, =1.4
4413BE:  ADD             R3, PC; TheCamera_ptr
4413C0:  VMOV            S22, R2
4413C4:  VMUL.F32        S18, S4, S2
4413C8:  LDR             R5, [R3]; TheCamera
4413CA:  VMUL.F32        S16, S4, S0
4413CE:  ADDW            R8, R5, #0x924
4413D2:  ADDW            R9, R5, #0x91C
4413D6:  ADD.W           R6, R5, #0x920
4413DA:  VLDR            S4, [R8]
4413DE:  VLDR            S0, [R9]
4413E2:  VLDR            S2, [R6]
4413E6:  VMUL.F32        S6, S18, S0
4413EA:  STRD.W          R4, R4, [SP,#0x50+var_48]; float
4413EE:  VMUL.F32        S8, S18, S2
4413F2:  VMUL.F32        S10, S18, S4
4413F6:  VMUL.F32        S0, S16, S0
4413FA:  VMUL.F32        S4, S16, S4
4413FE:  VMUL.F32        S2, S16, S2
441402:  VADD.F32        S6, S6, S24
441406:  VADD.F32        S8, S8, S20
44140A:  VADD.F32        S10, S10, S22
44140E:  VADD.F32        S0, S0, S24
441412:  VADD.F32        S4, S4, S22
441416:  VADD.F32        S2, S2, S20
44141A:  VMOV            R0, S6; this
44141E:  VMOV            R1, S8; float
441422:  VMOV            R2, S10; float
441426:  VMOV            R3, S0; float
44142A:  VSTR            S2, [SP,#0x50+var_50]
44142E:  VSTR            S4, [SP,#0x50+var_4C]
441432:  BLX             j__ZN11CTheScripts17ScriptDebugLine3DEffffffjj; CTheScripts::ScriptDebugLine3D(float,float,float,float,float,float,uint,uint)
441436:  VLDR            S0, [R9]
44143A:  VLDR            S2, [R6]
44143E:  VLDR            S4, [R8]
441442:  VMUL.F32        S6, S18, S0
441446:  VMUL.F32        S8, S18, S2
44144A:  STRD.W          R4, R4, [SP,#0x50+var_48]; float
44144E:  VMUL.F32        S10, S18, S4
441452:  VMUL.F32        S0, S16, S0
441456:  VMUL.F32        S2, S16, S2
44145A:  VSUB.F32        S6, S24, S6
44145E:  VSUB.F32        S8, S20, S8
441462:  VSUB.F32        S10, S22, S10
441466:  VSUB.F32        S0, S24, S0
44146A:  VSUB.F32        S2, S20, S2
44146E:  VMOV            R0, S6; this
441472:  VMOV            R1, S8; float
441476:  VMOV            R2, S10; float
44147A:  VMOV            R3, S0; float
44147E:  VMUL.F32        S0, S16, S4
441482:  VSTR            S2, [SP,#0x50+var_50]
441486:  VSUB.F32        S0, S22, S0
44148A:  VSTR            S0, [SP,#0x50+var_4C]
44148E:  BLX             j__ZN11CTheScripts17ScriptDebugLine3DEffffffjj; CTheScripts::ScriptDebugLine3D(float,float,float,float,float,float,uint,uint)
441492:  ADDW            R8, R5, #0x904
441496:  ADDW            R6, R5, #0x8FC
44149A:  ADD.W           R5, R5, #0x900
44149E:  VLDR            S0, [R6]
4414A2:  VLDR            S2, [R5]
4414A6:  VLDR            S4, [R8]
4414AA:  VMUL.F32        S6, S18, S0
4414AE:  VMUL.F32        S8, S18, S2
4414B2:  STRD.W          R4, R4, [SP,#0x50+var_48]; float
4414B6:  VMUL.F32        S10, S16, S4
4414BA:  VMUL.F32        S4, S18, S4
4414BE:  VMUL.F32        S0, S16, S0
4414C2:  VMUL.F32        S2, S16, S2
4414C6:  VADD.F32        S6, S6, S24
4414CA:  VADD.F32        S8, S8, S20
4414CE:  VADD.F32        S10, S10, S22
4414D2:  VADD.F32        S4, S4, S22
4414D6:  VADD.F32        S0, S0, S24
4414DA:  VADD.F32        S2, S2, S20
4414DE:  VMOV            R0, S6; this
4414E2:  VMOV            R1, S8; float
4414E6:  VMOV            R2, S4; float
4414EA:  VMOV            R3, S0; float
4414EE:  VSTR            S2, [SP,#0x50+var_50]
4414F2:  VSTR            S10, [SP,#0x50+var_4C]
4414F6:  BLX             j__ZN11CTheScripts17ScriptDebugLine3DEffffffjj; CTheScripts::ScriptDebugLine3D(float,float,float,float,float,float,uint,uint)
4414FA:  VLDR            S0, [R6]
4414FE:  VLDR            S2, [R5]
441502:  VLDR            S4, [R8]
441506:  VMUL.F32        S6, S18, S0
44150A:  VMUL.F32        S8, S18, S2
44150E:  STRD.W          R4, R4, [SP,#0x50+var_48]; float
441512:  VMUL.F32        S10, S18, S4
441516:  VMUL.F32        S0, S16, S0
44151A:  VMUL.F32        S2, S16, S2
44151E:  VSUB.F32        S6, S24, S6
441522:  VSUB.F32        S8, S20, S8
441526:  VSUB.F32        S10, S22, S10
44152A:  VSUB.F32        S0, S24, S0
44152E:  VSUB.F32        S2, S20, S2
441532:  VMOV            R0, S6; this
441536:  VMOV            R1, S8; float
44153A:  VMOV            R2, S10; float
44153E:  VMOV            R3, S0; float
441542:  VMUL.F32        S0, S16, S4
441546:  VSTR            S2, [SP,#0x50+var_50]
44154A:  VSUB.F32        S0, S22, S0
44154E:  VSTR            S0, [SP,#0x50+var_4C]
441552:  BLX             j__ZN11CTheScripts17ScriptDebugLine3DEffffffjj; CTheScripts::ScriptDebugLine3D(float,float,float,float,float,float,uint,uint)
441556:  ADD             SP, SP, #0x10
441558:  VPOP            {D8-D12}
44155C:  POP.W           {R8,R9,R11}
441560:  POP             {R4-R7,PC}
