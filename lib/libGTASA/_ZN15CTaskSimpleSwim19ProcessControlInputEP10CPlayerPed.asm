; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim19ProcessControlInputEP10CPlayerPed
; Address            : 0x53A8E8 - 0x53B306
; =========================================================

53A8E8:  PUSH            {R4-R7,LR}
53A8EA:  ADD             R7, SP, #0xC
53A8EC:  PUSH.W          {R8-R10}
53A8F0:  VPUSH           {D8-D13}
53A8F4:  SUB             SP, SP, #0x10; float
53A8F6:  MOV             R5, R0
53A8F8:  MOV             R10, R1
53A8FA:  LDRB            R0, [R5,#8]
53A8FC:  CMP             R0, #0
53A8FE:  ITT NE
53A900:  LDRBNE          R0, [R5,#9]
53A902:  CMPNE           R0, #0
53A904:  BNE             loc_53A912
53A906:  LDR.W           R0, [R10,#0x444]
53A90A:  MOVS            R1, #0
53A90C:  STR             R1, [R0,#0x14]
53A90E:  B.W             loc_53B2FA
53A912:  MOV             R0, R10; this
53A914:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
53A918:  MOV             R6, R0
53A91A:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
53A91E:  VMOV            S0, R0
53A922:  MOV             R0, R6; this
53A924:  VCVT.F32.S32    S16, S0
53A928:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
53A92C:  VMOV            S0, R0
53A930:  VLDR            S2, =0.0078125
53A934:  VCVT.F32.S32    S0, S0
53A938:  LDRSH.W         R0, [R5,#0xA]
53A93C:  VMUL.F32        S18, S16, S2
53A940:  CMP             R0, #2
53A942:  VMUL.F32        S20, S0, S2
53A946:  VMUL.F32        S0, S18, S18
53A94A:  VMUL.F32        S2, S20, S20
53A94E:  VADD.F32        S16, S0, S2
53A952:  BGT             loc_53A97A
53A954:  MOV             R0, R6; this
53A956:  BLX             j__ZN4CPad16SwimJumpJustDownEv; CPad::SwimJumpJustDown(void)
53A95A:  CMP             R0, #1
53A95C:  BNE             loc_53A964
53A95E:  MOVS            R0, #5
53A960:  STRH            R0, [R5,#0xA]
53A962:  B               loc_53A97A
53A964:  MOV             R0, R6; this
53A966:  BLX             j__ZN4CPad12DiveJustDownEv; CPad::DiveJustDown(void)
53A96A:  CMP             R0, #1
53A96C:  BNE             loc_53A97A
53A96E:  MOVS            R0, #3
53A970:  MOVS            R1, #0; CPlayerPed *
53A972:  STRH            R0, [R5,#0xA]
53A974:  LDR.W           R0, [R10,#0x444]
53A978:  STR             R1, [R0,#0x14]
53A97A:  VSQRT.F32       S16, S16
53A97E:  LDRSH.W         R0, [R5,#0xA]; this
53A982:  CMP             R0, #3
53A984:  BCS             loc_53AA04
53A986:  MOV             R0, R10; this
53A988:  BLX             j__ZN10CGameLogic26IsPlayerUse2PlayerControlsEP10CPlayerPed; CGameLogic::IsPlayerUse2PlayerControls(CPlayerPed *)
53A98C:  CMP             R0, #1
53A98E:  BNE             loc_53AA22
53A990:  VCMPE.F32       S16, #0.0
53A994:  VMRS            APSR_nzcv, FPSCR
53A998:  BLE.W           loc_53AC04
53A99C:  VMOV            R0, S18
53A9A0:  MOVS            R1, #0; float
53A9A2:  VMOV            R3, S20; float
53A9A6:  EOR.W           R2, R0, #0x80000000; float
53A9AA:  MOVS            R0, #0; this
53A9AC:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
53A9B0:  LDR.W           R1, =(TheCamera_ptr - 0x53A9BC)
53A9B4:  VMOV            S0, R0
53A9B8:  ADD             R1, PC; TheCamera_ptr
53A9BA:  LDR             R1, [R1]; TheCamera ; float
53A9BC:  VLDR            S2, [R1,#0x14C]
53A9C0:  VSUB.F32        S0, S0, S2
53A9C4:  VMOV            R0, S0; this
53A9C8:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
53A9CC:  MOV             R6, R0
53A9CE:  ADDW            R0, R10, #0x55C
53A9D2:  VLDR            S18, =3.1416
53A9D6:  VMOV            S22, R6
53A9DA:  VLDR            S20, [R0]
53A9DE:  MOV             R0, R6; x
53A9E0:  VADD.F32        S24, S20, S18
53A9E4:  BLX             sinf
53A9E8:  MOV             R9, R0
53A9EA:  MOV             R0, R6; x
53A9EC:  BLX             cosf
53A9F0:  VCMPE.F32       S22, S24
53A9F4:  MOV             R8, R0
53A9F6:  VMRS            APSR_nzcv, FPSCR
53A9FA:  BLE.W           loc_53AB04
53A9FE:  VLDR            S0, =-6.2832
53AA02:  B               loc_53AB1A
53AA04:  CMP             R0, #4
53AA06:  BEQ             loc_53AA26
53AA08:  CMP             R0, #3
53AA0A:  BNE.W           loc_53B1DE
53AA0E:  VLDR            S0, [R5,#0x34]
53AA12:  VCMPE.F32       S0, #0.0
53AA16:  VMRS            APSR_nzcv, FPSCR
53AA1A:  ITT GT
53AA1C:  MOVGT           R0, #0
53AA1E:  STRGT           R0, [R5,#0x34]
53AA20:  B               loc_53B1DE
53AA22:  MOVS            R6, #0
53AA24:  B               loc_53AC16
53AA26:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
53AA2A:  CMP             R0, #2
53AA2C:  BNE             loc_53AAAE
53AA2E:  LDR.W           R0, =(TheCamera_ptr - 0x53AA36)
53AA32:  ADD             R0, PC; TheCamera_ptr
53AA34:  LDR             R0, [R0]; TheCamera ; this
53AA36:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
53AA3A:  ADD.W           R1, R1, R1,LSL#5
53AA3E:  ADD.W           R1, R0, R1,LSL#4
53AA42:  VLDR            S16, [R1,#0x2D8]
53AA46:  VLDR            S18, [R1,#0x2DC]
53AA4A:  VLDR            S20, [R1,#0x2E0]
53AA4E:  VNEG.F32        S22, S16
53AA52:  VNEG.F32        S24, S18
53AA56:  BLX             j__ZN7CCamera16GetLookDirectionEv; CCamera::GetLookDirection(void)
53AA5A:  MOV             R6, R0
53AA5C:  CMP             R6, #3
53AA5E:  ITT EQ
53AA60:  VMOVEQ.F32      S22, S16
53AA64:  VMOVEQ.F32      S24, S18
53AA68:  VMOV            R0, S22
53AA6C:  VMOV            R1, S24; x
53AA70:  EOR.W           R0, R0, #0x80000000; y
53AA74:  BLX             atan2f
53AA78:  ADDW            R1, R10, #0x55C
53AA7C:  VMOV            S2, R0
53AA80:  VLDR            S0, =0.0
53AA84:  CMP             R6, #3
53AA86:  VLDR            S4, [R1]
53AA8A:  IT EQ
53AA8C:  VMOVEQ.F32      S0, S20
53AA90:  STR.W           R0, [R10,#0x560]
53AA94:  VSUB.F32        S2, S2, S4
53AA98:  VLDR            S4, =-3.1416
53AA9C:  VCMPE.F32       S2, S4
53AAA0:  VMRS            APSR_nzcv, FPSCR
53AAA4:  BGE.W           loc_53ADCE
53AAA8:  VLDR            S4, =-6.2832
53AAAC:  B               loc_53ADE4
53AAAE:  VCMPE.F32       S16, #0.0
53AAB2:  VMRS            APSR_nzcv, FPSCR
53AAB6:  BLE.W           loc_53AEAC
53AABA:  VMOV.F32        S2, #1.0
53AABE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53AACA)
53AAC2:  VLDR            S4, =-0.03
53AAC6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53AAC8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53AACA:  VDIV.F32        S0, S2, S16
53AACE:  VMUL.F32        S18, S18, S0
53AAD2:  VLDR            S16, [R0]
53AAD6:  ADD.W           R0, R10, #0x560
53AADA:  VLDR            S6, [R0]
53AADE:  VMUL.F32        S4, S18, S4
53AAE2:  VMUL.F32        S4, S4, S16
53AAE6:  VADD.F32        S4, S6, S4
53AAEA:  VLDR            S6, =3.1416
53AAEE:  VCMPE.F32       S4, S6
53AAF2:  VSTR            S4, [R0]
53AAF6:  VMRS            APSR_nzcv, FPSCR
53AAFA:  BLE.W           loc_53B04C
53AAFE:  VLDR            S6, =-6.2832
53AB02:  B               loc_53B05E
53AB04:  VLDR            S0, =-3.1416
53AB08:  VADD.F32        S0, S20, S0
53AB0C:  VCMPE.F32       S22, S0
53AB10:  VMRS            APSR_nzcv, FPSCR
53AB14:  BGE             loc_53AB1E
53AB16:  VLDR            S0, =6.2832
53AB1A:  VADD.F32        S22, S22, S0
53AB1E:  VMOV.F32        S0, #1.0
53AB22:  EOR.W           R6, R9, #0x80000000
53AB26:  VSUB.F32        S2, S22, S20
53AB2A:  VCMPE.F32       S2, S0
53AB2E:  VMRS            APSR_nzcv, FPSCR
53AB32:  BGT             loc_53AB4A
53AB34:  VMOV.F32        S4, #-1.0
53AB38:  VMOV.F32        S0, S2
53AB3C:  VCMPE.F32       S2, S4
53AB40:  VMRS            APSR_nzcv, FPSCR
53AB44:  IT LT
53AB46:  VMOVLT.F32      S0, S4
53AB4A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53AB56)
53AB4E:  VLDR            S2, =0.08
53AB52:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53AB54:  VMUL.F32        S0, S0, S2
53AB58:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53AB5A:  VLDR            S2, [R0]
53AB5E:  ADD.W           R0, R10, #0x560
53AB62:  VMUL.F32        S0, S0, S2
53AB66:  VADD.F32        S0, S20, S0
53AB6A:  VCMPE.F32       S0, S18
53AB6E:  VSTR            S0, [R0]
53AB72:  VMRS            APSR_nzcv, FPSCR
53AB76:  BLE             loc_53AB7E
53AB78:  VLDR            S2, =-6.2832
53AB7C:  B               loc_53AB90
53AB7E:  VLDR            S2, =-3.1416
53AB82:  VCMPE.F32       S0, S2
53AB86:  VMRS            APSR_nzcv, FPSCR
53AB8A:  BGE             loc_53AB98
53AB8C:  VLDR            S2, =6.2832
53AB90:  VADD.F32        S0, S0, S2
53AB94:  VSTR            S0, [R0]
53AB98:  MOVS            R0, #0
53AB9A:  MOV             R1, R6
53AB9C:  STR             R0, [SP,#0x58+var_58]
53AB9E:  MOV             R0, R10
53ABA0:  MOV             R2, R8
53ABA2:  MOVS            R3, #0
53ABA4:  BLX             j__ZN10CGameLogic34IsPlayerAllowedToGoInThisDirectionEP10CPlayerPed7CVectorf; CGameLogic::IsPlayerAllowedToGoInThisDirection(CPlayerPed *,CVector,float)
53ABA8:  CMP             R0, #1
53ABAA:  BNE             loc_53AC08
53ABAC:  LDR.W           R0, [R10,#0x14]
53ABB0:  VMOV            S0, R8
53ABB4:  VMOV            S2, R6
53ABB8:  VLDR            S4, [R0,#0x10]
53ABBC:  VLDR            S6, [R0,#0x14]
53ABC0:  VLDR            S10, [R0]
53ABC4:  VMUL.F32        S4, S4, S2
53ABC8:  VLDR            S12, [R0,#4]
53ABCC:  VMUL.F32        S6, S0, S6
53ABD0:  VMUL.F32        S2, S10, S2
53ABD4:  VLDR            S8, [R0,#0x18]
53ABD8:  VMUL.F32        S0, S0, S12
53ABDC:  VLDR            S10, =0.0
53ABE0:  VLDR            S14, [R0,#8]
53ABE4:  VMUL.F32        S8, S8, S10
53ABE8:  VADD.F32        S4, S4, S6
53ABEC:  VMUL.F32        S6, S14, S10
53ABF0:  VADD.F32        S0, S2, S0
53ABF4:  VADD.F32        S2, S4, S8
53ABF8:  VADD.F32        S0, S0, S6
53ABFC:  VNMUL.F32       S20, S16, S2
53AC00:  VMUL.F32        S18, S16, S0
53AC04:  MOVS            R6, #1
53AC06:  B               loc_53AC16
53AC08:  VLDR            S18, =0.0
53AC0C:  MOVS            R6, #1
53AC0E:  VMOV.F32        S20, S18
53AC12:  VMOV.F32        S16, S18
53AC16:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
53AC1A:  CMP             R0, #2
53AC1C:  BNE             loc_53ACD4
53AC1E:  LDR.W           R0, =(TheCamera_ptr - 0x53AC26)
53AC22:  ADD             R0, PC; TheCamera_ptr
53AC24:  LDR             R6, [R0]; TheCamera
53AC26:  LDRB.W          R0, [R6,#(byte_951FFF - 0x951FA8)]
53AC2A:  ADD.W           R0, R0, R0,LSL#5
53AC2E:  ADD.W           R0, R6, R0,LSL#4
53AC32:  LDRD.W          R2, R1, [R0,#0x2D8]; x
53AC36:  EOR.W           R0, R2, #0x80000000; y
53AC3A:  BLX             atan2f
53AC3E:  STR.W           R0, [R10,#0x560]
53AC42:  MOV             R0, R6; this
53AC44:  ADD.W           R4, R10, #0x560
53AC48:  BLX             j__ZN7CCamera16GetLookDirectionEv; CCamera::GetLookDirection(void)
53AC4C:  CMP             R0, #3
53AC4E:  BEQ             loc_53AC76
53AC50:  VLDR            S2, =3.1416
53AC54:  VLDR            S0, [R4]
53AC58:  VADD.F32        S0, S0, S2
53AC5C:  VCMPE.F32       S0, S2
53AC60:  VSTR            S0, [R4]
53AC64:  VMRS            APSR_nzcv, FPSCR
53AC68:  ITTT GT
53AC6A:  VLDRGT          S2, =-6.2832
53AC6E:  VADDGT.F32      S0, S0, S2
53AC72:  VSTRGT          S0, [R4]
53AC76:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53AC86)
53AC7A:  VNEG.F32        S2, S20
53AC7E:  LDR.W           R1, [R10,#0x444]
53AC82:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53AC84:  VLDR            S4, =0.07
53AC88:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53AC8A:  VLDR            S6, [R1,#0x14]
53AC8E:  VLDR            S0, [R0]
53AC92:  VSUB.F32        S8, S2, S6
53AC96:  ADDW            R0, R10, #0x55C
53AC9A:  VMUL.F32        S4, S0, S4
53AC9E:  VCMPE.F32       S8, S4
53ACA2:  VMRS            APSR_nzcv, FPSCR
53ACA6:  VADD.F32        S6, S4, S6
53ACAA:  IT GT
53ACAC:  VMOVGT.F32      S2, S6
53ACB0:  VSTR            S2, [R1,#0x14]
53ACB4:  VLDR            S2, [R0]
53ACB8:  VLDR            S4, [R4]
53ACBC:  VSUB.F32        S2, S4, S2
53ACC0:  VLDR            S4, =-3.1416
53ACC4:  VCMPE.F32       S2, S4
53ACC8:  VMRS            APSR_nzcv, FPSCR
53ACCC:  BGE             loc_53AD24
53ACCE:  VLDR            S4, =-6.2832
53ACD2:  B               loc_53AD3A
53ACD4:  VCMPE.F32       S16, #0.0
53ACD8:  VMRS            APSR_nzcv, FPSCR
53ACDC:  BLE             loc_53AD58
53ACDE:  CMP             R6, #1
53ACE0:  BNE             loc_53AD92
53ACE2:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53ACEA)
53ACE6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53ACE8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53ACEA:  VLDR            S0, [R0]
53ACEE:  B               loc_53AEFA
53ACF0:  DCFS 0.0078125
53ACF4:  DCFS 3.1416
53ACF8:  DCFS -6.2832
53ACFC:  DCFS 0.0
53AD00:  DCFS -3.1416
53AD04:  DCFS -0.03
53AD08:  DCFS 6.2832
53AD0C:  DCFS 0.08
53AD10:  DCFS 0.07
53AD14:  DCFS -0.0
53AD18:  DCFS -0.05
53AD1C:  DCFS 0.04
53AD20:  DCFS 0.02
53AD24:  VLDR            S4, =3.1416
53AD28:  VCMPE.F32       S2, S4
53AD2C:  VMRS            APSR_nzcv, FPSCR
53AD30:  ITE GT
53AD32:  VLDRGT          S4, =6.2832
53AD36:  VLDRLE          S4, =-0.0
53AD3A:  VSUB.F32        S2, S4, S2
53AD3E:  VMOV.F32        S6, #10.0
53AD42:  VMOV.F32        S4, #-1.0
53AD46:  VMUL.F32        S2, S2, S6
53AD4A:  VMOV.F32        S6, #1.0
53AD4E:  VMAX.F32        D16, D1, D2
53AD52:  VMIN.F32        D9, D16, D3
53AD56:  B               loc_53AF24
53AD58:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53AD64)
53AD5C:  LDR.W           R0, [R10,#0x444]
53AD60:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53AD62:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
53AD64:  VLDR            S2, [R0,#0x14]
53AD68:  VCMPE.F32       S2, #0.0
53AD6C:  VLDR            S0, [R1]
53AD70:  VMRS            APSR_nzcv, FPSCR
53AD74:  BLE.W           loc_53AF24
53AD78:  VLDR            S4, =-0.05
53AD7C:  VLDR            S6, =0.0
53AD80:  VMUL.F32        S4, S0, S4
53AD84:  VADD.F32        S2, S2, S4
53AD88:  VMAX.F32        D1, D1, D3
53AD8C:  VSTR            S2, [R0,#0x14]
53AD90:  B               loc_53AF24
53AD92:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53AD9E)
53AD96:  VLDR            S0, =-0.03
53AD9A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53AD9C:  VMUL.F32        S2, S18, S0
53ADA0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53ADA2:  VLDR            S0, [R0]
53ADA6:  ADD.W           R0, R10, #0x560
53ADAA:  VLDR            S4, [R0]
53ADAE:  VMUL.F32        S2, S2, S0
53ADB2:  VADD.F32        S2, S4, S2
53ADB6:  VLDR            S4, =3.1416
53ADBA:  VCMPE.F32       S2, S4
53ADBE:  VSTR            S2, [R0]
53ADC2:  VMRS            APSR_nzcv, FPSCR
53ADC6:  BLE             loc_53AEBA
53ADC8:  VLDR            S4, =-6.2832
53ADCC:  B               loc_53AECC
53ADCE:  VLDR            S4, =3.1416
53ADD2:  VCMPE.F32       S2, S4
53ADD6:  VMRS            APSR_nzcv, FPSCR
53ADDA:  ITE GT
53ADDC:  VLDRGT          S4, =6.2832
53ADE0:  VLDRLE          S4, =-0.0
53ADE4:  VSUB.F32        S2, S4, S2
53ADE8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53ADFC)
53ADEC:  VMOV.F32        S26, #10.0
53ADF0:  VLDR            S4, =0.04
53ADF4:  VMOV.F32        S20, #-1.0
53ADF8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53ADFA:  VMOV.F32        S22, #1.0
53ADFE:  VLDR            S6, [R5,#0x30]
53AE02:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53AE04:  VLDR            S16, [R0]
53AE08:  VMOV            R0, S0; x
53AE0C:  VMUL.F32        S2, S2, S26
53AE10:  VMAX.F32        D16, D1, D10
53AE14:  VLDR            S2, =0.08
53AE18:  VMIN.F32        D9, D16, D11
53AE1C:  VMUL.F32        S2, S18, S2
53AE20:  VMUL.F32        S4, S18, S4
53AE24:  VMUL.F32        S2, S16, S2
53AE28:  VMUL.F32        S0, S16, S4
53AE2C:  VLDR            S4, [R5,#0x28]
53AE30:  VADD.F32        S24, S4, S0
53AE34:  VADD.F32        S0, S6, S2
53AE38:  VSTR            S24, [R5,#0x28]
53AE3C:  VSTR            S0, [R5,#0x30]
53AE40:  BLX             asinf
53AE44:  VLDR            S2, [R5,#0x24]
53AE48:  VMOV            S0, R0
53AE4C:  VLDR            S4, [R5,#0x34]
53AE50:  VSUB.F32        S0, S0, S2
53AE54:  VCMP.F32        S4, #0.0
53AE58:  VMRS            APSR_nzcv, FPSCR
53AE5C:  VMUL.F32        S0, S0, S26
53AE60:  VMAX.F32        D16, D0, D10
53AE64:  VMIN.F32        D0, D16, D11
53AE68:  BEQ             loc_53AE74
53AE6A:  VCMPE.F32       S0, #0.0
53AE6E:  VMRS            APSR_nzcv, FPSCR
53AE72:  BGE             loc_53AE88
53AE74:  VLDR            S4, =0.02
53AE78:  VMUL.F32        S4, S0, S4
53AE7C:  VMUL.F32        S4, S4, S16
53AE80:  VADD.F32        S2, S2, S4
53AE84:  VSTR            S2, [R5,#0x24]
53AE88:  VADD.F32        S4, S24, S24
53AE8C:  MOVS            R1, #0
53AE8E:  MOVS            R0, #0
53AE90:  VCMPE.F32       S4, S22
53AE94:  VMRS            APSR_nzcv, FPSCR
53AE98:  VMOV.F32        S2, S4
53AE9C:  IT GT
53AE9E:  VMOVGT.F32      S2, S22
53AEA2:  IT GT
53AEA4:  MOVGT           R1, #1
53AEA6:  VCMPE.F32       S2, S20
53AEAA:  B               loc_53B112
53AEAC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53AEB4)
53AEB0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53AEB2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53AEB4:  VLDR            S16, [R0]
53AEB8:  B               loc_53B166
53AEBA:  VLDR            S4, =-3.1416
53AEBE:  VCMPE.F32       S2, S4
53AEC2:  VMRS            APSR_nzcv, FPSCR
53AEC6:  BGE             loc_53AED4
53AEC8:  VLDR            S4, =6.2832
53AECC:  VADD.F32        S2, S2, S4
53AED0:  VSTR            S2, [R0]
53AED4:  LDRH            R0, [R5,#0xA]
53AED6:  CBZ             R0, loc_53AEE4
53AED8:  VCMPE.F32       S20, #0.0
53AEDC:  VMRS            APSR_nzcv, FPSCR
53AEE0:  BGT             loc_53AEE8
53AEE2:  B               loc_53AEFA
53AEE4:  VLDR            S16, =-0.0
53AEE8:  VSUB.F32        S16, S16, S20
53AEEC:  VCMPE.F32       S16, #0.0
53AEF0:  VMRS            APSR_nzcv, FPSCR
53AEF4:  IT LT
53AEF6:  VLDRLT          S16, =0.0
53AEFA:  LDR.W           R0, [R10,#0x444]
53AEFE:  VLDR            S2, =0.07
53AF02:  VLDR            S4, [R0,#0x14]
53AF06:  VMUL.F32        S2, S0, S2
53AF0A:  VSUB.F32        S6, S16, S4
53AF0E:  VADD.F32        S4, S2, S4
53AF12:  VCMPE.F32       S6, S2
53AF16:  VMRS            APSR_nzcv, FPSCR
53AF1A:  IT GT
53AF1C:  VMOVGT.F32      S16, S4
53AF20:  VSTR            S16, [R0,#0x14]
53AF24:  VLDR            S2, =0.08
53AF28:  VLDR            S4, [R5,#0x30]
53AF2C:  VMUL.F32        S2, S18, S2
53AF30:  LDRH            R0, [R5,#0xA]
53AF32:  CMP             R0, #2
53AF34:  VMUL.F32        S2, S2, S0
53AF38:  VADD.F32        S2, S4, S2
53AF3C:  VSTR            S2, [R5,#0x30]
53AF40:  BEQ             loc_53AF64
53AF42:  CMP             R0, #1
53AF44:  BNE             loc_53B012
53AF46:  VABS.F32        S2, S18
53AF4A:  VLDR            S4, =0.04
53AF4E:  VMUL.F32        S2, S2, S4
53AF52:  VMUL.F32        S0, S2, S0
53AF56:  VLDR            S2, [R5,#0x2C]
53AF5A:  VADD.F32        S0, S0, S2
53AF5E:  VSTR            S0, [R5,#0x2C]
53AF62:  B               loc_53B012
53AF64:  VLDR            S2, =0.04
53AF68:  MOVS            R6, #0
53AF6A:  ADD             R3, SP, #0x58+var_4C; float
53AF6C:  MOVS            R4, #(stderr+1)
53AF6E:  VMUL.F32        S2, S18, S2
53AF72:  VMUL.F32        S0, S2, S0
53AF76:  VLDR            S2, [R5,#0x28]
53AF7A:  VADD.F32        S0, S0, S2
53AF7E:  VSTR            S0, [R5,#0x28]
53AF82:  STRD.W          R6, R6, [SP,#0x58+var_50]; CVector *
53AF86:  LDR.W           R0, [R10,#0x14]
53AF8A:  ADD.W           R1, R0, #0x30 ; '0'
53AF8E:  CMP             R0, #0
53AF90:  VLDR            S16, [R0,#0x10]
53AF94:  VLDR            S18, [R0,#0x14]
53AF98:  VLDR            S20, [R0,#0x18]
53AF9C:  IT EQ
53AF9E:  ADDEQ.W         R1, R10, #4
53AFA2:  VLDR            S22, [R1]
53AFA6:  VLDR            S24, [R1,#4]
53AFAA:  VLDR            S26, [R1,#8]
53AFAE:  VADD.F32        S0, S22, S16
53AFB2:  VADD.F32        S2, S24, S18
53AFB6:  STRD.W          R4, R6, [SP,#0x58+var_58]; float *
53AFBA:  VADD.F32        S4, S26, S20
53AFBE:  VMOV            R0, S0; this
53AFC2:  VMOV            R1, S2; float
53AFC6:  VMOV            R2, S4; float
53AFCA:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
53AFCE:  CMP             R0, #1
53AFD0:  BNE             loc_53B012
53AFD2:  VSUB.F32        S0, S22, S16
53AFD6:  ADD             R3, SP, #0x58+var_50; float
53AFD8:  VSUB.F32        S2, S24, S18
53AFDC:  STRD.W          R4, R6, [SP,#0x58+var_58]; float *
53AFE0:  VSUB.F32        S4, S26, S20
53AFE4:  VMOV            R0, S0; this
53AFE8:  VMOV            R1, S2; float
53AFEC:  VMOV            R2, S4; float
53AFF0:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
53AFF4:  CMP             R0, #1
53AFF6:  BNE             loc_53B012
53AFF8:  VLDR            S0, [SP,#0x58+var_50]
53AFFC:  MOV.W           R1, #0x40000000; x
53B000:  VLDR            S2, [SP,#0x58+var_4C]
53B004:  VSUB.F32        S0, S2, S0
53B008:  VMOV            R0, S0; y
53B00C:  BLX             atan2f
53B010:  STR             R0, [R5,#0x24]
53B012:  MOV             R0, R10
53B014:  MOVS            R1, #2
53B016:  MOVS            R4, #2
53B018:  BLX             j__ZN10CPlayerPed19ControlButtonSprintE11eSprintType; CPlayerPed::ControlButtonSprint(eSprintType)
53B01C:  VMOV.F32        S0, #1.0
53B020:  VMOV            S2, R0
53B024:  VCMPE.F32       S2, S0
53B028:  VMRS            APSR_nzcv, FPSCR
53B02C:  BGE             loc_53B048
53B02E:  VMOV.F32        S0, #0.5
53B032:  LDR.W           R0, [R10,#0x444]
53B036:  MOVS            R4, #0
53B038:  VLDR            S2, [R0,#0x14]
53B03C:  VCMPE.F32       S2, S0
53B040:  VMRS            APSR_nzcv, FPSCR
53B044:  IT GT
53B046:  MOVGT           R4, #1
53B048:  STRH            R4, [R5,#0xA]
53B04A:  B               loc_53B1DE
53B04C:  VLDR            S6, =-3.1416
53B050:  VCMPE.F32       S4, S6
53B054:  VMRS            APSR_nzcv, FPSCR
53B058:  BGE             loc_53B066
53B05A:  VLDR            S6, =6.2832
53B05E:  VADD.F32        S4, S4, S6
53B062:  VSTR            S4, [R0]
53B066:  VLDR            S4, =0.04
53B06A:  VMUL.F32        S0, S20, S0
53B06E:  VLDR            S6, =0.08
53B072:  VMUL.F32        S4, S18, S4
53B076:  VLDR            S10, [R5,#0x28]
53B07A:  VMUL.F32        S6, S18, S6
53B07E:  VLDR            S12, [R5,#0x30]
53B082:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x53B088)
53B084:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
53B086:  VCMPE.F32       S0, #0.0
53B08A:  LDR             R0, [R0]; MobileSettings::settings ...
53B08C:  VMUL.F32        S4, S4, S16
53B090:  VMUL.F32        S8, S6, S16
53B094:  VLDR            S6, [R5,#0x34]
53B098:  VADD.F32        S4, S10, S4
53B09C:  VADD.F32        S8, S12, S8
53B0A0:  VSTR            S4, [R5,#0x28]
53B0A4:  VSTR            S8, [R5,#0x30]
53B0A8:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
53B0AC:  CBZ             R0, loc_53B0C4
53B0AE:  VMRS            APSR_nzcv, FPSCR
53B0B2:  BGT             loc_53B0BE
53B0B4:  VCMP.F32        S6, #0.0
53B0B8:  VMRS            APSR_nzcv, FPSCR
53B0BC:  BNE             loc_53B0EC
53B0BE:  VLDR            S6, =0.02
53B0C2:  B               loc_53B0D8
53B0C4:  VMRS            APSR_nzcv, FPSCR
53B0C8:  BLT             loc_53B0D4
53B0CA:  VCMP.F32        S6, #0.0
53B0CE:  VMRS            APSR_nzcv, FPSCR
53B0D2:  BNE             loc_53B0EC
53B0D4:  VLDR            S6, =-0.02
53B0D8:  VMUL.F32        S6, S0, S6
53B0DC:  VLDR            S8, [R5,#0x24]
53B0E0:  VMUL.F32        S6, S6, S16
53B0E4:  VADD.F32        S6, S8, S6
53B0E8:  VSTR            S6, [R5,#0x24]
53B0EC:  VADD.F32        S4, S4, S4
53B0F0:  MOVS            R1, #0
53B0F2:  VMOV.F32        S6, #-1.0
53B0F6:  MOVS            R0, #0
53B0F8:  VCMPE.F32       S4, S2
53B0FC:  VMRS            APSR_nzcv, FPSCR
53B100:  VMOV.F32        S8, S4
53B104:  IT GT
53B106:  VMOVGT.F32      S8, S2
53B10A:  IT GT
53B10C:  MOVGT           R1, #1
53B10E:  VCMPE.F32       S8, S6
53B112:  VMRS            APSR_nzcv, FPSCR
53B116:  VMOV.F32        S2, #1.0
53B11A:  VLDR            S6, =-0.08
53B11E:  VMOV.F32        S8, #-1.0
53B122:  VMUL.F32        S12, S18, S6
53B126:  VMOV.F32        S10, S2
53B12A:  IT LT
53B12C:  MOVLT           R0, #1
53B12E:  CMP             R0, #0
53B130:  ORR.W           R1, R1, R0
53B134:  IT NE
53B136:  VMOVNE.F32      S10, S8
53B13A:  CMP             R1, #0
53B13C:  IT NE
53B13E:  VMOVNE.F32      S4, S10
53B142:  VMUL.F32        S4, S4, S12
53B146:  VADD.F32        S0, S0, S4
53B14A:  VMIN.F32        D16, D0, D1
53B14E:  VLDR            S2, [R5,#0x2C]
53B152:  VMAX.F32        D0, D16, D4
53B156:  VMUL.F32        S0, S0, S6
53B15A:  VMUL.F32        S0, S16, S0
53B15E:  VADD.F32        S0, S2, S0
53B162:  VSTR            S0, [R5,#0x2C]
53B166:  VLDR            S0, =0.001
53B16A:  VLDR            S2, [R5,#0x24]
53B16E:  VMUL.F32        S0, S16, S0
53B172:  VLDR            S6, =-1.3963
53B176:  VADD.F32        S0, S2, S0
53B17A:  VLDR            S2, =1.3963
53B17E:  VCMPE.F32       S0, S2
53B182:  VMRS            APSR_nzcv, FPSCR
53B186:  VMOV.F32        S4, S0
53B18A:  IT GT
53B18C:  VMOVGT.F32      S4, S2
53B190:  VCMPE.F32       S4, S6
53B194:  VMRS            APSR_nzcv, FPSCR
53B198:  VMOV.F32        S4, S2
53B19C:  VCMPE.F32       S0, S2
53B1A0:  IT LT
53B1A2:  VMOVLT.F32      S4, S6
53B1A6:  IT LT
53B1A8:  VMOVLT.F32      S0, S4
53B1AC:  VMRS            APSR_nzcv, FPSCR
53B1B0:  IT GT
53B1B2:  VMOVGT.F32      S0, S4
53B1B6:  VSTR            S0, [R5,#0x24]
53B1BA:  LDR.W           R0, [R10,#0x444]
53B1BE:  VLDR            S0, [R0,#0x18]
53B1C2:  VCMPE.F32       S0, #0.0
53B1C6:  VMRS            APSR_nzcv, FPSCR
53B1CA:  ITTT LE
53B1CC:  MOVWLE          R1, #0xCCCD
53B1D0:  MOVTLE          R1, #0x3DCC
53B1D4:  STRLE           R1, [R0,#0x18]
53B1D6:  MOV             R0, R10
53B1D8:  MOVS            R1, #3
53B1DA:  BLX             j__ZN10CPlayerPed19ControlButtonSprintE11eSprintType; CPlayerPed::ControlButtonSprint(eSprintType)
53B1DE:  VLDR            S16, =0.01
53B1E2:  VLDR            S18, [R5,#0x28]
53B1E6:  VCMPE.F32       S18, S16
53B1EA:  VMRS            APSR_nzcv, FPSCR
53B1EE:  BGT             loc_53B204
53B1F0:  VLDR            S0, =-0.01
53B1F4:  VCMPE.F32       S18, S0
53B1F8:  VMRS            APSR_nzcv, FPSCR
53B1FC:  BLT             loc_53B204
53B1FE:  VLDR            S0, =0.0
53B202:  B               loc_53B220
53B204:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53B20A)
53B206:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53B208:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53B20A:  LDR             R1, [R0]; y
53B20C:  MOV             R0, #0x3F733333; x
53B214:  BLX             powf
53B218:  VMOV            S0, R0
53B21C:  VMUL.F32        S0, S18, S0
53B220:  LDRH            R6, [R5,#0xA]
53B222:  VLDR            S18, =0.92
53B226:  CMP             R6, #2
53B228:  VSTR            S0, [R5,#0x28]
53B22C:  IT NE
53B22E:  CMPNE           R6, #4
53B230:  BEQ             loc_53B280
53B232:  VLDR            S20, [R5,#0x24]
53B236:  VCMPE.F32       S20, S16
53B23A:  VMRS            APSR_nzcv, FPSCR
53B23E:  BGT             loc_53B254
53B240:  VLDR            S0, =-0.01
53B244:  VCMPE.F32       S20, S0
53B248:  VMRS            APSR_nzcv, FPSCR
53B24C:  BLT             loc_53B254
53B24E:  VLDR            S0, =0.0
53B252:  B               loc_53B270
53B254:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53B25A)
53B256:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53B258:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53B25A:  LDR             R1, [R0]; y
53B25C:  MOV             R0, #0x3F733333; x
53B264:  BLX             powf
53B268:  VMOV            S0, R0
53B26C:  VMUL.F32        S0, S20, S0
53B270:  CMP             R6, #5
53B272:  VSTR            S0, [R5,#0x24]
53B276:  IT NE
53B278:  CMPNE           R6, #3
53B27A:  BNE             loc_53B280
53B27C:  VLDR            S18, =0.95
53B280:  VLDR            S22, [R5,#0x30]
53B284:  VLDR            S20, [R5,#0x2C]
53B288:  VCMPE.F32       S22, S16
53B28C:  VMRS            APSR_nzcv, FPSCR
53B290:  BGT             loc_53B2BE
53B292:  VLDR            S0, =-0.01
53B296:  VCMPE.F32       S22, S0
53B29A:  VMRS            APSR_nzcv, FPSCR
53B29E:  BLT             loc_53B2BE
53B2A0:  VCMPE.F32       S20, S16
53B2A4:  VMRS            APSR_nzcv, FPSCR
53B2A8:  BGT             loc_53B2BE
53B2AA:  VCMPE.F32       S20, S0
53B2AE:  VMRS            APSR_nzcv, FPSCR
53B2B2:  BLT             loc_53B2BE
53B2B4:  VLDR            S0, =0.0
53B2B8:  MOVS            R0, #0
53B2BA:  STR             R0, [R5,#0x30]
53B2BC:  B               loc_53B2DE
53B2BE:  VMOV            R0, S18; x
53B2C2:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53B2C8)
53B2C4:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53B2C6:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
53B2C8:  LDR             R1, [R1]; y
53B2CA:  BLX             powf
53B2CE:  VMOV            S0, R0
53B2D2:  VMUL.F32        S2, S0, S22
53B2D6:  VMUL.F32        S0, S0, S20
53B2DA:  VSTR            S2, [R5,#0x30]
53B2DE:  CMP             R6, #2
53B2E0:  VSTR            S0, [R5,#0x2C]
53B2E4:  BEQ             loc_53B2FA
53B2E6:  CMP             R6, #1
53B2E8:  MOV             R0, R10; this
53B2EA:  ITE NE
53B2EC:  MOVNE.W         R2, #0x3F800000
53B2F0:  MOVEQ.W         R2, #0x3F000000; float
53B2F4:  MOVS            R1, #0; bool
53B2F6:  BLX             j__ZN10CPlayerPed18HandleSprintEnergyEbf; CPlayerPed::HandleSprintEnergy(bool,float)
53B2FA:  ADD             SP, SP, #0x10
53B2FC:  VPOP            {D8-D13}
53B300:  POP.W           {R8-R10}
53B304:  POP             {R4-R7,PC}
