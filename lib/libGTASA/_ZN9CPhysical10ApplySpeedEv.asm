; =========================================================
; Game Engine Function: _ZN9CPhysical10ApplySpeedEv
; Address            : 0x3FDA44 - 0x3FE1D4
; =========================================================

3FDA44:  PUSH            {R4,R5,R7,LR}
3FDA46:  ADD             R7, SP, #8
3FDA48:  VPUSH           {D8-D15}
3FDA4C:  SUB             SP, SP, #0x30
3FDA4E:  MOV             R4, R0
3FDA50:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FDA5A)
3FDA54:  LDR             R5, [R4,#0x44]
3FDA56:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FDA58:  TST.W           R5, #0x80
3FDA5C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FDA5E:  VLDR            S16, [R0]
3FDA62:  BNE             loc_3FDAA6
3FDA64:  LSLS            R0, R5, #0x1A
3FDA66:  BPL.W           loc_3FE152
3FDA6A:  LDRB.W          R0, [R4,#0x3A]
3FDA6E:  AND.W           R0, R0, #7
3FDA72:  CMP             R0, #4
3FDA74:  BNE.W           loc_3FE152
3FDA78:  VLDR            S24, =-1000.0
3FDA7C:  VLDR            S18, [R4,#0x15C]
3FDA80:  VCMPE.F32       S18, S24
3FDA84:  VMRS            APSR_nzcv, FPSCR
3FDA88:  BLE.W           loc_3FE152
3FDA8C:  LDR             R0, [R4,#0x14]
3FDA8E:  CMP             R0, #0
3FDA90:  BEQ.W           loc_3FDD4C
3FDA94:  LDRD.W          R2, R1, [R0,#0x10]; x
3FDA98:  EOR.W           R0, R2, #0x80000000; y
3FDA9C:  BLX             atan2f
3FDAA0:  VMOV            S20, R0
3FDAA4:  B               loc_3FDD50
3FDAA6:  LDR             R0, [R4,#0x14]
3FDAA8:  LSLS            R1, R5, #0x1E
3FDAAA:  BMI             loc_3FDB2A
3FDAAC:  VLDR            S0, [R4,#0x48]
3FDAB0:  LDR.W           R1, =(_ZN6CWorld15SnookerTableMaxE_ptr - 0x3FDAC0)
3FDAB4:  VMUL.F32        S4, S16, S0
3FDAB8:  VLDR            S2, [R0,#0x30]
3FDABC:  ADD             R1, PC; _ZN6CWorld15SnookerTableMaxE_ptr
3FDABE:  LDR             R1, [R1]; CWorld::SnookerTableMax ...
3FDAC0:  VLDR            S6, [R1]
3FDAC4:  VADD.F32        S4, S2, S4
3FDAC8:  VCMPE.F32       S4, S6
3FDACC:  VMRS            APSR_nzcv, FPSCR
3FDAD0:  ITT GT
3FDAD2:  VCMPEGT.F32     S0, #0.0
3FDAD6:  VMRSGT          APSR_nzcv, FPSCR
3FDADA:  BLE             loc_3FDB6A
3FDADC:  VSUB.F32        S4, S6, S2
3FDAE0:  VDIV.F32        S18, S4, S0
3FDAE4:  VLDR            S4, [R4,#0x4C]
3FDAE8:  LDR.W           R1, =(_ZN6CWorld15SnookerTableMaxE_ptr - 0x3FDB00)
3FDAEC:  VCMPE.F32       S4, #0.0
3FDAF0:  VLDR            S12, [R0,#0x34]
3FDAF4:  VMRS            APSR_nzcv, FPSCR
3FDAF8:  VMUL.F32        S8, S4, S16
3FDAFC:  ADD             R1, PC; _ZN6CWorld15SnookerTableMaxE_ptr
3FDAFE:  LDR             R1, [R1]; CWorld::SnookerTableMax ...
3FDB00:  VADD.F32        S14, S12, S8
3FDB04:  VLDR            S8, [R1,#4]
3FDB08:  ITT GT
3FDB0A:  VCMPEGT.F32     S14, S8
3FDB0E:  VMRSGT          APSR_nzcv, FPSCR
3FDB12:  BLE             loc_3FDB94
3FDB14:  LDR.W           R1, =(_ZN6CWorld15SnookerTableMinE_ptr - 0x3FDB20)
3FDB18:  VSUB.F32        S10, S8, S12
3FDB1C:  ADD             R1, PC; _ZN6CWorld15SnookerTableMinE_ptr
3FDB1E:  LDR             R1, [R1]; CWorld::SnookerTableMin ...
3FDB20:  VDIV.F32        S26, S10, S4
3FDB24:  VLDR            S10, [R1,#4]
3FDB28:  B               loc_3FDBC0
3FDB2A:  VLDR            S0, [R4,#0x50]
3FDB2E:  LDR.W           R1, =(_ZN6CWorld15SnookerTableMinE_ptr - 0x3FDB3E)
3FDB32:  VMUL.F32        S0, S16, S0
3FDB36:  VLDR            S2, [R0,#0x38]
3FDB3A:  ADD             R1, PC; _ZN6CWorld15SnookerTableMinE_ptr
3FDB3C:  LDR             R1, [R1]; CWorld::SnookerTableMin ...
3FDB3E:  VADD.F32        S2, S2, S0
3FDB42:  VLDR            S0, [R1,#8]
3FDB46:  VCMPE.F32       S2, S0
3FDB4A:  VMRS            APSR_nzcv, FPSCR
3FDB4E:  BGE.W           loc_3FE152
3FDB52:  VSTR            S0, [R0,#0x38]
3FDB56:  MOVS            R0, #0
3FDB58:  VMOV.I32        Q8, #0
3FDB5C:  STRD.W          R0, R0, [R4,#0x58]
3FDB60:  ADD.W           R0, R4, #0x48 ; 'H'
3FDB64:  VST1.32         {D16-D17}, [R0]
3FDB68:  B               loc_3FE152
3FDB6A:  VCMPE.F32       S0, #0.0
3FDB6E:  VLDR            S18, =1000.0
3FDB72:  VMRS            APSR_nzcv, FPSCR
3FDB76:  BGE             loc_3FDAE4
3FDB78:  LDR.W           R1, =(_ZN6CWorld15SnookerTableMinE_ptr - 0x3FDB80)
3FDB7C:  ADD             R1, PC; _ZN6CWorld15SnookerTableMinE_ptr
3FDB7E:  LDR             R1, [R1]; CWorld::SnookerTableMin ...
3FDB80:  VLDR            S8, [R1]
3FDB84:  VCMPE.F32       S4, S8
3FDB88:  VMRS            APSR_nzcv, FPSCR
3FDB8C:  BGE             loc_3FDAE4
3FDB8E:  VSUB.F32        S4, S8, S2
3FDB92:  B               loc_3FDAE0
3FDB94:  VCMPE.F32       S4, #0.0
3FDB98:  LDR.W           R1, =(_ZN6CWorld15SnookerTableMinE_ptr - 0x3FDBA4)
3FDB9C:  VMRS            APSR_nzcv, FPSCR
3FDBA0:  ADD             R1, PC; _ZN6CWorld15SnookerTableMinE_ptr
3FDBA2:  VLDR            S26, =1000.0
3FDBA6:  LDR             R1, [R1]; CWorld::SnookerTableMin ...
3FDBA8:  VLDR            S10, [R1,#4]
3FDBAC:  ITT LT
3FDBAE:  VCMPELT.F32     S14, S10
3FDBB2:  VMRSLT          APSR_nzcv, FPSCR
3FDBB6:  BGE             loc_3FDBC0
3FDBB8:  VSUB.F32        S12, S10, S12
3FDBBC:  VDIV.F32        S26, S12, S4
3FDBC0:  LDR.W           R1, =(_ZN6CWorld15SnookerTableMinE_ptr - 0x3FDBCC)
3FDBC4:  VSUB.F32        S28, S8, S10
3FDBC8:  ADD             R1, PC; _ZN6CWorld15SnookerTableMinE_ptr
3FDBCA:  LDR             R1, [R1]; CWorld::SnookerTableMin ...
3FDBCC:  VLDR            S12, [R1]
3FDBD0:  VSUB.F32        S30, S6, S12
3FDBD4:  VLDR            S6, =1000.0
3FDBD8:  VCMPE.F32       S18, S6
3FDBDC:  VMRS            APSR_nzcv, FPSCR
3FDBE0:  ITT LT
3FDBE2:  VCMPELT.F32     S18, S26
3FDBE6:  VMRSLT          APSR_nzcv, FPSCR
3FDBEA:  BGE             loc_3FDC28
3FDBEC:  VCMPE.F32       S0, #0.0
3FDBF0:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FDC04)
3FDBF4:  VMRS            APSR_nzcv, FPSCR
3FDBF8:  VMOV.F32        S4, #-1.0
3FDBFC:  VMOV.F32        S24, #1.0
3FDC00:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FDC02:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3FDC04:  IT GT
3FDC06:  VMOVGT.F32      S24, S4
3FDC0A:  VLDR            S4, =0.00001
3FDC0E:  VMAX.F32        D2, D9, D2
3FDC12:  VSTR            S4, [R1]
3FDC16:  MOVW            R1, #0x2020
3FDC1A:  TST             R5, R1
3FDC1C:  BEQ             loc_3FDC72
3FDC1E:  MOVS            R0, #0
3FDC20:  STRD.W          R0, R0, [R4,#0x48]
3FDC24:  STR             R0, [R4,#0x50]
3FDC26:  B               loc_3FDCAA
3FDC28:  VCMPE.F32       S26, S6
3FDC2C:  VMRS            APSR_nzcv, FPSCR
3FDC30:  BGE.W           loc_3FE152
3FDC34:  VCMPE.F32       S4, #0.0
3FDC38:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FDC4C)
3FDC3C:  VMRS            APSR_nzcv, FPSCR
3FDC40:  VMOV.F32        S6, #-1.0
3FDC44:  VMOV.F32        S22, #1.0
3FDC48:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FDC4A:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3FDC4C:  IT GT
3FDC4E:  VMOVGT.F32      S22, S6
3FDC52:  VLDR            S6, =0.00001
3FDC56:  VMAX.F32        D3, D13, D3
3FDC5A:  VSTR            S6, [R1]
3FDC5E:  MOVW            R1, #0x2020
3FDC62:  TST             R5, R1
3FDC64:  BEQ.W           loc_3FDF1A
3FDC68:  MOVS            R0, #0
3FDC6A:  STRD.W          R0, R0, [R4,#0x48]
3FDC6E:  STR             R0, [R4,#0x50]
3FDC70:  B               loc_3FDF52
3FDC72:  VMUL.F32        S6, S4, S0
3FDC76:  VADD.F32        S2, S6, S2
3FDC7A:  VSTR            S2, [R0,#0x30]
3FDC7E:  VLDR            S2, [R4,#0x4C]
3FDC82:  LDR             R0, [R4,#0x14]
3FDC84:  VMUL.F32        S2, S4, S2
3FDC88:  VLDR            S6, [R0,#0x34]
3FDC8C:  VADD.F32        S2, S2, S6
3FDC90:  VSTR            S2, [R0,#0x34]
3FDC94:  VLDR            S2, [R4,#0x50]
3FDC98:  LDR             R0, [R4,#0x14]
3FDC9A:  VMUL.F32        S2, S4, S2
3FDC9E:  VLDR            S4, [R0,#0x38]
3FDCA2:  VADD.F32        S2, S2, S4
3FDCA6:  VSTR            S2, [R0,#0x38]
3FDCAA:  MOV             R0, R4; this
3FDCAC:  VABS.F32        S20, S0
3FDCB0:  BLX             j__ZN9CPhysical14ApplyTurnSpeedEv; CPhysical::ApplyTurnSpeed(void)
3FDCB4:  LDR.W           R0, =(_ZN6CWorld15SnookerTableMaxE_ptr - 0x3FDCC0)
3FDCB8:  VLDR            S2, =-0.06
3FDCBC:  ADD             R0, PC; _ZN6CWorld15SnookerTableMaxE_ptr
3FDCBE:  LDR             R0, [R0]; CWorld::SnookerTableMax ...
3FDCC0:  VLDR            S4, [R0,#4]
3FDCC4:  LDR             R0, [R4,#0x14]
3FDCC6:  VADD.F32        S6, S4, S2
3FDCCA:  VLDR            S0, [R0,#0x34]
3FDCCE:  VCMPE.F32       S0, S6
3FDCD2:  VMRS            APSR_nzcv, FPSCR
3FDCD6:  BGT             loc_3FDCF6
3FDCD8:  LDR.W           R1, =(_ZN6CWorld15SnookerTableMinE_ptr - 0x3FDCE4)
3FDCDC:  VLDR            S6, =0.06
3FDCE0:  ADD             R1, PC; _ZN6CWorld15SnookerTableMinE_ptr
3FDCE2:  LDR             R1, [R1]; CWorld::SnookerTableMin ...
3FDCE4:  VLDR            S8, [R1,#4]
3FDCE8:  VADD.F32        S10, S8, S6
3FDCEC:  VCMPE.F32       S0, S10
3FDCF0:  VMRS            APSR_nzcv, FPSCR
3FDCF4:  BGE             loc_3FDD28
3FDCF6:  VLDR            S0, [R4,#0x48]
3FDCFA:  VLDR            S2, =0.03
3FDCFE:  VMUL.F32        S0, S16, S0
3FDD02:  LDR             R1, [R4,#0x44]
3FDD04:  ORR.W           R1, R1, #2
3FDD08:  STR             R1, [R4,#0x44]
3FDD0A:  VCMPE.F32       S0, S2
3FDD0E:  VMRS            APSR_nzcv, FPSCR
3FDD12:  BGT             loc_3FDD22
3FDD14:  VLDR            S2, =-0.03
3FDD18:  VCMPE.F32       S0, S2
3FDD1C:  VMRS            APSR_nzcv, FPSCR
3FDD20:  BGE             loc_3FDD46
3FDD22:  VDIV.F32        S0, S2, S16
3FDD26:  B               loc_3FDD3C
3FDD28:  VCMPE.F32       S28, S30
3FDD2C:  VMRS            APSR_nzcv, FPSCR
3FDD30:  BGT.W           loc_3FDEEC
3FDD34:  VLDR            S0, [R4,#0x48]
3FDD38:  VNEG.F32        S0, S0
3FDD3C:  VLDR            S22, =0.0
3FDD40:  VSTR            S0, [R4,#0x48]
3FDD44:  B               loc_3FE092
3FDD46:  VLDR            S22, =0.0
3FDD4A:  B               loc_3FE092
3FDD4C:  VLDR            S20, [R4,#0x10]
3FDD50:  VLDR            S22, =3.1416
3FDD54:  VADD.F32        S0, S18, S22
3FDD58:  VCMPE.F32       S20, S0
3FDD5C:  VMRS            APSR_nzcv, FPSCR
3FDD60:  BLE             loc_3FDDA0
3FDD62:  VLDR            S0, =-6.2832
3FDD66:  B               loc_3FDDB6
3FDD68:  DCFS -1000.0
3FDD6C:  DCFS 1000.0
3FDD70:  DCFS 0.00001
3FDD74:  DCFS -0.06
3FDD78:  DCFS 0.06
3FDD7C:  DCFS 0.03
3FDD80:  DCFS -0.03
3FDD84:  DCFS 0.0
3FDD88:  DCFS 3.1416
3FDD8C:  DCFS -6.2832
3FDD90:  DCFS -3.1416
3FDD94:  DCFS 6.2832
3FDD98:  DCFS 1.885
3FDD9C:  DCFS -1.885
3FDDA0:  VLDR            S0, =-3.1416
3FDDA4:  VADD.F32        S0, S18, S0
3FDDA8:  VCMPE.F32       S20, S0
3FDDAC:  VMRS            APSR_nzcv, FPSCR
3FDDB0:  BGE             loc_3FDDBA
3FDDB2:  VLDR            S0, =6.2832
3FDDB6:  VADD.F32        S20, S20, S0
3FDDBA:  VLDR            S0, [R4,#0x5C]
3FDDBE:  VCMPE.F32       S0, #0.0
3FDDC2:  VMRS            APSR_nzcv, FPSCR
3FDDC6:  BLE             loc_3FDDE2
3FDDC8:  VMUL.F32        S4, S0, S16
3FDDCC:  VLDR            S2, =1.885
3FDDD0:  VADD.F32        S2, S18, S2
3FDDD4:  VADD.F32        S4, S20, S4
3FDDD8:  VCMPE.F32       S4, S2
3FDDDC:  VMRS            APSR_nzcv, FPSCR
3FDDE0:  BGT             loc_3FDE06
3FDDE2:  VCMPE.F32       S0, #0.0
3FDDE6:  VMRS            APSR_nzcv, FPSCR
3FDDEA:  BGE             loc_3FDE0E
3FDDEC:  VMUL.F32        S4, S0, S16
3FDDF0:  VLDR            S2, =-1.885
3FDDF4:  VADD.F32        S2, S18, S2
3FDDF8:  VADD.F32        S4, S20, S4
3FDDFC:  VCMPE.F32       S4, S2
3FDE00:  VMRS            APSR_nzcv, FPSCR
3FDE04:  BGE             loc_3FDE0E
3FDE06:  VSUB.F32        S2, S2, S20
3FDE0A:  VDIV.F32        S24, S2, S0
3FDE0E:  VNEG.F32        S0, S16
3FDE12:  VCMPE.F32       S24, S0
3FDE16:  VMOV            D0, D8
3FDE1A:  VMRS            APSR_nzcv, FPSCR
3FDE1E:  BLT             loc_3FDE5E
3FDE20:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FDE2C)
3FDE24:  VLDR            S26, =0.00001
3FDE28:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FDE2A:  VMAX.F32        D0, D12, D13
3FDE2E:  LDR             R5, [R0]; CTimer::ms_fTimeStep ...
3FDE30:  MOV             R0, R4; this
3FDE32:  VSTR            S0, [R5]
3FDE36:  BLX             j__ZN9CPhysical14ApplyTurnSpeedEv; CPhysical::ApplyTurnSpeed(void)
3FDE3A:  VLDR            S0, =-0.2
3FDE3E:  VLDR            S2, [R4,#0x5C]
3FDE42:  VMUL.F32        S2, S2, S0
3FDE46:  VSUB.F32        S0, S16, S24
3FDE4A:  VMAX.F32        D0, D0, D13
3FDE4E:  VSTR            S2, [R4,#0x5C]
3FDE52:  VSTR            S0, [R5]
3FDE56:  LDR             R0, [R4,#0x44]
3FDE58:  ORR.W           R5, R0, #0x40000000
3FDE5C:  STR             R5, [R4,#0x44]
3FDE5E:  MOVW            R0, #0x2020
3FDE62:  TST             R5, R0
3FDE64:  BEQ             loc_3FDE70
3FDE66:  MOVS            R0, #0
3FDE68:  STRD.W          R0, R0, [R4,#0x48]
3FDE6C:  STR             R0, [R4,#0x50]
3FDE6E:  B               loc_3FDEB2
3FDE70:  VLDR            S2, [R4,#0x48]
3FDE74:  LDR             R0, [R4,#0x14]
3FDE76:  VMUL.F32        S2, S2, S0
3FDE7A:  VLDR            S4, [R0,#0x30]
3FDE7E:  VADD.F32        S2, S2, S4
3FDE82:  VSTR            S2, [R0,#0x30]
3FDE86:  VLDR            S2, [R4,#0x4C]
3FDE8A:  LDR             R0, [R4,#0x14]
3FDE8C:  VMUL.F32        S2, S0, S2
3FDE90:  VLDR            S4, [R0,#0x34]
3FDE94:  VADD.F32        S2, S2, S4
3FDE98:  VSTR            S2, [R0,#0x34]
3FDE9C:  VLDR            S2, [R4,#0x50]
3FDEA0:  LDR             R0, [R4,#0x14]
3FDEA2:  VMUL.F32        S0, S0, S2
3FDEA6:  VLDR            S2, [R0,#0x38]
3FDEAA:  VADD.F32        S0, S0, S2
3FDEAE:  VSTR            S0, [R0,#0x38]
3FDEB2:  MOV             R0, R4; this
3FDEB4:  BLX             j__ZN9CPhysical14ApplyTurnSpeedEv; CPhysical::ApplyTurnSpeed(void)
3FDEB8:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FDEC2)
3FDEBA:  VLDR            S0, =0.00001
3FDEBE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FDEC0:  VMAX.F32        D0, D8, D0
3FDEC4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FDEC6:  VSTR            S0, [R0]
3FDECA:  LDRB.W          R0, [R4,#0x145]
3FDECE:  LSLS            R0, R0, #0x19
3FDED0:  BPL.W           loc_3FE1CC
3FDED4:  LDR             R0, [R4,#0x14]
3FDED6:  CMP             R0, #0
3FDED8:  BEQ             loc_3FDFCC
3FDEDA:  LDRD.W          R2, R1, [R0,#0x10]; x
3FDEDE:  EOR.W           R0, R2, #0x80000000; y
3FDEE2:  BLX             atan2f
3FDEE6:  VMOV            S0, R0
3FDEEA:  B               loc_3FDFD0
3FDEEC:  VMOV.F32        S10, #0.5
3FDEF0:  VADD.F32        S4, S4, S8
3FDEF4:  VMUL.F32        S4, S4, S10
3FDEF8:  VADD.F32        S2, S4, S2
3FDEFC:  VCMPE.F32       S0, S2
3FDF00:  VMRS            APSR_nzcv, FPSCR
3FDF04:  BLE.W           loc_3FDD34
3FDF08:  VADD.F32        S2, S4, S6
3FDF0C:  VCMPE.F32       S0, S2
3FDF10:  VMRS            APSR_nzcv, FPSCR
3FDF14:  BLT.W           loc_3FDCF6
3FDF18:  B               loc_3FDD34
3FDF1A:  VMUL.F32        S0, S6, S0
3FDF1E:  VADD.F32        S0, S0, S2
3FDF22:  VSTR            S0, [R0,#0x30]
3FDF26:  VLDR            S0, [R4,#0x4C]
3FDF2A:  LDR             R0, [R4,#0x14]
3FDF2C:  VMUL.F32        S0, S6, S0
3FDF30:  VLDR            S2, [R0,#0x34]
3FDF34:  VADD.F32        S0, S0, S2
3FDF38:  VSTR            S0, [R0,#0x34]
3FDF3C:  VLDR            S0, [R4,#0x50]
3FDF40:  LDR             R0, [R4,#0x14]
3FDF42:  VMUL.F32        S0, S6, S0
3FDF46:  VLDR            S2, [R0,#0x38]
3FDF4A:  VADD.F32        S0, S0, S2
3FDF4E:  VSTR            S0, [R0,#0x38]
3FDF52:  MOV             R0, R4; this
3FDF54:  VABS.F32        S20, S4
3FDF58:  BLX             j__ZN9CPhysical14ApplyTurnSpeedEv; CPhysical::ApplyTurnSpeed(void)
3FDF5C:  LDR             R0, =(_ZN6CWorld15SnookerTableMaxE_ptr - 0x3FDF66)
3FDF5E:  VLDR            S2, =-0.06
3FDF62:  ADD             R0, PC; _ZN6CWorld15SnookerTableMaxE_ptr
3FDF64:  LDR             R0, [R0]; CWorld::SnookerTableMax ...
3FDF66:  VLDR            S4, [R0]
3FDF6A:  LDR             R0, [R4,#0x14]
3FDF6C:  VADD.F32        S6, S4, S2
3FDF70:  VLDR            S0, [R0,#0x30]
3FDF74:  VCMPE.F32       S0, S6
3FDF78:  VMRS            APSR_nzcv, FPSCR
3FDF7C:  BGT             loc_3FDF9A
3FDF7E:  LDR             R1, =(_ZN6CWorld15SnookerTableMinE_ptr - 0x3FDF88)
3FDF80:  VLDR            S6, =0.06
3FDF84:  ADD             R1, PC; _ZN6CWorld15SnookerTableMinE_ptr
3FDF86:  LDR             R1, [R1]; CWorld::SnookerTableMin ...
3FDF88:  VLDR            S8, [R1]
3FDF8C:  VADD.F32        S10, S8, S6
3FDF90:  VCMPE.F32       S0, S10
3FDF94:  VMRS            APSR_nzcv, FPSCR
3FDF98:  BGE             loc_3FE046
3FDF9A:  VLDR            S0, [R4,#0x4C]
3FDF9E:  VLDR            S2, =0.03
3FDFA2:  VMUL.F32        S0, S16, S0
3FDFA6:  LDR             R1, [R4,#0x44]
3FDFA8:  ORR.W           R1, R1, #2
3FDFAC:  STR             R1, [R4,#0x44]
3FDFAE:  VCMPE.F32       S0, S2
3FDFB2:  VMRS            APSR_nzcv, FPSCR
3FDFB6:  BGT             loc_3FDFC6
3FDFB8:  VLDR            S2, =-0.03
3FDFBC:  VCMPE.F32       S0, S2
3FDFC0:  VMRS            APSR_nzcv, FPSCR
3FDFC4:  BGE             loc_3FE08A
3FDFC6:  VDIV.F32        S0, S2, S16
3FDFCA:  B               loc_3FE080
3FDFCC:  VLDR            S0, [R4,#0x10]
3FDFD0:  VADD.F32        S2, S0, S22
3FDFD4:  VCMPE.F32       S18, S2
3FDFD8:  VMRS            APSR_nzcv, FPSCR
3FDFDC:  BLE             loc_3FDFE4
3FDFDE:  VLDR            S2, =6.2832
3FDFE2:  B               loc_3FDFFA
3FDFE4:  VLDR            S2, =-3.1416
3FDFE8:  VADD.F32        S2, S0, S2
3FDFEC:  VCMPE.F32       S18, S2
3FDFF0:  VMRS            APSR_nzcv, FPSCR
3FDFF4:  BGE             loc_3FDFFE
3FDFF6:  VLDR            S2, =-6.2832
3FDFFA:  VADD.F32        S0, S0, S2
3FDFFE:  VSUB.F32        S0, S0, S18
3FE002:  VLDR            S8, =0.001
3FE006:  VSUB.F32        S2, S20, S18
3FE00A:  VLDR            S10, =0.0
3FE00E:  VABS.F32        S4, S0
3FE012:  VABS.F32        S6, S2
3FE016:  VCMPE.F32       S4, S8
3FE01A:  VMRS            APSR_nzcv, FPSCR
3FE01E:  VCMPE.F32       S6, S8
3FE022:  IT LT
3FE024:  VMOVLT.F32      S0, S10
3FE028:  VMRS            APSR_nzcv, FPSCR
3FE02C:  IT LT
3FE02E:  VMOVLT.F32      S2, S10
3FE032:  VMUL.F32        S0, S2, S0
3FE036:  VCMPE.F32       S0, #0.0
3FE03A:  VMRS            APSR_nzcv, FPSCR
3FE03E:  ITT LT
3FE040:  MOVLT           R0, #0
3FE042:  STRLT           R0, [R4,#0x5C]
3FE044:  B               loc_3FE1CC
3FE046:  VCMPE.F32       S28, S30
3FE04A:  VMRS            APSR_nzcv, FPSCR
3FE04E:  BGT             loc_3FE078
3FE050:  VMOV.F32        S10, #0.5
3FE054:  VADD.F32        S4, S4, S8
3FE058:  VMUL.F32        S4, S4, S10
3FE05C:  VADD.F32        S2, S4, S2
3FE060:  VCMPE.F32       S0, S2
3FE064:  VMRS            APSR_nzcv, FPSCR
3FE068:  BLE             loc_3FE078
3FE06A:  VADD.F32        S2, S4, S6
3FE06E:  VCMPE.F32       S0, S2
3FE072:  VMRS            APSR_nzcv, FPSCR
3FE076:  BLT             loc_3FDF9A
3FE078:  VLDR            S0, [R4,#0x4C]
3FE07C:  VNEG.F32        S0, S0
3FE080:  VLDR            S24, =0.0
3FE084:  VSTR            S0, [R4,#0x4C]
3FE088:  B               loc_3FE08E
3FE08A:  VLDR            S24, =0.0
3FE08E:  VMOV            D9, D13
3FE092:  VSUB.F32        S2, S16, S18
3FE096:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FE0A4)
3FE098:  VLDR            S0, =0.00001
3FE09C:  VCMPE.F32       S20, #0.0
3FE0A0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FE0A2:  VMRS            APSR_nzcv, FPSCR
3FE0A6:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3FE0A8:  VMAX.F32        D0, D1, D0
3FE0AC:  VSTR            S0, [R1]
3FE0B0:  BLE             loc_3FE152
3FE0B2:  VMOV.F32        S0, #10.0
3FE0B6:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3FE0C2)
3FE0B8:  LDRSH.W         R2, [R4,#0x26]
3FE0BC:  CMP             R0, #0
3FE0BE:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3FE0C0:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3FE0C2:  VMUL.F32        S0, S20, S0
3FE0C6:  LDR.W           R1, [R1,R2,LSL#2]
3FE0CA:  ADD.W           R2, R0, #0x30 ; '0'
3FE0CE:  MOV.W           R0, #0
3FE0D2:  LDR             R1, [R1,#0x2C]
3FE0D4:  VLDR            S2, [R1,#0x24]
3FE0D8:  IT EQ
3FE0DA:  ADDEQ           R2, R4, #4
3FE0DC:  VMOV            R1, S0
3FE0E0:  VLDR            S0, =-0.0
3FE0E4:  VMUL.F32        S4, S22, S2
3FE0E8:  VLDR            S8, [R2,#4]
3FE0EC:  VMUL.F32        S6, S24, S2
3FE0F0:  VLDR            S10, [R2,#8]
3FE0F4:  VMUL.F32        S0, S2, S0
3FE0F8:  VLDR            S2, [R2]
3FE0FC:  ADD             R2, SP, #0x78+var_74
3FE0FE:  VSTR            S24, [SP,#0x78+var_64]
3FE102:  STR             R0, [SP,#0x78+var_5C]
3FE104:  MOV             R0, R4
3FE106:  VSTR            S22, [SP,#0x78+var_60]
3FE10A:  VSUB.F32        S4, S8, S4
3FE10E:  VSUB.F32        S2, S2, S6
3FE112:  VADD.F32        S0, S10, S0
3FE116:  VSTR            S4, [SP,#0x78+var_70]
3FE11A:  VSTR            S2, [SP,#0x78+var_74]
3FE11E:  VSTR            S0, [SP,#0x78+var_6C]
3FE122:  BLX             j__ZN9CPhysical13ApplyFrictionEfR9CColPoint; CPhysical::ApplyFriction(float,CColPoint &)
3FE126:  LDRB.W          R0, [R4,#0x3A]
3FE12A:  AND.W           R0, R0, #7
3FE12E:  CMP             R0, #4
3FE130:  BNE             loc_3FE152
3FE132:  LDR             R0, =(AudioEngine_ptr - 0x3FE13E)
3FE134:  MOV.W           R1, #0x3F8; unsigned __int16
3FE138:  MOV             R2, R4; CObject *
3FE13A:  ADD             R0, PC; AudioEngine_ptr
3FE13C:  LDR             R0, [R0]; AudioEngine ; this
3FE13E:  BLX             j__ZN12CAudioEngine23ReportMissionAudioEventEtP7CObject; CAudioEngine::ReportMissionAudioEvent(ushort,CObject *)
3FE142:  LDRB.W          R0, [R4,#0x14C]
3FE146:  MOVS            R1, #0x32 ; '2'
3FE148:  CMP             R0, #0xFF
3FE14A:  IT EQ
3FE14C:  MOVEQ           R1, #0x36 ; '6'
3FE14E:  STRB.W          R1, [R4,#0x14C]
3FE152:  LDRH.W          R0, [R4,#0x44]
3FE156:  MOVW            R1, #0x2020
3FE15A:  TST             R0, R1
3FE15C:  BEQ             loc_3FE168
3FE15E:  MOVS            R0, #0
3FE160:  STRD.W          R0, R0, [R4,#0x48]
3FE164:  STR             R0, [R4,#0x50]
3FE166:  B               loc_3FE1B4
3FE168:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FE172)
3FE16A:  VLDR            S0, [R4,#0x48]
3FE16E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FE170:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FE172:  VLDR            S2, [R0]
3FE176:  LDR             R0, [R4,#0x14]
3FE178:  VMUL.F32        S0, S0, S2
3FE17C:  VLDR            S4, [R0,#0x30]
3FE180:  VADD.F32        S0, S0, S4
3FE184:  VSTR            S0, [R0,#0x30]
3FE188:  VLDR            S0, [R4,#0x4C]
3FE18C:  LDR             R0, [R4,#0x14]
3FE18E:  VMUL.F32        S0, S2, S0
3FE192:  VLDR            S4, [R0,#0x34]
3FE196:  VADD.F32        S0, S0, S4
3FE19A:  VSTR            S0, [R0,#0x34]
3FE19E:  VLDR            S0, [R4,#0x50]
3FE1A2:  LDR             R0, [R4,#0x14]
3FE1A4:  VMUL.F32        S0, S2, S0
3FE1A8:  VLDR            S2, [R0,#0x38]
3FE1AC:  VADD.F32        S0, S0, S2
3FE1B0:  VSTR            S0, [R0,#0x38]
3FE1B4:  MOV             R0, R4; this
3FE1B6:  BLX             j__ZN9CPhysical14ApplyTurnSpeedEv; CPhysical::ApplyTurnSpeed(void)
3FE1BA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FE1C4)
3FE1BC:  VLDR            S0, =0.00001
3FE1C0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FE1C2:  VMAX.F32        D0, D8, D0
3FE1C6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FE1C8:  VSTR            S0, [R0]
3FE1CC:  ADD             SP, SP, #0x30 ; '0'
3FE1CE:  VPOP            {D8-D15}
3FE1D2:  POP             {R4,R5,R7,PC}
