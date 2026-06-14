; =========================================================
; Game Engine Function: _ZN8CVehicle20ReactToVehicleDamageEP4CPed
; Address            : 0x58FF20 - 0x59008A
; =========================================================

58FF20:  PUSH            {R4-R7,LR}
58FF22:  ADD             R7, SP, #0xC
58FF24:  PUSH.W          {R8,R9,R11}
58FF28:  VPUSH           {D8-D9}
58FF2C:  SUB             SP, SP, #0x20
58FF2E:  MOV             R4, R1
58FF30:  MOV             R5, R0
58FF32:  BLX             rand
58FF36:  UXTH            R0, R0
58FF38:  VLDR            S16, =0.000015259
58FF3C:  VMOV            S0, R0
58FF40:  VLDR            S18, =3000.0
58FF44:  VCVT.F32.S32    S0, S0
58FF48:  VMUL.F32        S0, S0, S16
58FF4C:  VMUL.F32        S0, S0, S18
58FF50:  VCVT.S32.F32    S0, S0
58FF54:  LDR.W           R2, [R5,#0x464]
58FF58:  CMP             R2, #0
58FF5A:  BEQ             loc_58FFE4
58FF5C:  VMOV            R0, S0
58FF60:  ADD.W           R6, R0, #0x7D0
58FF64:  LDR.W           R0, [R5,#0x468]
58FF68:  CBZ             R0, loc_58FF80
58FF6A:  BLX             rand
58FF6E:  LDR.W           R2, [R5,#0x464]; CPed *
58FF72:  TST.W           R0, #1
58FF76:  BNE             loc_58FFB0
58FF78:  LDR.W           R12, =(g_ikChainMan_ptr - 0x58FF80)
58FF7C:  ADD             R12, PC; g_ikChainMan_ptr
58FF7E:  B               loc_58FF86
58FF80:  LDR.W           R12, =(g_ikChainMan_ptr - 0x58FF88)
58FF84:  ADD             R12, PC; g_ikChainMan_ptr
58FF86:  MOVS            R0, #5
58FF88:  MOVS            R1, #0
58FF8A:  STRD.W          R6, R0, [SP,#0x48+var_48]
58FF8E:  MOV.W           LR, #3
58FF92:  MOV.W           R8, #0x1F4
58FF96:  MOV.W           R3, #0x3E800000
58FF9A:  ADD             R0, SP, #0x48+var_38
58FF9C:  STRD.W          R1, R1, [SP,#0x48+var_40]
58FFA0:  STM.W           R0, {R3,R8,LR}
58FFA4:  MOV             R3, R4
58FFA6:  LDR.W           R0, [R12]; g_ikChainMan
58FFAA:  STR             R1, [SP,#0x48+var_2C]
58FFAC:  ADR             R1, aReacttovhcldam; "ReactToVhclDam"
58FFAE:  B               loc_58FFE0
58FFB0:  LDR.W           R12, =(g_ikChainMan_ptr - 0x58FFC2)
58FFB4:  MOVS            R1, #0
58FFB6:  MOV.W           LR, #3
58FFBA:  MOV.W           R8, #0x1F4
58FFBE:  ADD             R12, PC; g_ikChainMan_ptr
58FFC0:  MOV.W           R9, #0x3E800000
58FFC4:  MOVS            R0, #5
58FFC6:  LDR.W           R3, [R5,#0x468]; int
58FFCA:  STRD.W          R6, R0, [SP,#0x48+var_48]; int
58FFCE:  STRD.W          R1, R1, [SP,#0x48+var_40]; int
58FFD2:  STRD.W          R9, R8, [SP,#0x48+var_38]; float
58FFD6:  STRD.W          LR, R1, [SP,#0x48+var_30]; int
58FFDA:  ADR             R1, aReacttovhcldam; "ReactToVhclDam"
58FFDC:  LDR.W           R0, [R12]; g_ikChainMan ; int
58FFE0:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
58FFE4:  BLX             rand
58FFE8:  UXTH            R0, R0
58FFEA:  VMOV            S0, R0
58FFEE:  VCVT.F32.S32    S0, S0
58FFF2:  VMUL.F32        S0, S0, S16
58FFF6:  VMUL.F32        S0, S0, S18
58FFFA:  VCVT.S32.F32    S0, S0
58FFFE:  LDR.W           R0, [R5,#0x468]
590002:  CBZ             R0, loc_59007E
590004:  VMOV            R0, S0
590008:  ADD.W           R6, R0, #0x7D0
59000C:  BLX             rand
590010:  LDR.W           R2, [R5,#0x468]; CPed *
590014:  TST.W           R0, #1
590018:  BNE             loc_59004A
59001A:  LDR.W           R12, =(g_ikChainMan_ptr - 0x59002A)
59001E:  MOVS            R3, #5
590020:  STRD.W          R6, R3, [SP,#0x48+var_48]
590024:  MOVS            R1, #0
590026:  ADD             R12, PC; g_ikChainMan_ptr
590028:  MOV.W           LR, #3
59002C:  MOV.W           R5, #0x1F4
590030:  MOV.W           R0, #0x3E800000
590034:  ADD             R3, SP, #0x48+var_38
590036:  STRD.W          R1, R1, [SP,#0x48+var_40]
59003A:  STM.W           R3, {R0,R5,LR}
59003E:  MOV             R3, R4
590040:  LDR.W           R0, [R12]; g_ikChainMan
590044:  STR             R1, [SP,#0x48+var_2C]
590046:  ADR             R1, aReacttovhcldam; "ReactToVhclDam"
590048:  B               loc_59007A
59004A:  LDR.W           R12, =(g_ikChainMan_ptr - 0x59005A)
59004E:  MOVS            R1, #0
590050:  LDR.W           R3, [R5,#0x464]; int
590054:  MOVS            R5, #5
590056:  ADD             R12, PC; g_ikChainMan_ptr
590058:  STRD.W          R6, R5, [SP,#0x48+var_48]; int
59005C:  MOV.W           LR, #3
590060:  MOV.W           R4, #0x1F4
590064:  MOV.W           R0, #0x3E800000
590068:  ADD             R5, SP, #0x48+var_38
59006A:  STRD.W          R1, R1, [SP,#0x48+var_40]; int
59006E:  STM.W           R5, {R0,R4,LR}
590072:  STR             R1, [SP,#0x48+var_2C]; int
590074:  ADR             R1, aReacttovhcldam; "ReactToVhclDam"
590076:  LDR.W           R0, [R12]; g_ikChainMan ; int
59007A:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
59007E:  ADD             SP, SP, #0x20 ; ' '
590080:  VPOP            {D8-D9}
590084:  POP.W           {R8,R9,R11}
590088:  POP             {R4-R7,PC}
